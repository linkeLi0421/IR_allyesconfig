; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_ialloc.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_ialloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
%struct.xfs_owner_info = type { i64, i64, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_btree_cur = type { ptr, ptr, ptr, ptr, i32, i32, %union.xfs_btree_irec, i8, i8, i32, %union.anon.95, [0 x %struct.xfs_btree_level] }
%union.xfs_btree_irec = type { %struct.xfs_bmbt_irec }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%union.anon.95 = type { %struct.xfs_btree_cur_ag }
%struct.xfs_btree_cur_ag = type { ptr, %union.anon.96, %union.anon.97 }
%union.anon.96 = type { ptr }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { i32, i32 }
%struct.xfs_btree_level = type { ptr, i16, i16 }
%struct.xfs_inobt_rec_incore = type { i32, i16, i8, i8, i64 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_inobt_rec = type { i32, %union.anon.92, i64 }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { i32 }
%struct.anon.94 = type { i16, i8, i8 }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xfs_dinode = type { i16, i16, i8, i8, i16, i32, i32, i32, i16, i16, [6 x i8], i16, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, i16, i16, i32, i32, i32, i64, i64, i64, i32, [12 x i8], i64, i64, %struct.uuid_t }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_agi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i32], %struct.uuid_t, i32, i32, i64, i32, i32, i32, i32 }
%struct.xfs_icluster = type { i8, i64, i64 }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_ialloc_count_inodes = type { i32, i32 }
%struct.xfs_alloc_arg = type { ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %struct.xfs_owner_info, i32, i8 }
%union.xfs_btree_rec = type { %struct.xfs_rmap_rec }
%struct.xfs_rmap_rec = type { i32, i32, i64, i64 }

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s Inode BTree record corruption in AG %d detected!\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Used\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Free\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"start inode 0x%x, count 0x%x, free 0x%x freemask 0x%llx, holemask 0x%x\00", [57 x i8] zeroinitializer }, align 32
@xfs_inode_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: agno != pag->pag_agno (%d != %d).\00", [58 x i8] zeroinitializer }, align 32
@__func__.xfs_difree = private unnamed_addr constant [11 x i8] c"xfs_difree\00", align 1
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fs/xfs/libxfs/xfs_ialloc.c\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: inode != XFS_AGINO_TO_INO() (%llu != %llu).\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: agbno >= mp->m_sb.sb_agblocks (%d >= %d).\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: xfs_ialloc_read_agi() returned error %d.\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ino != NULLFSINO\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: agno (%d) >= mp->m_sb.sb_agcount (%d)\00", [54 x i8] zeroinitializer }, align 32
@__func__.xfs_imap = private unnamed_addr constant [9 x i8] c"xfs_imap\00", align 1
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: agbno (0x%llx) >= mp->m_sb.sb_agblocks (0x%lx)\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: ino (0x%llx) != XFS_AGINO_TO_INO() (0x%llx)\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"offset < mp->m_sb.sb_inopblock\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"agbno >= chunk_agbno\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: (im_blkno (0x%llx) + im_len (0x%llx)) > sb_dblocks (0x%llx)\00", [32 x i8] zeroinitializer }, align 32
@xfs_ialloc_log_agi.offsets = internal constant { [15 x i16], [34 x i8] } { [15 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32, i16 36, i16 40, i16 328, i16 332, i16 336, i16 344], [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"agi->agi_magicnum == cpu_to_be32(XFS_AGI_MAGIC)\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xfs_agi\00", [24 x i8] zeroinitializer }, align 32
@xfs_agi_buf_ops = dso_local constant { %struct.xfs_buf_ops, [40 x i8] } { %struct.xfs_buf_ops { ptr @.str.18, %union.anon.87 { [2 x i32] [i32 1480673097, i32 1480673097] }, ptr @xfs_agi_read_verify, ptr @xfs_agi_write_verify, ptr @xfs_agi_verify }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"agno != NULLAGNUMBER\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"pag->pagi_freecount == be32_to_cpu(agi->agi_freecount) || xfs_is_shutdown(mp)\00", [50 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cur->bc_btnum == XFS_BTNUM_INO\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"igeo->inobt_maxlevels <= xfs_iallocbt_maxlevels_ondisk()\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pag->pagi_freecount > 0\00", [40 x i8] zeroinitializer }, align 32
@XFS_RMAP_OINFO_INODES = external dso_local constant %struct.xfs_owner_info, align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"!xfs_has_noalign(args.mp)\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"newlen <= XFS_INODES_PER_CHUNK\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"args.len == args.minlen\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"invalid sparse inode record: ino 0x%llx holemask 0x%x count %u\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i != 1\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rec.ir_startino != nrec->ir_startino\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"!__xfs_inobt_can_merge(nrec, &rec)\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_irec_merge_pre = external dso_local global %struct.tracepoint, align 4
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_irec_merge_pre.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"trec->ir_startino == srec->ir_startino\00", [57 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_irec_merge_post = external dso_local global %struct.tracepoint, align 4
@trace_xfs_irec_merge_post.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i == 0\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i == 1\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"offset >= 0\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"offset < XFS_INODES_PER_CHUNK\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"(XFS_AGINO_TO_OFFSET(mp, rec.ir_startino) % XFS_INODES_PER_CHUNK) == 0\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pag->pagi_init\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pag->pagi_inodeok\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"j != 1\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"freecount == cur->bc_ag.pag->pagi_freecount\00", [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i != 1 && j != 1\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"(XFS_AGINO_TO_OFFSET(cur->bc_mp, rec.ir_startino) % XFS_INODES_PER_CHUNK) == 0\00", [49 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"rec.ir_free != frec->ir_free || rec.ir_freecount != frec->ir_freecount\00", [57 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"XFS_AGINO_TO_AGBNO(mp, agino) < be32_to_cpu(agi->agi_length)\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: xfs_inobt_lookup() returned error %d.\00", [54 x i8] zeroinitializer }, align 32
@__func__.xfs_difree_inobt = private unnamed_addr constant [17 x i8] c"xfs_difree_inobt\00", align 1
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: xfs_inobt_get_rec() returned error %d.\00", [53 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"off >= 0 && off < XFS_INODES_PER_CHUNK\00", [57 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"!(rec.ir_free & XFS_INOBT_MASK(off))\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: xfs_btree_delete returned error %d.\00", [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: xfs_inobt_update returned error %d.\00", [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"agbno % mp->m_sb.sb_spino_align == 0\00", [59 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"contigblk % mp->m_sb.sb_spino_align == 0\00", [55 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ibtrec->ir_freecount != 1\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"rec.ir_free != ibtrec->ir_free || rec.ir_freecount != ibtrec->ir_freecount\00", [53 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: xfs_ialloc_read_agi() returned error %d, agno %d\00", [43 x i8] zeroinitializer }, align 32
@__func__.xfs_imap_lookup = private unnamed_addr constant [16 x i8] c"xfs_imap_lookup\00", align 1
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fa\00", [29 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_read_agi = external dso_local global %struct.tracepoint, align 4
@trace_xfs_read_agi.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_ialloc_read_agi = external dso_local global %struct.tracepoint, align 4
@trace_xfs_ialloc_read_agi.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 139, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 140, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 140, i32 45 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 142, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2149, i32 16 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2151, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2156, i32 16 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2164, i32 16 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2174, i32 16 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2281, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2301, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2307, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2313, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2343, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2369, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2389, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [8 x i8] c"offsets\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2423, i32 21 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2444, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2562, i32 10 }
@___asan_gen_.121 = private unnamed_addr constant [16 x i8] c"xfs_agi_buf_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2561, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2583, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2625, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2739, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2796, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1701, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 714, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 789, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 796, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 838, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 543, i32 7 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 563, i32 7 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 572, i32 7 }
@___asan_gen_.164 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 873, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 108, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 486, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 195, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 205, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1479, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1480, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1481, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1002, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1003, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1037, i32 7 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 245, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1304, i32 6 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1409, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1415, i32 6 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1905, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1920, i32 16 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1930, i32 16 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1942, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1943, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1979, i32 17 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1990, i32 17 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1873, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1874, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2046, i32 7 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2080, i32 6 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2221, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [30 x i8] c"../fs/xfs/libxfs/xfs_ialloc.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2533, i32 7 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @xfs_ialloc_log_agi.offsets, ptr @.str.17, ptr @.str.18, ptr @xfs_agi_buf_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_ialloc_log_agi.offsets to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_agi_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_inobt_lookup(ptr noundef %cur, i32 noundef %ino, i32 noundef %dir, ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_rec = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %0 = ptrtoint ptr %bc_rec to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ino, ptr %bc_rec, align 8
  %ir_holemask = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec, i32 0, i32 1
  %1 = call ptr @memset(ptr %ir_holemask, i32 0, i32 12)
  %call = tail call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef %dir, ptr noundef %stat) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_lookup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xfs_inobt_btrec_to_irec(ptr nocapture noundef readonly %mp, ptr nocapture noundef readonly %rec, ptr nocapture noundef writeonly %irec) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rec, align 8
  %2 = ptrtoint ptr %irec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %irec, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %3 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ir_u = getelementptr inbounds %struct.xfs_inobt_rec, ptr %rec, i32 0, i32 1
  %5 = ptrtoint ptr %ir_u to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ir_u, align 4
  %ir_holemask2 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 1
  %7 = ptrtoint ptr %ir_holemask2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %ir_holemask2, align 4
  %ir_count = getelementptr inbounds %struct.anon.94, ptr %ir_u, i32 0, i32 1
  %8 = ptrtoint ptr %ir_count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ir_count, align 2
  %ir_count4 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 2
  %10 = ptrtoint ptr %ir_count4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %ir_count4, align 2
  %ir_freecount = getelementptr inbounds %struct.anon.94, ptr %ir_u, i32 0, i32 2
  %11 = ptrtoint ptr %ir_freecount to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ir_freecount, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ir_holemask7 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 1
  %13 = ptrtoint ptr %ir_holemask7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %ir_holemask7, align 4
  %ir_count8 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 2
  %14 = ptrtoint ptr %ir_count8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 64, ptr %ir_count8, align 2
  %ir_u9 = getelementptr inbounds %struct.xfs_inobt_rec, ptr %rec, i32 0, i32 1
  %15 = ptrtoint ptr %ir_u9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ir_u9, align 4
  %conv = trunc i32 %16 to i8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i8 [ %conv, %if.else ], [ %12, %if.then ]
  %17 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink, ptr %17, align 1
  %ir_free = getelementptr inbounds %struct.xfs_inobt_rec, ptr %rec, i32 0, i32 2
  %19 = ptrtoint ptr %ir_free to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ir_free, align 8
  %ir_free12 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 4
  %21 = ptrtoint ptr %ir_free12 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %ir_free12, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_inobt_get_rec(ptr noundef %cur, ptr noundef %irec, ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  %rec = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  %2 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pag_agno, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rec) #12
  %7 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %rec, align 4, !annotation !152
  %call = call i32 @xfs_btree_get_rec(ptr noundef %cur, ptr noundef nonnull %rec, ptr noundef %stat) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rec, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %14 = ptrtoint ptr %irec to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %irec, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %15 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %16, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ir_u.i = getelementptr inbounds %struct.xfs_inobt_rec, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %ir_u.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ir_u.i, align 4
  %ir_holemask2.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 1
  %19 = ptrtoint ptr %ir_holemask2.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %ir_holemask2.i, align 4
  %ir_count.i = getelementptr inbounds %struct.anon.94, ptr %ir_u.i, i32 0, i32 1
  %20 = ptrtoint ptr %ir_count.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ir_count.i, align 2
  %ir_count4.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 2
  %22 = ptrtoint ptr %ir_count4.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %ir_count4.i, align 2
  %ir_freecount.i = getelementptr inbounds %struct.anon.94, ptr %ir_u.i, i32 0, i32 2
  %23 = ptrtoint ptr %ir_freecount.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ir_freecount.i, align 1
  br label %xfs_inobt_btrec_to_irec.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ir_holemask7.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 1
  %25 = ptrtoint ptr %ir_holemask7.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %ir_holemask7.i, align 4
  %ir_count8.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 2
  %26 = ptrtoint ptr %ir_count8.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 64, ptr %ir_count8.i, align 2
  %ir_u9.i = getelementptr inbounds %struct.xfs_inobt_rec, ptr %11, i32 0, i32 1
  %27 = ptrtoint ptr %ir_u9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ir_u9.i, align 4
  %conv.i = trunc i32 %28 to i8
  br label %xfs_inobt_btrec_to_irec.exit

xfs_inobt_btrec_to_irec.exit:                     ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i8 [ %conv.i, %if.else.i ], [ %24, %if.then.i ]
  %29 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 3
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink.i, ptr %29, align 1
  %ir_free.i = getelementptr inbounds %struct.xfs_inobt_rec, ptr %11, i32 0, i32 2
  %31 = ptrtoint ptr %ir_free.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ir_free.i, align 8
  %ir_free12.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 4
  %33 = ptrtoint ptr %ir_free12.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %ir_free12.i, align 8
  %call1 = call zeroext i1 @xfs_verify_agino(ptr noundef %1, i32 noundef %6, i32 noundef %13) #12
  br i1 %call1, label %if.end3, label %xfs_inobt_btrec_to_irec.exit.out_bad_rec_crit_edge

xfs_inobt_btrec_to_irec.exit.out_bad_rec_crit_edge: ; preds = %xfs_inobt_btrec_to_irec.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_bad_rec

if.end3:                                          ; preds = %xfs_inobt_btrec_to_irec.exit
  %ir_count = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 2
  %34 = ptrtoint ptr %ir_count to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ir_count, align 2
  %36 = add i8 %35, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 -61, i8 %36)
  %37 = icmp ult i8 %36, -61
  br i1 %37, label %if.end3.out_bad_rec_crit_edge, label %if.end12

if.end3.out_bad_rec_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_bad_rec

if.end12:                                         ; preds = %if.end3
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %39)
  %cmp14 = icmp ugt i8 %39, 64
  br i1 %cmp14, label %if.end12.out_bad_rec_crit_edge, label %if.end17

if.end12.out_bad_rec_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_bad_rec

if.end17:                                         ; preds = %if.end12
  %ir_holemask = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 1
  %40 = ptrtoint ptr %ir_holemask to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ir_holemask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.i.not = icmp eq i16 %41, 0
  %42 = ptrtoint ptr %ir_free12.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ir_free12.i, align 8
  br i1 %tobool.i.not, label %if.end17.cond.false_crit_edge, label %if.else

if.end17.cond.false_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = call i64 @xfs_inobt_irec_to_allocmask(ptr noundef %irec) #12
  %and = and i64 %call21, %43
  br label %cond.false

cond.false:                                       ; preds = %if.else, %if.end17.cond.false_crit_edge
  %realfree.0 = phi i64 [ %and, %if.else ], [ %43, %if.end17.cond.false_crit_edge ]
  %call.i = call i32 @__sw_hweight64(i64 noundef %realfree.0) #12
  %44 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %29, align 1
  %conv563 = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv563)
  %cmp564.not = icmp eq i32 %call.i, %conv563
  br i1 %cmp564.not, label %cond.false.cleanup_crit_edge, label %cond.false.out_bad_rec_crit_edge

cond.false.out_bad_rec_crit_edge:                 ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_bad_rec

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out_bad_rec:                                      ; preds = %cond.false.out_bad_rec_crit_edge, %if.end12.out_bad_rec_crit_edge, %if.end3.out_bad_rec_crit_edge, %xfs_inobt_btrec_to_irec.exit.out_bad_rec_crit_edge
  %bc_btnum = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 5
  %46 = ptrtoint ptr %bc_btnum to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bc_btnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %cmp568 = icmp eq i32 %47, 4
  %cond570 = select i1 %cmp568, ptr @.str.1, ptr @.str.2
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %cond570, i32 noundef %6) #12
  %48 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irec, align 8
  %ir_count572 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 2
  %50 = ptrtoint ptr %ir_count572 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ir_count572, align 2
  %conv573 = zext i8 %51 to i32
  %52 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %29, align 1
  %conv575 = zext i8 %53 to i32
  %54 = ptrtoint ptr %ir_free12.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %ir_free12.i, align 8
  %ir_holemask577 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 1
  %56 = ptrtoint ptr %ir_holemask577 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %ir_holemask577, align 4
  %conv578 = zext i16 %57 to i32
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %49, i32 noundef %conv573, i32 noundef %conv575, i64 noundef %55, i32 noundef %conv578) #12
  br label %cleanup

cleanup:                                          ; preds = %out_bad_rec, %cond.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %out_bad_rec ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ 0, %cond.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rec) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_get_rec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_agino(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_inobt_irec_to_allocmask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_inobt_insert_rec(ptr noundef %cur, i16 noundef zeroext %holemask, i8 noundef zeroext %count, i32 noundef %freecount, i64 noundef %free, ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_rec = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %ir_holemask = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec, i32 0, i32 1
  %0 = ptrtoint ptr %ir_holemask to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %holemask, ptr %ir_holemask, align 4
  %ir_count = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec, i32 0, i32 2
  %1 = ptrtoint ptr %ir_count to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %count, ptr %ir_count, align 2
  %conv = trunc i32 %freecount to i8
  %ir_freecount = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec, i32 0, i32 3
  %2 = ptrtoint ptr %ir_freecount to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %ir_freecount, align 1
  %ir_free = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 1
  %3 = ptrtoint ptr %ir_free to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %free, ptr %ir_free, align 8
  %call = tail call i32 @xfs_btree_insert(ptr noundef %cur, ptr noundef %stat) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ialloc_inode_init(ptr noundef %mp, ptr noundef %tp, ptr noundef %buffer_list, i32 noundef %icount, i32 noundef %agno, i32 noundef %agbno, i32 noundef %length, i32 noundef %gen) local_unnamed_addr #0 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %fbuf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fbuf) #12
  %0 = ptrtoint ptr %fbuf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fbuf, align 4, !annotation !152
  %blocks_per_cluster = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 4
  %1 = ptrtoint ptr %blocks_per_cluster to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %blocks_per_cluster, align 4
  %div = udiv i32 %length, %2
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %3 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %.pre = zext i32 %agno to i64
  br i1 %tobool.i.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %entry
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 15
  %5 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %6 to i64
  %shl = shl i64 %.pre, %sh_prom
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 23
  %7 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sb_inopblog, align 1
  %conv2 = zext i8 %8 to i32
  %shl3 = shl i32 %agbno, %conv2
  %conv4 = zext i32 %shl3 to i64
  %or = or i64 %shl, %conv4
  %tobool.not = icmp eq ptr %tp, null
  br i1 %tobool.not, label %if.then.if.end8_crit_edge, label %if.then5

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 17
  %9 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sb_inodesize, align 8
  %conv7 = zext i16 %10 to i32
  tail call void @xfs_icreate_log(ptr noundef nonnull %tp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %icount, i32 noundef %conv7, i32 noundef %length, i32 noundef %gen) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %version.0 = phi i8 [ 3, %if.then.if.end8_crit_edge ], [ 3, %if.then5 ], [ 2, %entry.if.end8_crit_edge ]
  %ino.0 = phi i64 [ %or, %if.then.if.end8_crit_edge ], [ %or, %if.then5 ], [ 0, %entry.if.end8_crit_edge ]
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp126 = icmp sgt i32 %div, 0
  br i1 %cmp126, label %for.body.lr.ph, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end8
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %m_bsize = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 26
  %11 = getelementptr inbounds i8, ptr %map.i, i32 8
  %inodes_per_cluster = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 3
  %sb_inodelog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 22
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 54
  %tobool44.not = icmp eq ptr %tp, null
  br label %for.body

for.body:                                         ; preds = %for.inc63.for.body_crit_edge, %for.body.lr.ph
  %ino.1128 = phi i64 [ %ino.0, %for.body.lr.ph ], [ %ino.2.lcssa, %for.inc63.for.body_crit_edge ]
  %j.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %inc64, %for.inc63.for.body_crit_edge ]
  %12 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sb_agblocks, align 4
  %conv12 = zext i32 %13 to i64
  %mul = mul nuw i64 %.pre, %conv12
  %14 = ptrtoint ptr %blocks_per_cluster to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blocks_per_cluster, align 4
  %mul15 = mul i32 %15, %j.0127
  %add = add i32 %mul15, %agbno
  %conv16 = zext i32 %add to i64
  %add17 = add nuw i64 %mul, %conv16
  %16 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom19 = zext i8 %17 to i64
  %shl20 = shl i64 %add17, %sh_prom19
  %18 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m_ddev_targp, align 8
  %20 = ptrtoint ptr %m_bsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %m_bsize, align 16
  %mul23 = mul i32 %21, %15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #12
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %11, align 8
  %23 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %shl20, ptr %map.i, align 8
  store i32 %mul23, ptr %11, align 8
  %call.i = call i32 @xfs_trans_get_buf_map(ptr noundef %tp, ptr noundef %19, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %fbuf) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.end27, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27:                                         ; preds = %for.body
  %24 = ptrtoint ptr %fbuf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fbuf, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %25, i32 0, i32 35
  %26 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @xfs_inode_buf_ops, ptr %b_ops, align 4
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %25, i32 0, i32 2
  %27 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %b_length, align 8
  %shl28 = shl i32 %28, 9
  call void @xfs_buf_zero(ptr noundef %25, i32 noundef 0, i32 noundef %shl28) #12
  %29 = ptrtoint ptr %inodes_per_cluster to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %inodes_per_cluster, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp31123.not = icmp eq i32 %30, 0
  br i1 %cmp31123.not, label %if.end27.for.end_crit_edge, label %if.end27.for.body33_crit_edge

if.end27.for.body33_crit_edge:                    ; preds = %if.end27
  br label %for.body33

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body33:                                       ; preds = %if.end50.for.body33_crit_edge, %if.end27.for.body33_crit_edge
  %ino.2125 = phi i64 [ %ino.3, %if.end50.for.body33_crit_edge ], [ %ino.1128, %if.end27.for.body33_crit_edge ]
  %i.0124 = phi i32 [ %inc51, %if.end50.for.body33_crit_edge ], [ 0, %if.end27.for.body33_crit_edge ]
  %31 = ptrtoint ptr %sb_inodelog to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sb_inodelog, align 2
  %conv35 = zext i8 %32 to i32
  %shl36 = shl i32 %i.0124, %conv35
  %33 = ptrtoint ptr %fbuf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fbuf, align 4
  %call.i119 = call ptr @xfs_buf_offset(ptr noundef %34, i32 noundef %shl36) #12
  %35 = ptrtoint ptr %call.i119 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 18766, ptr %call.i119, align 8
  %di_version = getelementptr inbounds %struct.xfs_dinode, ptr %call.i119, i32 0, i32 2
  %36 = ptrtoint ptr %di_version to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %version.0, ptr %di_version, align 4
  %di_gen = getelementptr inbounds %struct.xfs_dinode, ptr %call.i119, i32 0, i32 25
  %37 = ptrtoint ptr %di_gen to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %gen, ptr %di_gen, align 4
  %di_next_unlinked = getelementptr inbounds %struct.xfs_dinode, ptr %call.i119, i32 0, i32 26
  %38 = ptrtoint ptr %di_next_unlinked to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %di_next_unlinked, align 8
  br i1 %tobool.i.not, label %if.else43, label %if.then41

if.then41:                                        ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #14
  %di_ino = getelementptr inbounds %struct.xfs_dinode, ptr %call.i119, i32 0, i32 34
  %39 = ptrtoint ptr %di_ino to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %ino.2125, ptr %di_ino, align 8
  %inc = add i64 %ino.2125, 1
  %di_uuid = getelementptr inbounds %struct.xfs_dinode, ptr %call.i119, i32 0, i32 35
  %40 = call ptr @memcpy(ptr %di_uuid, ptr %sb_meta_uuid, i32 16)
  call void @xfs_dinode_calc_crc(ptr noundef %mp, ptr noundef %call.i119) #12
  br label %if.end50

if.else43:                                        ; preds = %for.body33
  br i1 %tobool44.not, label %if.else43.if.end50_crit_edge, label %if.then45

if.else43.if.end50_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then45:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %fbuf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fbuf, align 4
  %43 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %m_features.i, align 8
  %and.i121 = and i64 %44, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i121)
  %tobool.i122.not = icmp eq i64 %and.i121, 0
  %cond = select i1 %tobool.i122.not, i32 100, i32 176
  %add48 = add i32 %shl36, -1
  %sub = add i32 %add48, %cond
  call void @xfs_trans_log_buf(ptr noundef nonnull %tp, ptr noundef %42, i32 noundef %shl36, i32 noundef %sub) #12
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.else43.if.end50_crit_edge, %if.then41
  %ino.3 = phi i64 [ %inc, %if.then41 ], [ %ino.2125, %if.then45 ], [ %ino.2125, %if.else43.if.end50_crit_edge ]
  %inc51 = add nuw i32 %i.0124, 1
  %45 = ptrtoint ptr %inodes_per_cluster to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %inodes_per_cluster, align 16
  %cmp31 = icmp ult i32 %inc51, %46
  br i1 %cmp31, label %if.end50.for.body33_crit_edge, label %if.end50.for.end_crit_edge

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end50.for.body33_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body33

for.end:                                          ; preds = %if.end50.for.end_crit_edge, %if.end27.for.end_crit_edge
  %ino.2.lcssa = phi i64 [ %ino.1128, %if.end27.for.end_crit_edge ], [ %ino.3, %if.end50.for.end_crit_edge ]
  %47 = ptrtoint ptr %fbuf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fbuf, align 4
  br i1 %tobool44.not, label %if.else59, label %if.then53

if.then53:                                        ; preds = %for.end
  call void @xfs_trans_inode_alloc_buf(ptr noundef nonnull %tp, ptr noundef %48) #12
  br i1 %tobool.i.not, label %if.then53.for.inc63_crit_edge, label %if.then56

if.then53.for.inc63_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc63

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %fbuf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fbuf, align 4
  %call57 = call zeroext i1 @xfs_trans_ordered_buf(ptr noundef nonnull %tp, ptr noundef %50) #12
  br label %for.inc63

if.else59:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %48, i32 0, i32 5
  %51 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %b_flags, align 4
  %or60 = or i32 %52, 32
  store i32 %or60, ptr %b_flags, align 4
  %call61 = call zeroext i1 @xfs_buf_delwri_queue(ptr noundef %48, ptr noundef %buffer_list) #12
  %53 = ptrtoint ptr %fbuf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fbuf, align 4
  call void @xfs_buf_unlock(ptr noundef %54) #12
  call void @xfs_buf_rele(ptr noundef %54) #12
  br label %for.inc63

for.inc63:                                        ; preds = %if.else59, %if.then56, %if.then53.for.inc63_crit_edge
  %inc64 = add nuw nsw i32 %j.0127, 1
  %exitcond.not = icmp eq i32 %inc64, %div
  br i1 %exitcond.not, label %for.inc63.cleanup_crit_edge, label %for.inc63.for.body_crit_edge

for.inc63.for.body_crit_edge:                     ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc63.cleanup_crit_edge:                      ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc63.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8.cleanup_crit_edge ], [ 0, %for.inc63.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbuf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_icreate_log(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_zero(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dinode_calc_crc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_inode_alloc_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_trans_ordered_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_buf_delwri_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dialloc(ptr nocapture noundef %tpp, i64 noundef %parent, i16 noundef zeroext %mode, ptr nocapture noundef writeonly %new_ino) local_unnamed_addr #0 align 64 {
entry:
  %first.i = alloca i32, align 4
  %last.i = alloca i32, align 4
  %cur.i.i = alloca ptr, align 4
  %rec.i.i = alloca %struct.xfs_inobt_rec_incore, align 8
  %i.i.i = alloca i32, align 4
  %tp.i.i = alloca ptr, align 4
  %agbp.i = alloca ptr, align 4
  %ino.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpp, align 4
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_mountp, align 4
  %m_ino_geo = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 64
  %4 = and i16 %mode, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %m_agirotor_lock.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 95
  tail call void @_raw_spin_lock(ptr noundef %m_agirotor_lock.i) #12
  %m_agirotor.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 94
  %5 = ptrtoint ptr %m_agirotor.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %m_agirotor.i, align 4
  %inc.i = add i32 %6, 1
  %m_maxagi.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 52
  %7 = ptrtoint ptr %m_maxagi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_maxagi.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %8)
  %cmp.not.i = icmp ult i32 %inc.i, %8
  %spec.store.select.i = select i1 %cmp.not.i, i32 %inc.i, i32 0
  %9 = ptrtoint ptr %m_agirotor.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.store.select.i, ptr %m_agirotor.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %m_agirotor_lock.i) #12
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 64, i32 15
  %10 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %11 to i64
  %shr = lshr i64 %parent, %sh_prom
  %conv3 = trunc i64 %shr to i32
  %m_maxagi = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 52
  %12 = ptrtoint ptr %m_maxagi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_maxagi, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv3)
  %cmp4.not = icmp ugt i32 %13, %conv3
  %spec.store.select = select i1 %cmp4.not, i32 %conv3, i32 0
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then
  %start_agno.0 = phi i32 [ %6, %if.then ], [ %spec.store.select, %if.else ]
  %14 = ptrtoint ptr %m_ino_geo to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_ino_geo, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool.not = icmp eq i64 %15, 0
  br i1 %tobool.not, label %if.end7.if.end14_crit_edge, label %land.lhs.true

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %count.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 77, i32 1
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load volatile i64, ptr %count.i, align 8
  %18 = tail call i64 @llvm.smax.i64(i64 %17, i64 0) #12
  %ialloc_inos = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 64, i32 11
  %19 = ptrtoint ptr %ialloc_inos to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ialloc_inos, align 8
  %conv9 = zext i32 %20 to i64
  %add = add nuw i64 %18, %conv9
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %15)
  %cmp11 = icmp ule i64 %add, %15
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true, %if.end7.if.end14_crit_edge
  %ok_alloc.0.off0 = phi i1 [ true, %if.end7.if.end14_crit_edge ], [ %cmp11, %land.lhs.true ]
  %ok_alloc.not.i = xor i1 %ok_alloc.0.off0, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %4)
  %cmp38.i = icmp eq i16 %4, -24576
  %phi.cast.i = zext i1 %cmp38.i to i32
  %21 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec.i.i, i32 0, i32 3
  %22 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec.i.i, i32 0, i32 4
  %conv1.i.i = trunc i64 %parent to i32
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 66
  %m_maxagi29 = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 52
  br label %for.cond

for.cond:                                         ; preds = %if.end40, %if.end14
  %agno.0 = phi i32 [ %start_agno.0, %if.end14 ], [ %spec.store.select44, %if.end40 ]
  %flags.0 = phi i32 [ 1, %if.end14 ], [ %flags.1, %if.end40 ]
  %call15 = call ptr @xfs_perag_get(ptr noundef %3, i32 noundef %agno.0) #12
  %23 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tpp, align 4
  %t_mountp.i = getelementptr inbounds %struct.xfs_trans, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %t_mountp.i, align 4
  %pagi_inodeok.i = getelementptr inbounds %struct.xfs_perag, ptr %call15, i32 0, i32 6
  %27 = ptrtoint ptr %pagi_inodeok.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pagi_inodeok.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %for.cond.if.end25_crit_edge, label %if.end.i

for.cond.if.end25_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end.i:                                         ; preds = %for.cond
  %pagi_init.i = getelementptr inbounds %struct.xfs_perag, ptr %call15, i32 0, i32 4
  %29 = ptrtoint ptr %pagi_init.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pagi_init.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool1.not.i = icmp eq i8 %30, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %call15, i32 0, i32 1
  %31 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pag_agno.i, align 4
  %call.i = call i32 @xfs_ialloc_pagi_init(ptr noundef %26, ptr noundef %24, i32 noundef %32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then2.i.if.end6.i_crit_edge, label %if.then2.i.if.end25_crit_edge

if.then2.i.if.end25_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then2.i.if.end6.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %pagi_freecount.i = getelementptr inbounds %struct.xfs_perag, ptr %call15, i32 0, i32 13
  %33 = ptrtoint ptr %pagi_freecount.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pagi_freecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool7.not.i = icmp ne i32 %34, 0
  %brmerge.i = or i1 %tobool7.not.i, %ok_alloc.not.i
  br i1 %brmerge.i, label %xfs_dialloc_good_ag.exit, label %if.end12.i

if.end12.i:                                       ; preds = %if.end6.i
  %pagf_init.i = getelementptr inbounds %struct.xfs_perag, ptr %call15, i32 0, i32 3
  %35 = ptrtoint ptr %pagf_init.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pagf_init.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool13.not.i = icmp eq i8 %36, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end12.i.if.end20.i_crit_edge

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.end12.i
  %pag_agno15.i = getelementptr inbounds %struct.xfs_perag, ptr %call15, i32 0, i32 1
  %37 = ptrtoint ptr %pag_agno15.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pag_agno15.i, align 4
  %call16.i = call i32 @xfs_alloc_pagf_init(ptr noundef %26, ptr noundef %24, i32 noundef %38, i32 noundef %flags.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then14.i.if.end20.i_crit_edge, label %if.then14.i.if.end25_crit_edge

if.then14.i.if.end25_crit_edge:                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then14.i.if.end20.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i.if.end20.i_crit_edge, %if.end12.i.if.end20.i_crit_edge
  %ialloc_min_blks.i = getelementptr inbounds %struct.xfs_mount, ptr %26, i32 0, i32 64, i32 13
  %39 = ptrtoint ptr %ialloc_min_blks.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ialloc_min_blks.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags.0)
  %tobool21.not.i = icmp ne i32 %flags.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i = icmp ugt i32 %40, 1
  %or.cond.i = select i1 %tobool21.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.then22.i, label %if.end20.i.if.end24.i_crit_edge

if.end20.i.if.end24.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %cluster_align.i = getelementptr inbounds %struct.xfs_mount, ptr %26, i32 0, i32 64, i32 5
  %41 = ptrtoint ptr %cluster_align.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cluster_align.i, align 8
  %add.i = add i32 %42, %40
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.end20.i.if.end24.i_crit_edge
  %ineed.0.i = phi i32 [ %add.i, %if.then22.i ], [ %40, %if.end20.i.if.end24.i_crit_edge ]
  %pagf_longest.i = getelementptr inbounds %struct.xfs_perag, ptr %call15, i32 0, i32 11
  %43 = ptrtoint ptr %pagf_longest.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pagf_longest.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool25.not.i = icmp eq i32 %44, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end24.i.if.end28.i_crit_edge

if.end24.i.if.end28.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %pagf_flcount.i = getelementptr inbounds %struct.xfs_perag, ptr %call15, i32 0, i32 9
  %45 = ptrtoint ptr %pagf_flcount.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pagf_flcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp27.i = icmp ne i32 %46, 0
  %conv.i = zext i1 %cmp27.i to i32
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %if.end24.i.if.end28.i_crit_edge
  %longest.0.i = phi i32 [ %44, %if.end24.i.if.end28.i_crit_edge ], [ %conv.i, %if.then26.i ]
  %47 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i16 %4, label %lor.rhs.i [
    i16 16384, label %if.end28.i.lor.end.i_crit_edge
    i16 -32768, label %if.end28.i.lor.end.i_crit_edge130
  ]

if.end28.i.lor.end.i_crit_edge130:                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end.i

if.end28.i.lor.end.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.end28.i.lor.end.i_crit_edge, %if.end28.i.lor.end.i_crit_edge130
  %48 = phi i32 [ 1, %if.end28.i.lor.end.i_crit_edge ], [ %phi.cast.i, %lor.rhs.i ], [ 1, %if.end28.i.lor.end.i_crit_edge130 ]
  %pagf_freeblks.i = getelementptr inbounds %struct.xfs_perag, ptr %call15, i32 0, i32 10
  %49 = ptrtoint ptr %pagf_freeblks.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pagf_freeblks.i, align 4
  %add40.i = add i32 %48, %ineed.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %add40.i)
  %cmp41.i = icmp uge i32 %50, %add40.i
  call void @__sanitizer_cov_trace_cmp4(i32 %longest.0.i, i32 %ineed.0.i)
  %cmp44.i = icmp uge i32 %longest.0.i, %ineed.0.i
  %or.cond74.i = select i1 %cmp41.i, i1 %cmp44.i, i1 false
  br i1 %or.cond74.i, label %lor.end.i.if.then18_crit_edge, label %lor.end.i.if.end25_crit_edge

lor.end.i.if.end25_crit_edge:                     ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

lor.end.i.if.then18_crit_edge:                    ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

xfs_dialloc_good_ag.exit:                         ; preds = %if.end6.i
  br i1 %tobool7.not.i, label %xfs_dialloc_good_ag.exit.if.then18_crit_edge, label %xfs_dialloc_good_ag.exit.if.end25_crit_edge

xfs_dialloc_good_ag.exit.if.end25_crit_edge:      ; preds = %xfs_dialloc_good_ag.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

xfs_dialloc_good_ag.exit.if.then18_crit_edge:     ; preds = %xfs_dialloc_good_ag.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.then18:                                        ; preds = %xfs_dialloc_good_ag.exit.if.then18_crit_edge, %lor.end.i.if.then18_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agbp.i) #12
  %51 = ptrtoint ptr %agbp.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 -1 to ptr), ptr %agbp.i, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ino.i) #12
  %52 = ptrtoint ptr %ino.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 -1, ptr %ino.i, align 8, !annotation !152
  %53 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call15, align 4
  %55 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tpp, align 4
  %pag_agno.i69 = getelementptr inbounds %struct.xfs_perag, ptr %call15, i32 0, i32 1
  %57 = ptrtoint ptr %pag_agno.i69 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pag_agno.i69, align 4
  call fastcc void @trace_xfs_ialloc_read_agi(ptr noundef %54, i32 noundef %58) #12
  %call.i.i = call i32 @xfs_read_agi(ptr noundef %54, ptr noundef %56, i32 noundef %58, ptr noundef nonnull %agbp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then18.xfs_dialloc_try_ag.exit_crit_edge

if.then18.xfs_dialloc_try_ag.exit_crit_edge:      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_dialloc_try_ag.exit

if.end.i.i:                                       ; preds = %if.then18
  %59 = ptrtoint ptr %agbp.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %agbp.i, align 4
  %b_addr.i.i = getelementptr inbounds %struct.xfs_buf, ptr %60, i32 0, i32 16
  %61 = ptrtoint ptr %b_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_addr.i.i, align 4
  %b_pag.i.i = getelementptr inbounds %struct.xfs_buf, ptr %60, i32 0, i32 13
  %63 = ptrtoint ptr %b_pag.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %b_pag.i.i, align 8
  %pagi_init.i.i = getelementptr inbounds %struct.xfs_perag, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %pagi_init.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %pagi_init.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool1.not.i.i = icmp eq i8 %66, 0
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.end.i.i.if.end4.i.i_crit_edge

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %agi_freecount.i.i = getelementptr inbounds %struct.xfs_agi, ptr %62, i32 0, i32 7
  %67 = ptrtoint ptr %agi_freecount.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %agi_freecount.i.i, align 4
  %pagi_freecount.i.i = getelementptr inbounds %struct.xfs_perag, ptr %64, i32 0, i32 13
  %69 = ptrtoint ptr %pagi_freecount.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %pagi_freecount.i.i, align 4
  %agi_count.i.i = getelementptr inbounds %struct.xfs_agi, ptr %62, i32 0, i32 4
  %70 = ptrtoint ptr %agi_count.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %agi_count.i.i, align 8
  %pagi_count.i.i = getelementptr inbounds %struct.xfs_perag, ptr %64, i32 0, i32 14
  %72 = ptrtoint ptr %pagi_count.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %pagi_count.i.i, align 4
  %73 = ptrtoint ptr %pagi_init.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %pagi_init.i.i, align 1
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end4.i.i_crit_edge
  %pagi_freecount5.i.i = getelementptr inbounds %struct.xfs_perag, ptr %64, i32 0, i32 13
  %74 = ptrtoint ptr %pagi_freecount5.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pagi_freecount5.i.i, align 4
  %agi_freecount6.i.i = getelementptr inbounds %struct.xfs_agi, ptr %62, i32 0, i32 7
  %76 = ptrtoint ptr %agi_freecount6.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %agi_freecount6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp.i.i = icmp eq i32 %75, %77
  br i1 %cmp.i.i, label %if.end4.i.i.if.end.i72_crit_edge, label %lor.rhs.i.i

if.end4.i.i.if.end.i72_crit_edge:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i72

lor.rhs.i.i:                                      ; preds = %if.end4.i.i
  %m_opstate.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %54, i32 0, i32 66
  %78 = ptrtoint ptr %m_opstate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %m_opstate.i.i.i, align 4
  %80 = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.i.not.i.i = icmp eq i32 %80, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %lor.rhs.i.i.if.end.i72_crit_edge, !prof !153

lor.rhs.i.i.if.end.i72_crit_edge:                 ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i72

cond.false.i.i:                                   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.6, i32 noundef 2626) #12
  br label %if.end.i72

if.end.i72:                                       ; preds = %cond.false.i.i, %lor.rhs.i.i.if.end.i72_crit_edge, %if.end4.i.i.if.end.i72_crit_edge
  %81 = ptrtoint ptr %pagi_freecount.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pagi_freecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool1.not.i71 = icmp eq i32 %82, 0
  br i1 %tobool1.not.i71, label %if.then2.i73, label %if.end.i72.if.end17.i_crit_edge

if.end.i72.if.end17.i_crit_edge:                  ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then2.i73:                                     ; preds = %if.end.i72
  br i1 %ok_alloc.0.off0, label %if.end5.i, label %if.then2.i73.out_release.i_crit_edge

if.then2.i73.out_release.i_crit_edge:             ; preds = %if.then2.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release.i

if.end5.i:                                        ; preds = %if.then2.i73
  %83 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tpp, align 4
  %85 = ptrtoint ptr %agbp.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %agbp.i, align 4
  %call6.i = call fastcc i32 @xfs_ialloc_ag_alloc(ptr noundef %84, ptr noundef %86, ptr noundef %call15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i74 = icmp slt i32 %call6.i, 0
  br i1 %cmp.i74, label %if.end5.i.out_release.i_crit_edge, label %if.end8.i

if.end5.i.out_release.i_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release.i

if.end8.i:                                        ; preds = %if.end5.i
  %87 = ptrtoint ptr %pagi_freecount.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pagi_freecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp10.not.i = icmp eq i32 %88, 0
  br i1 %cmp10.not.i, label %cond.false.i, label %if.end8.i.cond.end.i_crit_edge, !prof !153

if.end8.i.cond.end.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.6, i32 noundef 1701) #12
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end8.i.cond.end.i_crit_edge
  %89 = ptrtoint ptr %agbp.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %agbp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp.i.i) #12
  %91 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tpp, align 4
  %93 = ptrtoint ptr %tp.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %tp.i.i, align 4
  call void @xfs_trans_bhold(ptr noundef %92, ptr noundef %90) #12
  %t_dqinfo.i.i = getelementptr inbounds %struct.xfs_trans, ptr %92, i32 0, i32 11
  %94 = ptrtoint ptr %t_dqinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %t_dqinfo.i.i, align 8
  store ptr null, ptr %t_dqinfo.i.i, align 8
  %call.i39.i = call i32 @xfs_trans_roll(ptr noundef nonnull %tp.i.i) #12
  %96 = ptrtoint ptr %tp.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tp.i.i, align 4
  %t_dqinfo2.i.i = getelementptr inbounds %struct.xfs_trans, ptr %97, i32 0, i32 11
  %98 = ptrtoint ptr %t_dqinfo2.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %95, ptr %t_dqinfo2.i.i, align 8
  call void @xfs_trans_bjoin(ptr noundef %97, ptr noundef %90) #12
  %99 = ptrtoint ptr %tp.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tp.i.i, align 4
  %101 = ptrtoint ptr %tpp to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %tpp, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %tobool14.not.i = icmp eq i32 %call.i39.i, 0
  br i1 %tobool14.not.i, label %cond.end.i.if.end17.i_crit_edge, label %cond.end.i.out_release.i_crit_edge

cond.end.i.out_release.i_crit_edge:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release.i

cond.end.i.if.end17.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.end17.i:                                       ; preds = %cond.end.i.if.end17.i_crit_edge, %if.end.i72.if.end17.i_crit_edge
  %102 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tpp, align 4
  %104 = ptrtoint ptr %agbp.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %agbp.i, align 4
  %t_mountp.i.i = getelementptr inbounds %struct.xfs_trans, ptr %103, i32 0, i32 10
  %106 = ptrtoint ptr %t_mountp.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %t_mountp.i.i, align 4
  %b_addr.i40.i = getelementptr inbounds %struct.xfs_buf, ptr %105, i32 0, i32 16
  %108 = ptrtoint ptr %b_addr.i40.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %b_addr.i40.i, align 4
  %agino_log.i.i = getelementptr inbounds %struct.xfs_mount, ptr %107, i32 0, i32 64, i32 15
  %110 = ptrtoint ptr %agino_log.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %agino_log.i.i, align 8
  %sh_prom.i.i = zext i32 %111 to i64
  %shr.i.i = lshr i64 %parent, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur.i.i) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec.i.i) #12
  %112 = call ptr @memset(ptr %rec.i.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i.i) #12
  %113 = ptrtoint ptr %i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %i.i.i, align 4, !annotation !152
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %107, i32 0, i32 61
  %114 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i = and i64 %115, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i41.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i41.i, label %xfs_dialloc_ag.exit.i, label %if.end.i43.i

if.end.i43.i:                                     ; preds = %if.end17.i
  %notmask.i.i = shl nsw i64 -1, %sh_prom.i.i
  %116 = trunc i64 %notmask.i.i to i32
  %conv5.i.i = xor i32 %116, -1
  %and.i.i = and i32 %conv5.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i42.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i42.i, label %if.then7.i.i, label %if.end.i43.i.if.end8.i.i_crit_edge

if.end.i43.i.if.end8.i.i_crit_edge:               ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then7.i.i:                                     ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #14
  %agi_newino.i.i = getelementptr inbounds %struct.xfs_agi, ptr %109, i32 0, i32 8
  %117 = ptrtoint ptr %agi_newino.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %agi_newino.i.i, align 8
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then7.i.i, %if.end.i43.i.if.end8.i.i_crit_edge
  %pagino.0.i.i = phi i32 [ %and.i.i, %if.end.i43.i.if.end8.i.i_crit_edge ], [ %118, %if.then7.i.i ]
  %call9.i.i = call ptr @xfs_inobt_init_cursor(ptr noundef %107, ptr noundef %103, ptr noundef %105, ptr noundef %call15, i32 noundef 5) #12
  %119 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call9.i.i, ptr %cur.i.i, align 4
  %call10.i.i = call fastcc i32 @xfs_check_agi_freecount(ptr noundef %call9.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %if.end8.i.i.xfs_dialloc_ag.exit.thread50.i_crit_edge

if.end8.i.i.xfs_dialloc_ag.exit.thread50.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_dialloc_ag.exit.thread50.i

if.end13.i.i:                                     ; preds = %if.end8.i.i
  %120 = ptrtoint ptr %pag_agno.i69 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pag_agno.i69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %conv.i.i)
  %cmp.i44.i = icmp eq i32 %121, %conv.i.i
  br i1 %cmp.i44.i, label %if.then15.i.i, label %if.else.i.i

if.then15.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i.i = call fastcc i32 @xfs_dialloc_ag_finobt_near(i32 noundef %pagino.0.i.i, ptr noundef nonnull %cur.i.i, ptr noundef nonnull %rec.i.i) #12
  br label %if.end18.i.i

if.else.i.i:                                      ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call17.i.i = call fastcc i32 @xfs_dialloc_ag_finobt_newino(ptr noundef %109, ptr noundef %call9.i.i, ptr noundef nonnull %rec.i.i) #12
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.else.i.i, %if.then15.i.i
  %error.0.i.i = phi i32 [ %call16.i.i, %if.then15.i.i ], [ %call17.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i.i)
  %tobool19.not.i.i = icmp eq i32 %error.0.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end21.i.i, label %if.end18.i.i.xfs_dialloc_ag.exit.thread50.i_crit_edge

if.end18.i.i.xfs_dialloc_ag.exit.thread50.i_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_dialloc_ag.exit.thread50.i

if.end21.i.i:                                     ; preds = %if.end18.i.i
  %call22.i.i = call fastcc i32 @xfs_inobt_first_free_inode(ptr noundef nonnull %rec.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22.i.i)
  %cmp23.i.i = icmp sgt i32 %call22.i.i, -1
  br i1 %cmp23.i.i, label %cond.end.i.i, label %cond.end.thread.i.i, !prof !154

cond.end.thread.i.i:                              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.6, i32 noundef 1479) #12
  br label %cond.false36.i.i

cond.end.i.i:                                     ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call22.i.i)
  %cmp27.i.i = icmp ult i32 %call22.i.i, 64
  br i1 %cmp27.i.i, label %cond.end.i.i.cond.end37.i.i_crit_edge, label %cond.end.i.i.cond.false36.i.i_crit_edge, !prof !154

cond.end.i.i.cond.false36.i.i_crit_edge:          ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false36.i.i

cond.end.i.i.cond.end37.i.i_crit_edge:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end37.i.i

cond.false36.i.i:                                 ; preds = %cond.end.i.i.cond.false36.i.i_crit_edge, %cond.end.thread.i.i
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.6, i32 noundef 1480) #12
  br label %cond.end37.i.i

cond.end37.i.i:                                   ; preds = %cond.false36.i.i, %cond.end.i.i.cond.end37.i.i_crit_edge
  %122 = ptrtoint ptr %rec.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rec.i.i, align 8
  %sb_inopblog.i.i = getelementptr inbounds %struct.xfs_sb, ptr %107, i32 0, i32 23
  %124 = ptrtoint ptr %sb_inopblog.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %sb_inopblog.i.i, align 1
  %sh_prom39.i.i = zext i8 %125 to i64
  %notmask145.i.i = shl nsw i64 -1, %sh_prom39.i.i
  %126 = trunc i64 %notmask145.i.i to i32
  %conv42.i.i = xor i32 %126, -1
  %and43.i.i = and i32 %123, 63
  %rem.i.i = and i32 %and43.i.i, %conv42.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp44.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp44.i.i, label %cond.end37.i.i.cond.end54.i.i_crit_edge, label %cond.false53.i.i, !prof !154

cond.end37.i.i.cond.end54.i.i_crit_edge:          ; preds = %cond.end37.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end54.i.i

cond.false53.i.i:                                 ; preds = %cond.end37.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.6, i32 noundef 1482) #12
  br label %cond.end54.i.i

cond.end54.i.i:                                   ; preds = %cond.false53.i.i, %cond.end37.i.i.cond.end54.i.i_crit_edge
  %127 = ptrtoint ptr %pag_agno.i69 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pag_agno.i69, align 4
  %129 = ptrtoint ptr %agino_log.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %agino_log.i.i, align 8
  %131 = ptrtoint ptr %rec.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rec.i.i, align 8
  %sh_prom63.i.i = zext i32 %call22.i.i to i64
  %shl64.i.i = shl nuw i64 1, %sh_prom63.i.i
  %neg.i.i = xor i64 %shl64.i.i, -1
  %133 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %22, align 8
  %and65.i.i = and i64 %134, %neg.i.i
  store i64 %and65.i.i, ptr %22, align 8
  %135 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %21, align 1
  %dec.i.i = add i8 %136, -1
  store i8 %dec.i.i, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i.i)
  %tobool67.not.i.i = icmp eq i8 %dec.i.i, 0
  %137 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cur.i.i, align 4
  br i1 %tobool67.not.i.i, label %if.else70.i.i, label %if.then68.i.i

if.then68.i.i:                                    ; preds = %cond.end54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call69.i.i = call fastcc i32 @xfs_inobt_update(ptr noundef %138, ptr noundef nonnull %rec.i.i) #12
  br label %if.end72.i.i

if.else70.i.i:                                    ; preds = %cond.end54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call71.i.i = call i32 @xfs_btree_delete(ptr noundef %138, ptr noundef nonnull %i.i.i) #12
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %if.else70.i.i, %if.then68.i.i
  %error.1.i.i = phi i32 [ %call69.i.i, %if.then68.i.i ], [ %call71.i.i, %if.else70.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1.i.i)
  %tobool73.not.i.i = icmp eq i32 %error.1.i.i, 0
  br i1 %tobool73.not.i.i, label %if.end75.i.i, label %if.end72.i.i.xfs_dialloc_ag.exit.thread50.i_crit_edge

if.end72.i.i.xfs_dialloc_ag.exit.thread50.i_crit_edge: ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_dialloc_ag.exit.thread50.i

if.end75.i.i:                                     ; preds = %if.end72.i.i
  %call76.i.i = call ptr @xfs_inobt_init_cursor(ptr noundef %107, ptr noundef %103, ptr noundef %105, ptr noundef %call15, i32 noundef 4) #12
  %call77.i.i = call fastcc i32 @xfs_check_agi_freecount(ptr noundef %call76.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i.i)
  %tobool78.not.i.i = icmp eq i32 %call77.i.i, 0
  br i1 %tobool78.not.i.i, label %if.end80.i.i, label %if.end75.i.i.error_icur.i.i_crit_edge

if.end75.i.i.error_icur.i.i_crit_edge:            ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_icur.i.i

if.end80.i.i:                                     ; preds = %if.end75.i.i
  %call81.i.i = call fastcc i32 @xfs_dialloc_ag_update_inobt(ptr noundef %call76.i.i, ptr noundef nonnull %rec.i.i, i32 noundef %call22.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i.i)
  %tobool82.not.i.i = icmp eq i32 %call81.i.i, 0
  br i1 %tobool82.not.i.i, label %if.end84.i.i, label %if.end80.i.i.error_icur.i.i_crit_edge

if.end80.i.i.error_icur.i.i_crit_edge:            ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_icur.i.i

if.end84.i.i:                                     ; preds = %if.end80.i.i
  %agi_freecount.i45.i = getelementptr inbounds %struct.xfs_agi, ptr %109, i32 0, i32 7
  %139 = ptrtoint ptr %agi_freecount.i45.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %agi_freecount.i45.i, align 4
  %add.i.i.i = add i32 %140, -1
  store i32 %add.i.i.i, ptr %agi_freecount.i45.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first.i) #12
  %141 = ptrtoint ptr %first.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -1, ptr %first.i, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last.i) #12
  %142 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -1, ptr %last.i, align 4, !annotation !152
  %143 = ptrtoint ptr %b_addr.i40.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %b_addr.i40.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %144, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480673097, i32 %146)
  %cmp.i76 = icmp eq i32 %146, 1480673097
  br i1 %cmp.i76, label %if.end84.i.i.xfs_ialloc_log_agi.exit_crit_edge, label %cond.false.i77, !prof !154

if.end84.i.i.xfs_ialloc_log_agi.exit_crit_edge:   ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_ialloc_log_agi.exit

cond.false.i77:                                   ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6, i32 noundef 2444) #12
  br label %xfs_ialloc_log_agi.exit

xfs_ialloc_log_agi.exit:                          ; preds = %cond.false.i77, %if.end84.i.i.xfs_ialloc_log_agi.exit_crit_edge
  call void @xfs_btree_offsets(i64 noundef 128, ptr noundef nonnull @xfs_ialloc_log_agi.offsets, i32 noundef 11, ptr noundef nonnull %first.i, ptr noundef nonnull %last.i) #12
  %147 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %first.i, align 4
  %149 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %last.i, align 4
  call void @xfs_trans_log_buf(ptr noundef %103, ptr noundef %105, i32 noundef %148, i32 noundef %150) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first.i) #12
  %151 = ptrtoint ptr %pagi_freecount.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %pagi_freecount.i, align 4
  %dec85.i.i = add i32 %152, -1
  store i32 %dec85.i.i, ptr %pagi_freecount.i, align 4
  call void @xfs_trans_mod_sb(ptr noundef %103, i32 noundef 2, i64 noundef -1) #12
  %call86.i.i = call fastcc i32 @xfs_check_agi_freecount(ptr noundef %call76.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i.i)
  %tobool87.not.i.i = icmp eq i32 %call86.i.i, 0
  br i1 %tobool87.not.i.i, label %if.end89.i.i, label %xfs_ialloc_log_agi.exit.error_icur.i.i_crit_edge

xfs_ialloc_log_agi.exit.error_icur.i.i_crit_edge: ; preds = %xfs_ialloc_log_agi.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_icur.i.i

if.end89.i.i:                                     ; preds = %xfs_ialloc_log_agi.exit
  %call90.i.i = call fastcc i32 @xfs_check_agi_freecount(ptr noundef %138) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i.i)
  %tobool91.not.i.i = icmp eq i32 %call90.i.i, 0
  br i1 %tobool91.not.i.i, label %xfs_dialloc_ag.exit.thread.i, label %if.end89.i.i.error_icur.i.i_crit_edge

if.end89.i.i.error_icur.i.i_crit_edge:            ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_icur.i.i

xfs_dialloc_ag.exit.thread.i:                     ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv56.i.i.le = zext i32 %128 to i64
  %sh_prom59.i.i.le = zext i32 %130 to i64
  %shl60.i.i.le = shl i64 %conv56.i.i.le, %sh_prom59.i.i.le
  %add.i.i.le = add i32 %132, %call22.i.i
  %conv62.i.i.le = zext i32 %add.i.i.le to i64
  %or.i.i.le = or i64 %shl60.i.i.le, %conv62.i.i.le
  call void @xfs_btree_del_cursor(ptr noundef %call76.i.i, i32 noundef 0) #12
  call void @xfs_btree_del_cursor(ptr noundef %138, i32 noundef 0) #12
  %153 = ptrtoint ptr %ino.i to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %or.i.i.le, ptr %ino.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur.i.i) #12
  br label %if.then42

error_icur.i.i:                                   ; preds = %if.end89.i.i.error_icur.i.i_crit_edge, %xfs_ialloc_log_agi.exit.error_icur.i.i_crit_edge, %if.end80.i.i.error_icur.i.i_crit_edge, %if.end75.i.i.error_icur.i.i_crit_edge
  %error.2.i.i = phi i32 [ %call77.i.i, %if.end75.i.i.error_icur.i.i_crit_edge ], [ %call81.i.i, %if.end80.i.i.error_icur.i.i_crit_edge ], [ %call86.i.i, %xfs_ialloc_log_agi.exit.error_icur.i.i_crit_edge ], [ %call90.i.i, %if.end89.i.i.error_icur.i.i_crit_edge ]
  call void @xfs_btree_del_cursor(ptr noundef %call76.i.i, i32 noundef 1) #12
  br label %xfs_dialloc_ag.exit.thread50.i

xfs_dialloc_ag.exit.thread50.i:                   ; preds = %error_icur.i.i, %if.end72.i.i.xfs_dialloc_ag.exit.thread50.i_crit_edge, %if.end18.i.i.xfs_dialloc_ag.exit.thread50.i_crit_edge, %if.end8.i.i.xfs_dialloc_ag.exit.thread50.i_crit_edge
  %error.3.i.i = phi i32 [ %call10.i.i, %if.end8.i.i.xfs_dialloc_ag.exit.thread50.i_crit_edge ], [ %error.0.i.i, %if.end18.i.i.xfs_dialloc_ag.exit.thread50.i_crit_edge ], [ %error.1.i.i, %if.end72.i.i.xfs_dialloc_ag.exit.thread50.i_crit_edge ], [ %error.2.i.i, %error_icur.i.i ]
  %154 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cur.i.i, align 4
  call void @xfs_btree_del_cursor(ptr noundef %155, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur.i.i) #12
  br label %xfs_dialloc_try_ag.exit

xfs_dialloc_ag.exit.i:                            ; preds = %if.end17.i
  %call6.i.i = call fastcc i32 @xfs_dialloc_ag_inobt(ptr noundef %103, ptr noundef %105, ptr noundef %call15, i64 noundef %parent, ptr noundef nonnull %ino.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool19.not.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool19.not.i, label %xfs_dialloc_ag.exit.i.if.then42_crit_edge, label %xfs_dialloc_ag.exit.i.xfs_dialloc_try_ag.exit_crit_edge

xfs_dialloc_ag.exit.i.xfs_dialloc_try_ag.exit_crit_edge: ; preds = %xfs_dialloc_ag.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_dialloc_try_ag.exit

xfs_dialloc_ag.exit.i.if.then42_crit_edge:        ; preds = %xfs_dialloc_ag.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42

out_release.i:                                    ; preds = %cond.end.i.out_release.i_crit_edge, %if.end5.i.out_release.i_crit_edge, %if.then2.i73.out_release.i_crit_edge
  %error.0.i = phi i32 [ %call6.i, %if.end5.i.out_release.i_crit_edge ], [ %call.i39.i, %cond.end.i.out_release.i_crit_edge ], [ -11, %if.then2.i73.out_release.i_crit_edge ]
  %156 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %tpp, align 4
  %158 = ptrtoint ptr %agbp.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %agbp.i, align 4
  call void @xfs_trans_brelse(ptr noundef %157, ptr noundef %159) #12
  br label %xfs_dialloc_try_ag.exit

xfs_dialloc_try_ag.exit:                          ; preds = %out_release.i, %xfs_dialloc_ag.exit.i.xfs_dialloc_try_ag.exit_crit_edge, %xfs_dialloc_ag.exit.thread50.i, %if.then18.xfs_dialloc_try_ag.exit_crit_edge
  %retval.0.i75 = phi i32 [ %error.0.i, %out_release.i ], [ %call6.i.i, %xfs_dialloc_ag.exit.i.xfs_dialloc_try_ag.exit_crit_edge ], [ %call.i.i, %if.then18.xfs_dialloc_try_ag.exit_crit_edge ], [ %error.3.i.i, %xfs_dialloc_ag.exit.thread50.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ino.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agbp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %retval.0.i75)
  %cmp21.not = icmp eq i32 %retval.0.i75, -11
  br i1 %cmp21.not, label %xfs_dialloc_try_ag.exit.if.end25_crit_edge, label %xfs_dialloc_try_ag.exit.if.end43_crit_edge

xfs_dialloc_try_ag.exit.if.end43_crit_edge:       ; preds = %xfs_dialloc_try_ag.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

xfs_dialloc_try_ag.exit.if.end25_crit_edge:       ; preds = %xfs_dialloc_try_ag.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end25:                                         ; preds = %xfs_dialloc_try_ag.exit.if.end25_crit_edge, %xfs_dialloc_good_ag.exit.if.end25_crit_edge, %lor.end.i.if.end25_crit_edge, %if.then14.i.if.end25_crit_edge, %if.then2.i.if.end25_crit_edge, %for.cond.if.end25_crit_edge
  %160 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %m_opstate.i, align 4
  %162 = and i32 %161, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.i.not = icmp eq i32 %162, 0
  br i1 %tobool.i.not, label %if.end28, label %if.end25.if.end43_crit_edge

if.end25.if.end43_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.end28:                                         ; preds = %if.end25
  %inc = add i32 %agno.0, 1
  %163 = ptrtoint ptr %m_maxagi29 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %m_maxagi29, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %164)
  %cmp30 = icmp eq i32 %inc, %164
  %spec.store.select44 = select i1 %cmp30, i32 0, i32 %inc
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select44, i32 %start_agno.0)
  %cmp34 = icmp eq i32 %spec.store.select44, %start_agno.0
  br i1 %cmp34, label %if.then36, label %if.end28.if.end40_crit_edge

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags.0)
  %tobool37.not = icmp eq i32 %flags.0, 0
  br i1 %tobool37.not, label %if.then36.if.end43_crit_edge, label %if.then36.if.end40_crit_edge

if.then36.if.end40_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then36.if.end43_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.end40:                                         ; preds = %if.then36.if.end40_crit_edge, %if.end28.if.end40_crit_edge
  %flags.1 = phi i32 [ %flags.0, %if.end28.if.end40_crit_edge ], [ 0, %if.then36.if.end40_crit_edge ]
  call void @xfs_perag_put(ptr noundef %call15) #12
  br label %for.cond

if.then42:                                        ; preds = %xfs_dialloc_ag.exit.i.if.then42_crit_edge, %xfs_dialloc_ag.exit.thread.i
  %165 = ptrtoint ptr %ino.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %ino.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ino.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agbp.i) #12
  %167 = ptrtoint ptr %new_ino to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %166, ptr %new_ino, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.then36.if.end43_crit_edge, %if.end25.if.end43_crit_edge, %xfs_dialloc_try_ag.exit.if.end43_crit_edge
  %error.087 = phi i32 [ 0, %if.then42 ], [ %retval.0.i75, %xfs_dialloc_try_ag.exit.if.end43_crit_edge ], [ -117, %if.end25.if.end43_crit_edge ], [ -28, %if.then36.if.end43_crit_edge ]
  call void @xfs_perag_put(ptr noundef %call15) #12
  ret i32 %error.087
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_difree(ptr noundef %tp, ptr noundef %pag, i64 noundef %inode, ptr nocapture noundef writeonly %xic) local_unnamed_addr #0 align 64 {
entry:
  %agbp = alloca ptr, align 4
  %rec = alloca %struct.xfs_inobt_rec_incore, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agbp) #12
  %0 = ptrtoint ptr %agbp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %agbp, align 4, !annotation !152
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %1 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %t_mountp, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec) #12
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %3 = call ptr @memset(ptr %rec, i32 255, i32 16)
  %4 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pag_agno, align 4
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 64, i32 15
  %6 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %7 to i64
  %shr = lshr i64 %inode, %sh_prom
  %conv = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.xfs_difree, i32 noundef %conv, i32 noundef %5) #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 2151) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv8 = trunc i64 %inode to i32
  %notmask = shl nsw i64 -1, %sh_prom
  %8 = trunc i64 %notmask to i32
  %conv12 = xor i32 %8, -1
  %and = and i32 %conv12, %conv8
  %conv14 = zext i32 %5 to i64
  %shl18 = shl i64 %conv14, %sh_prom
  %conv19 = zext i32 %and to i64
  %or = or i64 %shl18, %conv19
  call void @__sanitizer_cov_trace_cmp8(i64 %or, i64 %inode)
  %cmp20.not = icmp eq i64 %or, %inode
  br i1 %cmp20.not, label %if.end31, label %if.then22

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.xfs_difree, i64 noundef %inode, i64 noundef %or) #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 2159) #12
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %2, i32 0, i32 23
  %9 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sb_inopblog, align 1
  %conv32 = zext i8 %10 to i32
  %shr33 = lshr i32 %and, %conv32
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %2, i32 0, i32 11
  %11 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sb_agblocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr33, i32 %12)
  %cmp35.not = icmp ult i32 %shr33, %12
  br i1 %cmp35.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.xfs_difree, i32 noundef %shr33, i32 noundef %12) #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 2166) #12
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  tail call fastcc void @trace_xfs_ialloc_read_agi(ptr noundef %2, i32 noundef %5) #12
  %call.i = call i32 @xfs_read_agi(ptr noundef %2, ptr noundef %tp, i32 noundef %5, ptr noundef nonnull %agbp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then42

if.end.i:                                         ; preds = %if.end40
  %13 = ptrtoint ptr %agbp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %agbp, align 4
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_addr.i, align 4
  %b_pag.i = getelementptr inbounds %struct.xfs_buf, ptr %14, i32 0, i32 13
  %17 = ptrtoint ptr %b_pag.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_pag.i, align 8
  %pagi_init.i = getelementptr inbounds %struct.xfs_perag, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %pagi_init.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pagi_init.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool1.not.i = icmp eq i8 %20, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %agi_freecount.i = getelementptr inbounds %struct.xfs_agi, ptr %16, i32 0, i32 7
  %21 = ptrtoint ptr %agi_freecount.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %agi_freecount.i, align 4
  %pagi_freecount.i = getelementptr inbounds %struct.xfs_perag, ptr %18, i32 0, i32 13
  %23 = ptrtoint ptr %pagi_freecount.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %pagi_freecount.i, align 4
  %agi_count.i = getelementptr inbounds %struct.xfs_agi, ptr %16, i32 0, i32 4
  %24 = ptrtoint ptr %agi_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %agi_count.i, align 8
  %pagi_count.i = getelementptr inbounds %struct.xfs_perag, ptr %18, i32 0, i32 14
  %26 = ptrtoint ptr %pagi_count.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %pagi_count.i, align 4
  %27 = ptrtoint ptr %pagi_init.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %pagi_init.i, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %pagi_freecount5.i = getelementptr inbounds %struct.xfs_perag, ptr %18, i32 0, i32 13
  %28 = ptrtoint ptr %pagi_freecount5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pagi_freecount5.i, align 4
  %agi_freecount6.i = getelementptr inbounds %struct.xfs_agi, ptr %16, i32 0, i32 7
  %30 = ptrtoint ptr %agi_freecount6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %agi_freecount6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.i = icmp eq i32 %29, %31
  br i1 %cmp.i, label %if.end4.i.if.end43_crit_edge, label %lor.rhs.i

if.end4.i.if.end43_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

lor.rhs.i:                                        ; preds = %if.end4.i
  %m_opstate.i.i = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 66
  %32 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %m_opstate.i.i, align 4
  %34 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not.i = icmp eq i32 %34, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %lor.rhs.i.if.end43_crit_edge, !prof !153

lor.rhs.i.if.end43_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

cond.false.i:                                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.6, i32 noundef 2626) #12
  br label %if.end43

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %2, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.xfs_difree, i32 noundef %call.i) #12
  br label %cleanup

if.end43:                                         ; preds = %cond.false.i, %lor.rhs.i.if.end43_crit_edge, %if.end4.i.if.end43_crit_edge
  %35 = ptrtoint ptr %agbp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %agbp, align 4
  %call44 = call fastcc i32 @xfs_difree_inobt(ptr noundef %2, ptr noundef %tp, ptr noundef %36, ptr noundef %pag, i32 noundef %and, ptr noundef %xic, ptr noundef nonnull %rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.error0_crit_edge

if.end43.error0_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %error0

if.end47:                                         ; preds = %if.end43
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 61
  %37 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %38, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end47.cleanup_crit_edge, label %if.then49

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then49:                                        ; preds = %if.end47
  %39 = ptrtoint ptr %agbp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %agbp, align 4
  %call50 = call fastcc i32 @xfs_difree_finobt(ptr noundef %2, ptr noundef %tp, ptr noundef %40, ptr noundef %pag, i32 noundef %and, ptr noundef nonnull %rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then49.cleanup_crit_edge, label %if.then49.error0_crit_edge

if.then49.error0_crit_edge:                       ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %error0

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

error0:                                           ; preds = %if.then49.error0_crit_edge, %if.end43.error0_crit_edge
  %error.0 = phi i32 [ %call44, %if.end43.error0_crit_edge ], [ %call50, %if.then49.error0_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %error0, %if.then49.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.then42, %if.then37, %if.then22, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then22 ], [ -22, %if.then37 ], [ %call.i, %if.then42 ], [ %error.0, %error0 ], [ 0, %if.then49.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agbp) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ialloc_read_agi(ptr noundef %mp, ptr noundef %tp, i32 noundef %agno, ptr noundef %bpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xfs_ialloc_read_agi(ptr noundef %mp, i32 noundef %agno)
  %call = tail call i32 @xfs_read_agi(ptr noundef %mp, ptr noundef %tp, i32 noundef %agno, ptr noundef %bpp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %b_pag = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %b_pag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_pag, align 8
  %pagi_init = getelementptr inbounds %struct.xfs_perag, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %pagi_init to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pagi_init, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %agi_freecount = getelementptr inbounds %struct.xfs_agi, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %agi_freecount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %agi_freecount, align 4
  %pagi_freecount = getelementptr inbounds %struct.xfs_perag, ptr %5, i32 0, i32 13
  %10 = ptrtoint ptr %pagi_freecount to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pagi_freecount, align 4
  %agi_count = getelementptr inbounds %struct.xfs_agi, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %agi_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %agi_count, align 8
  %pagi_count = getelementptr inbounds %struct.xfs_perag, ptr %5, i32 0, i32 14
  %13 = ptrtoint ptr %pagi_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pagi_count, align 4
  %14 = ptrtoint ptr %pagi_init to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %pagi_init, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %pagi_freecount5 = getelementptr inbounds %struct.xfs_perag, ptr %5, i32 0, i32 13
  %15 = ptrtoint ptr %pagi_freecount5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pagi_freecount5, align 4
  %agi_freecount6 = getelementptr inbounds %struct.xfs_agi, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %agi_freecount6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %agi_freecount6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp = icmp eq i32 %16, %18
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %lor.rhs

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.rhs:                                          ; preds = %if.end4
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %19 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %m_opstate.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not = icmp eq i32 %21, 0
  br i1 %tobool.i.not, label %cond.false, label %lor.rhs.cleanup_crit_edge, !prof !153

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.6, i32 noundef 2626) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %lor.rhs.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_difree_inobt(ptr noundef %mp, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i32 noundef %agino, ptr nocapture noundef writeonly %xic, ptr nocapture noundef writeonly %orec) #4 align 64 {
entry:
  %rec = alloca %struct.xfs_inobt_rec_incore, align 8
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agbp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec) #12
  %2 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 3
  %3 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 4
  %4 = call ptr @memset(ptr %rec, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %5 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %i, align 4, !annotation !152
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480673097, i32 %7)
  %cmp = icmp eq i32 %7, 1480673097
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !154

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6, i32 noundef 1904) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 23
  %8 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sb_inopblog, align 1
  %conv = zext i8 %9 to i32
  %shr = lshr i32 %agino, %conv
  %agi_length = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %agi_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %agi_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %11)
  %cmp2 = icmp ult i32 %shr, %11
  br i1 %cmp2, label %cond.end.cond.end12_crit_edge, label %cond.false11, !prof !154

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.6, i32 noundef 1905) #12
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  %call = tail call ptr @xfs_inobt_init_cursor(ptr noundef %mp, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i32 noundef 4) #12
  %call13 = tail call fastcc i32 @xfs_check_agi_freecount(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end, label %cond.end12.cleanup126_crit_edge

cond.end12.cleanup126_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup126

if.end:                                           ; preds = %cond.end12
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call, i32 0, i32 6
  %12 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %agino, ptr %bc_rec.i, align 8
  %ir_holemask.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 1
  %13 = call ptr @memset(ptr %ir_holemask.i, i32 0, i32 12)
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %call, i32 noundef 1, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.xfs_difree_inobt, i32 noundef %call.i) #12
  br label %cleanup126

if.end18:                                         ; preds = %if.end
  %14 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp19.not = icmp eq i32 %15, 1
  br i1 %cmp19.not, label %if.end30, label %__here, !prof !154

__here:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !155
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 1924, ptr noundef blockaddress(@xfs_difree_inobt, %__here)) #12
  br label %cleanup126

if.end30:                                         ; preds = %if.end18
  %call31 = call i32 @xfs_inobt_get_rec(ptr noundef %call, ptr noundef nonnull %rec, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.xfs_difree_inobt, i32 noundef %call31) #12
  br label %cleanup126

if.end34:                                         ; preds = %if.end30
  %16 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp35.not = icmp eq i32 %17, 1
  br i1 %cmp35.not, label %if.end48, label %__here44, !prof !154

__here44:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !156
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 1934, ptr noundef blockaddress(@xfs_difree_inobt, %__here44)) #12
  br label %cleanup126

if.end48:                                         ; preds = %if.end34
  %18 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rec, align 8
  %sub = sub i32 %agino, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub)
  %cmp51 = icmp ult i32 %sub, 64
  br i1 %cmp51, label %if.end48.cond.end61_crit_edge, label %cond.false60, !prof !154

if.end48.cond.end61_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end61

cond.false60:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.6, i32 noundef 1942) #12
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false60, %if.end48.cond.end61_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %3, align 8
  %sh_prom = zext i32 %sub to i64
  %shl = shl nuw i64 1, %sh_prom
  %and = and i64 %21, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool62.not = icmp eq i64 %and, 0
  br i1 %tobool62.not, label %cond.end61.cond.end73_crit_edge, label %cond.false72, !prof !154

cond.end61.cond.end73_crit_edge:                  ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end73

cond.false72:                                     ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.6, i32 noundef 1943) #12
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false72, %cond.end61.cond.end73_crit_edge
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %3, align 8
  %or = or i64 %23, %shl
  store i64 %or, ptr %3, align 8
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %2, align 1
  %inc = add i8 %25, 1
  store i8 %inc, ptr %2, align 1
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %26 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %27, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i = icmp eq i64 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %or)
  %cmp79 = icmp eq i64 %or, -1
  %or.cond = select i1 %tobool.i, i1 %cmp79, i1 false
  br i1 %or.cond, label %land.lhs.true81, label %cond.end73.if.else_crit_edge

cond.end73.if.else_crit_edge:                     ; preds = %cond.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true81:                                  ; preds = %cond.end73
  %sb_inopblock = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 18
  %28 = ptrtoint ptr %sb_inopblock to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sb_inopblock, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %29)
  %cmp84 = icmp ult i16 %29, 65
  br i1 %cmp84, label %if.then86, label %land.lhs.true81.if.else_crit_edge

land.lhs.true81.if.else_crit_edge:                ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then86:                                        ; preds = %land.lhs.true81
  %b_pag = getelementptr inbounds %struct.xfs_buf, ptr %agbp, i32 0, i32 13
  %30 = ptrtoint ptr %b_pag to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_pag, align 8
  %32 = ptrtoint ptr %xic to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %xic, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pag_agno, align 4
  %conv88 = zext i32 %34 to i64
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 15
  %35 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %agino_log, align 8
  %sh_prom89 = zext i32 %36 to i64
  %shl90 = shl i64 %conv88, %sh_prom89
  %37 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rec, align 8
  %conv92 = zext i32 %38 to i64
  %or93 = or i64 %shl90, %conv92
  %first_ino = getelementptr inbounds %struct.xfs_icluster, ptr %xic, i32 0, i32 1
  %39 = ptrtoint ptr %first_ino to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %or93, ptr %first_ino, align 8
  %call94 = call i64 @xfs_inobt_irec_to_allocmask(ptr noundef nonnull %rec) #12
  %alloc = getelementptr inbounds %struct.xfs_icluster, ptr %xic, i32 0, i32 2
  %40 = ptrtoint ptr %alloc to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %call94, ptr %alloc, align 8
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %2, align 1
  %conv96 = zext i8 %42 to i32
  %sub97 = sub nsw i32 0, %conv96
  %agi_count = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %agi_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %agi_count, align 4
  %add.i = sub i32 %44, %conv96
  store i32 %add.i, ptr %agi_count, align 4
  %agi_freecount = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 7
  %sub99 = sub nsw i32 1, %conv96
  %45 = ptrtoint ptr %agi_freecount to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %agi_freecount, align 4
  %add.i190 = add i32 %46, %sub99
  store i32 %add.i190, ptr %agi_freecount, align 4
  call void @xfs_ialloc_log_agi(ptr noundef %tp, ptr noundef %agbp, i32 noundef 144)
  %pagi_freecount = getelementptr inbounds %struct.xfs_perag, ptr %31, i32 0, i32 13
  %47 = ptrtoint ptr %pagi_freecount to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pagi_freecount, align 4
  %sub101 = add i32 %sub99, %48
  store i32 %sub101, ptr %pagi_freecount, align 4
  %pagi_count = getelementptr inbounds %struct.xfs_perag, ptr %31, i32 0, i32 14
  %49 = ptrtoint ptr %pagi_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pagi_count, align 4
  %sub102 = sub i32 %50, %conv96
  store i32 %sub102, ptr %pagi_count, align 4
  %conv104 = sext i32 %sub97 to i64
  call void @xfs_trans_mod_sb(ptr noundef %tp, i32 noundef 1, i64 noundef %conv104) #12
  %conv107 = sext i32 %sub99 to i64
  call void @xfs_trans_mod_sb(ptr noundef %tp, i32 noundef 2, i64 noundef %conv107) #12
  %call108 = call i32 @xfs_btree_delete(ptr noundef %call, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pag_agno, align 4
  call fastcc void @xfs_difree_inode_chunk(ptr noundef %tp, i32 noundef %52, ptr noundef nonnull %rec)
  br label %if.end121

cleanup:                                          ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.xfs_difree_inobt, i32 noundef %call108) #12
  br label %cleanup126

if.else:                                          ; preds = %land.lhs.true81.if.else_crit_edge, %cond.end73.if.else_crit_edge
  %53 = ptrtoint ptr %xic to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %xic, align 8
  %call114 = call fastcc i32 @xfs_inobt_update(ptr noundef %call, ptr noundef nonnull %rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.then116

if.then116:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.xfs_difree_inobt, i32 noundef %call114) #12
  br label %cleanup126

if.end117:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %agi_freecount118 = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 7
  %54 = ptrtoint ptr %agi_freecount118 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %agi_freecount118, align 4
  %add.i191 = add i32 %55, 1
  store i32 %add.i191, ptr %agi_freecount118, align 4
  call void @xfs_ialloc_log_agi(ptr noundef %tp, ptr noundef %agbp, i32 noundef 128)
  %pagi_freecount119 = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 13
  %56 = ptrtoint ptr %pagi_freecount119 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pagi_freecount119, align 4
  %inc120 = add i32 %57, 1
  store i32 %inc120, ptr %pagi_freecount119, align 4
  call void @xfs_trans_mod_sb(ptr noundef %tp, i32 noundef 2, i64 noundef 1) #12
  br label %if.end121

if.end121:                                        ; preds = %if.end117, %cleanup.thread
  %call122 = call fastcc i32 @xfs_check_agi_freecount(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %if.end121.cleanup126_crit_edge

if.end121.cleanup126_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup126

if.end125:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  %58 = call ptr @memcpy(ptr %orec, ptr %rec, i32 16)
  br label %cleanup126

cleanup126:                                       ; preds = %if.end125, %if.end121.cleanup126_crit_edge, %if.then116, %cleanup, %__here44, %if.then33, %__here, %if.then17, %cond.end12.cleanup126_crit_edge
  %.sink = phi i32 [ 0, %if.end125 ], [ 1, %cleanup ], [ 1, %if.end121.cleanup126_crit_edge ], [ 1, %cond.end12.cleanup126_crit_edge ], [ 1, %if.then116 ], [ 1, %__here44 ], [ 1, %if.then33 ], [ 1, %__here ], [ 1, %if.then17 ]
  %retval.0 = phi i32 [ 0, %if.end125 ], [ %call108, %cleanup ], [ %call122, %if.end121.cleanup126_crit_edge ], [ %call13, %cond.end12.cleanup126_crit_edge ], [ %call114, %if.then116 ], [ -117, %__here44 ], [ %call31, %if.then33 ], [ -117, %__here ], [ %call.i, %if.then17 ]
  call void @xfs_btree_del_cursor(ptr noundef %call, i32 noundef %.sink) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_difree_finobt(ptr noundef %mp, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i32 noundef %agino, ptr nocapture noundef readonly %ibtrec) #4 align 64 {
entry:
  %rec = alloca %struct.xfs_inobt_rec_incore, align 8
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec) #12
  %0 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 3
  %1 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 4
  %2 = call ptr @memset(ptr %rec, i32 255, i32 16)
  %3 = ptrtoint ptr %ibtrec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ibtrec, align 8
  %sub = sub i32 %agino, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %5 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %i, align 4, !annotation !152
  %call = tail call ptr @xfs_inobt_init_cursor(ptr noundef %mp, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i32 noundef 5) #12
  %6 = ptrtoint ptr %ibtrec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ibtrec, align 8
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %bc_rec.i, align 8
  %ir_holemask.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 1
  %9 = call ptr @memset(ptr %ir_holemask.i, i32 0, i32 12)
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.error102_crit_edge

entry.error102_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %error102

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then3, label %if.end26

if.then3:                                         ; preds = %if.end
  %ir_freecount = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %ibtrec, i32 0, i32 3
  %12 = ptrtoint ptr %ir_freecount to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ir_freecount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp4.not = icmp eq i8 %13, 1
  br i1 %cmp4.not, label %if.end9, label %__here, !prof !154

__here:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !157
  call void @xfs_corruption_error(ptr noundef nonnull @.str.56, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 2046, ptr noundef blockaddress(@xfs_difree_finobt, %__here)) #12
  br label %error102

if.end9:                                          ; preds = %if.then3
  %ir_holemask = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %ibtrec, i32 0, i32 1
  %14 = ptrtoint ptr %ir_holemask to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ir_holemask, align 4
  %ir_count = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %ibtrec, i32 0, i32 2
  %16 = ptrtoint ptr %ir_count to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ir_count, align 2
  %ir_free = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %ibtrec, i32 0, i32 4
  %18 = ptrtoint ptr %ir_free to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ir_free, align 8
  %20 = ptrtoint ptr %ir_holemask.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %15, ptr %ir_holemask.i, align 4
  %ir_count.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 2
  %21 = ptrtoint ptr %ir_count.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %17, ptr %ir_count.i, align 2
  %ir_freecount.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 3
  %22 = ptrtoint ptr %ir_freecount.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %ir_freecount.i, align 1
  %ir_free.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call, i32 0, i32 6, i32 0, i32 1
  %23 = ptrtoint ptr %ir_free.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %19, ptr %ir_free.i, align 8
  %call.i135 = call i32 @xfs_btree_insert(ptr noundef %call, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool13.not = icmp eq i32 %call.i135, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.error102_crit_edge

if.end9.error102_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %error102

if.end15:                                         ; preds = %if.end9
  %24 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp16 = icmp eq i32 %25, 1
  br i1 %cmp16, label %if.end15.out_crit_edge, label %if.end15.out.sink.split_crit_edge, !prof !154

if.end15.out.sink.split_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end26:                                         ; preds = %if.end
  %call27 = call i32 @xfs_inobt_get_rec(ptr noundef %call, ptr noundef nonnull %rec, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.error102_crit_edge

if.end26.error102_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %error102

if.end30:                                         ; preds = %if.end26
  %26 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp31.not = icmp eq i32 %27, 1
  br i1 %cmp31.not, label %if.end44, label %__here40, !prof !154

__here40:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !158
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 2072, ptr noundef blockaddress(@xfs_difree_finobt, %__here40)) #12
  br label %error102

if.end44:                                         ; preds = %if.end30
  %sh_prom = zext i32 %sub to i64
  %shl = shl nuw i64 1, %sh_prom
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %1, align 8
  %or = or i64 %29, %shl
  store i64 %or, ptr %1, align 8
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %0, align 1
  %inc = add i8 %31, 1
  store i8 %inc, ptr %0, align 1
  %ir_free48 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %ibtrec, i32 0, i32 4
  %32 = ptrtoint ptr %ir_free48 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %ir_free48, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %or, i64 %33)
  %cmp49.not = icmp eq i64 %or, %33
  br i1 %cmp49.not, label %lor.rhs, label %if.end44.__here64_crit_edge, !prof !154

if.end44.__here64_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here64

lor.rhs:                                          ; preds = %if.end44
  %ir_freecount53 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %ibtrec, i32 0, i32 3
  %34 = ptrtoint ptr %ir_freecount53 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ir_freecount53, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %inc, i8 %35)
  %cmp55.not = icmp eq i8 %inc, %35
  br i1 %cmp55.not, label %if.end68, label %lor.rhs.__here64_crit_edge, !prof !154

lor.rhs.__here64_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here64

__here64:                                         ; preds = %lor.rhs.__here64_crit_edge, %if.end44.__here64_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !159
  call void @xfs_corruption_error(ptr noundef nonnull @.str.57, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 2082, ptr noundef blockaddress(@xfs_difree_finobt, %__here64)) #12
  br label %error102

if.end68:                                         ; preds = %lor.rhs
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %36 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %37, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i = icmp eq i64 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %or)
  %cmp71 = icmp eq i64 %or, -1
  %or.cond = select i1 %tobool.i, i1 %cmp71, i1 false
  br i1 %or.cond, label %land.lhs.true73, label %if.end68.if.else_crit_edge

if.end68.if.else_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true73:                                  ; preds = %if.end68
  %sb_inopblock = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 18
  %38 = ptrtoint ptr %sb_inopblock to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %sb_inopblock, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %39)
  %cmp75 = icmp ult i16 %39, 65
  br i1 %cmp75, label %if.then77, label %land.lhs.true73.if.else_crit_edge

land.lhs.true73.if.else_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then77:                                        ; preds = %land.lhs.true73
  %call78 = call i32 @xfs_btree_delete(ptr noundef %call, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.then77.error102_crit_edge

if.then77.error102_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  br label %error102

if.end81:                                         ; preds = %if.then77
  %40 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp82 = icmp eq i32 %41, 1
  br i1 %cmp82, label %if.end81.out_crit_edge, label %if.end81.out.sink.split_crit_edge, !prof !154

if.end81.out.sink.split_crit_edge:                ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.end81.out_crit_edge:                           ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.else:                                          ; preds = %land.lhs.true73.if.else_crit_edge, %if.end68.if.else_crit_edge
  %call93 = call fastcc i32 @xfs_inobt_update(ptr noundef %call, ptr noundef nonnull %rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.else.out_crit_edge, label %if.else.error102_crit_edge

if.else.error102_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %error102

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out.sink.split:                                   ; preds = %if.end81.out.sink.split_crit_edge, %if.end15.out.sink.split_crit_edge
  %.sink = phi i32 [ 2057, %if.end15.out.sink.split_crit_edge ], [ 2104, %if.end81.out.sink.split_crit_edge ]
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.6, i32 noundef %.sink) #12
  br label %out

out:                                              ; preds = %out.sink.split, %if.else.out_crit_edge, %if.end81.out_crit_edge, %if.end15.out_crit_edge
  %call98 = call fastcc i32 @xfs_check_agi_freecount(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %out.cleanup_crit_edge, label %out.error102_crit_edge

out.error102_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %error102

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

error102:                                         ; preds = %out.error102_crit_edge, %if.else.error102_crit_edge, %if.then77.error102_crit_edge, %__here64, %__here40, %if.end26.error102_crit_edge, %if.end9.error102_crit_edge, %__here, %entry.error102_crit_edge
  %error.0 = phi i32 [ %call.i, %entry.error102_crit_edge ], [ -117, %__here ], [ %call.i135, %if.end9.error102_crit_edge ], [ %call98, %out.error102_crit_edge ], [ %call27, %if.end26.error102_crit_edge ], [ -117, %__here40 ], [ -117, %__here64 ], [ %call93, %if.else.error102_crit_edge ], [ %call78, %if.then77.error102_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %error102, %out.cleanup_crit_edge
  %.sink136 = phi i32 [ 1, %error102 ], [ 0, %out.cleanup_crit_edge ]
  %retval.0 = phi i32 [ %error.0, %error102 ], [ 0, %out.cleanup_crit_edge ]
  call void @xfs_btree_del_cursor(ptr noundef %call, i32 noundef %.sink136) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_imap(ptr noundef %mp, ptr noundef %tp, i64 noundef %ino, ptr nocapture noundef %imap, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %chunk_agbno = alloca i32, align 4
  %offset_agbno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chunk_agbno) #12
  %0 = ptrtoint ptr %chunk_agbno to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %chunk_agbno, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset_agbno) #12
  %1 = ptrtoint ptr %offset_agbno to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %offset_agbno, align 4, !annotation !152
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %ino)
  %cmp.not = icmp eq i64 %ino, -1
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !153

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, i32 noundef 2281) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 15
  %2 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %3 to i64
  %shr = lshr i64 %ino, %sh_prom
  %conv = trunc i64 %shr to i32
  %call = tail call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef %conv) #12
  %conv2 = trunc i64 %ino to i32
  %4 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %agino_log, align 8
  %sh_prom5 = zext i32 %5 to i64
  %notmask = shl nsw i64 -1, %sh_prom5
  %6 = trunc i64 %notmask to i32
  %conv6 = xor i32 %6, -1
  %and = and i32 %conv6, %conv2
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 23
  %7 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sb_inopblog, align 1
  %conv7 = zext i8 %8 to i32
  %shr8 = lshr i32 %and, %conv7
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %if.then.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %9 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_agblocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr8, i32 %10)
  %cmp11.not = icmp ult i32 %shr8, %10
  br i1 %cmp11.not, label %lor.lhs.false13, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pag_agno, align 4
  %conv14 = zext i32 %12 to i64
  %shl18 = shl i64 %conv14, %sh_prom5
  %conv19 = zext i32 %and to i64
  %or = or i64 %shl18, %conv19
  call void @__sanitizer_cov_trace_cmp8(i64 %or, i64 %ino)
  %cmp20.not = icmp eq i64 %or, %ino
  br i1 %cmp20.not, label %if.end64, label %lor.lhs.false13.if.then_crit_edge

lor.lhs.false13.if.then_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false13.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge
  %and22 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then.if.end33_crit_edge, label %if.then.if.then210_crit_edge

if.then.if.then210_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then210

if.then.if.end33_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then.thread:                                   ; preds = %cond.end
  %and22305 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22305)
  %tobool23.not306 = icmp eq i32 %and22305, 0
  br i1 %tobool23.not306, label %if.then26, label %if.then.thread.if.end211_crit_edge

if.then.thread.if.end211_crit_edge:               ; preds = %if.then.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end211

if.then26:                                        ; preds = %if.then.thread
  call void @__sanitizer_cov_trace_pc() #14
  %shr30 = lshr i64 %ino, %sh_prom5
  %conv31 = trunc i64 %shr30 to i32
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %13 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sb_agcount, align 8
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.xfs_imap, i32 noundef %conv31, i32 noundef %14) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %if.then.if.end33_crit_edge
  %sb_agblocks35 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %15 = ptrtoint ptr %sb_agblocks35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_agblocks35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr8, i32 %16)
  %cmp36.not = icmp ult i32 %shr8, %16
  br i1 %cmp36.not, label %if.end33.if.end42_crit_edge, label %if.then38

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %conv39 = zext i32 %shr8 to i64
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.xfs_imap, i64 noundef %conv39, i32 noundef %16) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end33.if.end42_crit_edge
  br i1 %tobool9.not, label %if.end211.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end42
  %pag_agno44 = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %pag_agno44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pag_agno44, align 4
  %conv45 = zext i32 %18 to i64
  %19 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %agino_log, align 8
  %sh_prom48 = zext i32 %20 to i64
  %shl49 = shl i64 %conv45, %sh_prom48
  %conv50 = zext i32 %and to i64
  %or51 = or i64 %shl49, %conv50
  call void @__sanitizer_cov_trace_cmp8(i64 %or51, i64 %ino)
  %cmp52.not = icmp eq i64 %or51, %ino
  br i1 %cmp52.not, label %if.then210.critedge313, label %if.then54

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.xfs_imap, i64 noundef %ino, i64 noundef %or51) #12
  tail call void @dump_stack() #15
  br label %if.then210

if.end64:                                         ; preds = %lor.lhs.false13
  %and65 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end72, label %if.then67

if.then67:                                        ; preds = %if.end64
  %call68 = call fastcc i32 @xfs_imap_lookup(ptr noundef %mp, ptr noundef %tp, ptr noundef nonnull %call, i32 noundef %and, i32 noundef %shr8, ptr noundef nonnull %chunk_agbno, ptr noundef nonnull %offset_agbno, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then67.out_map_crit_edge, label %if.then67.if.then210_crit_edge

if.then67.if.then210_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then210

if.then67.out_map_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_map

if.end72:                                         ; preds = %if.end64
  %blocks_per_cluster = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 4
  %21 = ptrtoint ptr %blocks_per_cluster to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %blocks_per_cluster, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp74 = icmp eq i32 %22, 1
  br i1 %cmp74, label %if.then76, label %if.end116

if.then76:                                        ; preds = %if.end72
  %sh_prom81 = zext i8 %8 to i64
  %notmask304 = shl nsw i64 -1, %sh_prom81
  %23 = trunc i64 %notmask304 to i32
  %conv84 = xor i32 %23, -1
  %and85 = and i32 %conv84, %conv2
  %sb_inopblock = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 18
  %24 = ptrtoint ptr %sb_inopblock to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sb_inopblock, align 2
  %conv87 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and85, i32 %conv87)
  %cmp88 = icmp slt i32 %and85, %conv87
  br i1 %cmp88, label %if.then76.cond.end98_crit_edge, label %cond.false97, !prof !154

if.then76.cond.end98_crit_edge:                   ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end98

cond.false97:                                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.6, i32 noundef 2343) #12
  br label %cond.end98

cond.end98:                                       ; preds = %cond.false97, %if.then76.cond.end98_crit_edge
  %26 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pag_agno, align 4
  %conv100 = zext i32 %27 to i64
  %28 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sb_agblocks, align 4
  %conv103 = zext i32 %29 to i64
  %mul = mul nuw i64 %conv103, %conv100
  %conv104 = zext i32 %shr8 to i64
  %add = add nuw i64 %mul, %conv104
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %30 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom106 = zext i8 %31 to i64
  %shl107 = shl i64 %add, %sh_prom106
  %32 = ptrtoint ptr %imap to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %shl107, ptr %imap, align 8
  %33 = load i8, ptr %m_blkbb_log, align 1
  %conv109 = zext i8 %33 to i32
  %shl110 = shl nuw i32 1, %conv109
  %conv111 = trunc i32 %shl110 to i16
  %im_len = getelementptr inbounds %struct.xfs_imap, ptr %imap, i32 0, i32 1
  %34 = ptrtoint ptr %im_len to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv111, ptr %im_len, align 8
  %sb_inodelog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 22
  %35 = ptrtoint ptr %sb_inodelog to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sb_inodelog, align 2
  %conv113 = zext i8 %36 to i32
  %shl114 = shl i32 %and85, %conv113
  %conv115 = trunc i32 %shl114 to i16
  %im_boffset = getelementptr inbounds %struct.xfs_imap, ptr %imap, i32 0, i32 2
  %37 = ptrtoint ptr %im_boffset to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv115, ptr %im_boffset, align 2
  br label %if.then210

if.end116:                                        ; preds = %if.end72
  %inoalign_mask = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 7
  %38 = ptrtoint ptr %inoalign_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %inoalign_mask, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool118.not = icmp eq i32 %39, 0
  br i1 %tobool118.not, label %if.else, label %if.then119

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  %and122 = and i32 %39, %shr8
  %40 = ptrtoint ptr %offset_agbno to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and122, ptr %offset_agbno, align 4
  %sub123 = sub i32 %shr8, %and122
  %41 = ptrtoint ptr %chunk_agbno to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub123, ptr %chunk_agbno, align 4
  br label %out_map

if.else:                                          ; preds = %if.end116
  %call124 = call fastcc i32 @xfs_imap_lookup(ptr noundef %mp, ptr noundef %tp, ptr noundef nonnull %call, i32 noundef %and, i32 noundef %shr8, ptr noundef nonnull %chunk_agbno, ptr noundef nonnull %offset_agbno, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.else.out_map_crit_edge, label %if.else.if.then210_crit_edge

if.else.if.then210_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then210

if.else.out_map_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_map

out_map:                                          ; preds = %if.else.out_map_crit_edge, %if.then119, %if.then67.out_map_crit_edge
  %42 = ptrtoint ptr %chunk_agbno to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chunk_agbno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr8, i32 %43)
  %cmp129.not = icmp ult i32 %shr8, %43
  br i1 %cmp129.not, label %cond.false138, label %out_map.cond.end139_crit_edge, !prof !153

out_map.cond.end139_crit_edge:                    ; preds = %out_map
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end139

cond.false138:                                    ; preds = %out_map
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.6, i32 noundef 2369) #12
  br label %cond.end139

cond.end139:                                      ; preds = %cond.false138, %out_map.cond.end139_crit_edge
  %44 = ptrtoint ptr %offset_agbno to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset_agbno, align 4
  %blocks_per_cluster141 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 4
  %46 = ptrtoint ptr %blocks_per_cluster141 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %blocks_per_cluster141, align 4
  %48 = urem i32 %45, %47
  %mul144 = sub i32 %45, %48
  %add145 = add i32 %mul144, %43
  %sub146 = sub i32 %shr8, %add145
  %sb_inopblock148 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 18
  %49 = ptrtoint ptr %sb_inopblock148 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sb_inopblock148, align 2
  %conv149 = zext i16 %50 to i32
  %mul150 = mul i32 %sub146, %conv149
  %51 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sb_inopblog, align 1
  %sh_prom155 = zext i8 %52 to i64
  %notmask303 = shl nsw i64 -1, %sh_prom155
  %53 = trunc i64 %notmask303 to i32
  %conv158 = xor i32 %53, -1
  %and159 = and i32 %conv158, %conv2
  %add160 = add i32 %and159, %mul150
  %54 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pag_agno, align 4
  %conv162 = zext i32 %55 to i64
  %56 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sb_agblocks, align 4
  %conv165 = zext i32 %57 to i64
  %mul166 = mul nuw i64 %conv165, %conv162
  %conv167 = zext i32 %add145 to i64
  %add168 = add nuw i64 %mul166, %conv167
  %m_blkbb_log169 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %58 = ptrtoint ptr %m_blkbb_log169 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %m_blkbb_log169, align 1
  %sh_prom171 = zext i8 %59 to i64
  %shl172 = shl i64 %add168, %sh_prom171
  %60 = ptrtoint ptr %imap to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %shl172, ptr %imap, align 8
  %61 = load i32, ptr %blocks_per_cluster141, align 4
  %62 = load i8, ptr %m_blkbb_log169, align 1
  %conv177 = zext i8 %62 to i32
  %shl178 = shl i32 %61, %conv177
  %conv179 = trunc i32 %shl178 to i16
  %im_len180 = getelementptr inbounds %struct.xfs_imap, ptr %imap, i32 0, i32 1
  %63 = ptrtoint ptr %im_len180 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv179, ptr %im_len180, align 8
  %sb_inodelog182 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 22
  %64 = ptrtoint ptr %sb_inodelog182 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %sb_inodelog182, align 2
  %conv183 = zext i8 %65 to i32
  %shl184 = shl i32 %add160, %conv183
  %conv185 = trunc i32 %shl184 to i16
  %im_boffset186 = getelementptr inbounds %struct.xfs_imap, ptr %imap, i32 0, i32 2
  %66 = ptrtoint ptr %im_boffset186 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv185, ptr %im_boffset186, align 2
  %conv179.mask = and i32 %shl178, 65535
  %conv189 = zext i32 %conv179.mask to i64
  %add190 = add i64 %shl172, %conv189
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %67 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %sb_dblocks, align 8
  %69 = load i8, ptr %m_blkbb_log169, align 1
  %sh_prom194 = zext i8 %69 to i64
  %shl195 = shl i64 %68, %sh_prom194
  call void @__sanitizer_cov_trace_cmp8(i64 %add190, i64 %shl195)
  %cmp196 = icmp ugt i64 %add190, %shl195
  br i1 %cmp196, label %if.then198, label %cond.end139.if.then210_crit_edge

cond.end139.if.then210_crit_edge:                 ; preds = %cond.end139
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then210

if.then198:                                       ; preds = %cond.end139
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.xfs_imap, i64 noundef %shl172, i64 noundef %conv189, i64 noundef %shl195) #12
  br label %if.then210

if.then210.critedge313:                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_stack() #15
  br label %if.then210

if.then210:                                       ; preds = %if.then210.critedge313, %if.then198, %cond.end139.if.then210_crit_edge, %if.else.if.then210_crit_edge, %cond.end98, %if.then67.if.then210_crit_edge, %if.then54, %if.then.if.then210_crit_edge
  %error.0308 = phi i32 [ 0, %cond.end139.if.then210_crit_edge ], [ %call124, %if.else.if.then210_crit_edge ], [ 0, %cond.end98 ], [ -22, %if.then198 ], [ %call68, %if.then67.if.then210_crit_edge ], [ -22, %if.then54 ], [ -22, %if.then210.critedge313 ], [ -22, %if.then.if.then210_crit_edge ]
  tail call void @xfs_perag_put(ptr noundef nonnull %call) #12
  br label %if.end211

if.end211.critedge:                               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_stack() #15
  br label %if.end211

if.end211:                                        ; preds = %if.end211.critedge, %if.then210, %if.then.thread.if.end211_crit_edge
  %error.0309 = phi i32 [ %error.0308, %if.then210 ], [ -22, %if.then.thread.if.end211_crit_edge ], [ -22, %if.end211.critedge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset_agbno) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chunk_agbno) #12
  ret i32 %error.0309
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_imap_lookup(ptr noundef %mp, ptr noundef %tp, ptr noundef %pag, i32 noundef %agino, i32 noundef %agbno, ptr nocapture noundef writeonly %chunk_agbno, ptr nocapture noundef writeonly %offset_agbno, i32 noundef %flags) unnamed_addr #4 align 64 {
entry:
  %rec = alloca %struct.xfs_inobt_rec_incore, align 8
  %agbp = alloca ptr, align 4
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec) #12
  %0 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 4
  %1 = call ptr @memset(ptr %rec, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agbp) #12
  %2 = ptrtoint ptr %agbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %agbp, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %3 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %i, align 4, !annotation !152
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %4 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_ialloc_read_agi(ptr noundef %mp, i32 noundef %5) #12
  %call.i = call i32 @xfs_read_agi(ptr noundef %mp, ptr noundef %tp, i32 noundef %5, ptr noundef nonnull %agbp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %agbp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %agbp, align 4
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_addr.i, align 4
  %b_pag.i = getelementptr inbounds %struct.xfs_buf, ptr %7, i32 0, i32 13
  %10 = ptrtoint ptr %b_pag.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_pag.i, align 8
  %pagi_init.i = getelementptr inbounds %struct.xfs_perag, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %pagi_init.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pagi_init.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %agi_freecount.i = getelementptr inbounds %struct.xfs_agi, ptr %9, i32 0, i32 7
  %14 = ptrtoint ptr %agi_freecount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %agi_freecount.i, align 4
  %pagi_freecount.i = getelementptr inbounds %struct.xfs_perag, ptr %11, i32 0, i32 13
  %16 = ptrtoint ptr %pagi_freecount.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pagi_freecount.i, align 4
  %agi_count.i = getelementptr inbounds %struct.xfs_agi, ptr %9, i32 0, i32 4
  %17 = ptrtoint ptr %agi_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %agi_count.i, align 8
  %pagi_count.i = getelementptr inbounds %struct.xfs_perag, ptr %11, i32 0, i32 14
  %19 = ptrtoint ptr %pagi_count.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pagi_count.i, align 4
  %20 = ptrtoint ptr %pagi_init.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %pagi_init.i, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %pagi_freecount5.i = getelementptr inbounds %struct.xfs_perag, ptr %11, i32 0, i32 13
  %21 = ptrtoint ptr %pagi_freecount5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pagi_freecount5.i, align 4
  %agi_freecount6.i = getelementptr inbounds %struct.xfs_agi, ptr %9, i32 0, i32 7
  %23 = ptrtoint ptr %agi_freecount6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %agi_freecount6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.i = icmp eq i32 %22, %24
  br i1 %cmp.i, label %if.end4.i.if.end_crit_edge, label %lor.rhs.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.rhs.i:                                        ; preds = %if.end4.i
  %m_opstate.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %25 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %m_opstate.i.i, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i = icmp eq i32 %27, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %lor.rhs.i.if.end_crit_edge, !prof !153

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cond.false.i:                                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.6, i32 noundef 2626) #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pag_agno, align 4
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.xfs_imap_lookup, i32 noundef %call.i, i32 noundef %29) #12
  br label %cleanup

if.end:                                           ; preds = %cond.false.i, %lor.rhs.i.if.end_crit_edge, %if.end4.i.if.end_crit_edge
  %30 = ptrtoint ptr %agbp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %agbp, align 4
  %call2 = call ptr @xfs_inobt_init_cursor(ptr noundef %mp, ptr noundef %tp, ptr noundef %31, ptr noundef %pag, i32 noundef 4) #12
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call2, i32 0, i32 6
  %32 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %agino, ptr %bc_rec.i, align 8
  %ir_holemask.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 1
  %33 = call ptr @memset(ptr %ir_holemask.i, i32 0, i32 12)
  %call.i56 = call i32 @xfs_btree_lookup(ptr noundef %call2, i32 noundef 1, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool4.not = icmp eq i32 %call.i56, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then5:                                         ; preds = %if.end
  %34 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool6.not = icmp eq i32 %35, 0
  br i1 %tobool6.not, label %if.then5.select.unfold_crit_edge, label %if.end9

if.then5.select.unfold_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %select.unfold

if.end9:                                          ; preds = %if.then5
  %call8 = call i32 @xfs_inobt_get_rec(ptr noundef %call2, ptr noundef nonnull %rec, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end9
  %36 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp = icmp eq i32 %.pr, 0
  br i1 %cmp, label %land.lhs.true.select.unfold_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true.select.unfold_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %select.unfold

select.unfold:                                    ; preds = %land.lhs.true.select.unfold_crit_edge, %if.then5.select.unfold_crit_edge
  br label %if.end13

if.end13:                                         ; preds = %select.unfold, %land.lhs.true.if.end13_crit_edge, %if.end9.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %error.1 = phi i32 [ %call.i56, %if.end.if.end13_crit_edge ], [ %call8, %if.end9.if.end13_crit_edge ], [ 0, %land.lhs.true.if.end13_crit_edge ], [ -22, %select.unfold ]
  %37 = ptrtoint ptr %agbp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %agbp, align 4
  call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %38) #12
  call void @xfs_btree_del_cursor(ptr noundef %call2, i32 noundef %error.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool14.not = icmp eq i32 %error.1, 0
  br i1 %tobool14.not, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %39 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rec, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %agino)
  %cmp17 = icmp ugt i32 %40, %agino
  br i1 %cmp17, label %if.end16.cleanup_crit_edge, label %lor.lhs.false

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end16
  %ialloc_inos = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 11
  %41 = ptrtoint ptr %ialloc_inos to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ialloc_inos, align 8
  %add = add i32 %42, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %agino)
  %cmp19.not = icmp ugt i32 %add, %agino
  br i1 %cmp19.not, label %if.end21, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end21.if.end28_crit_edge, label %land.lhs.true23

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.lhs.true23:                                  ; preds = %if.end21
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %0, align 8
  %sub = sub i32 %agino, %40
  %sh_prom = zext i32 %sub to i64
  %shl = shl nuw i64 1, %sh_prom
  %and25 = and i64 %44, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25)
  %tobool26.not = icmp eq i64 %and25, 0
  br i1 %tobool26.not, label %land.lhs.true23.if.end28_crit_edge, label %land.lhs.true23.cleanup_crit_edge

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true23.if.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true23.if.end28_crit_edge, %if.end21.if.end28_crit_edge
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 23
  %45 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sb_inopblog, align 1
  %conv = zext i8 %46 to i32
  %shr = lshr i32 %40, %conv
  %47 = ptrtoint ptr %chunk_agbno to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shr, ptr %chunk_agbno, align 4
  %sub30 = sub i32 %agbno, %shr
  %48 = ptrtoint ptr %offset_agbno to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub30, ptr %offset_agbno, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %land.lhs.true23.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %if.end28 ], [ %error.1, %if.end13.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %land.lhs.true23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agbp) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_ialloc_log_agi(ptr noundef %tp, ptr noundef %bp, i32 noundef %fields) local_unnamed_addr #0 align 64 {
entry:
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first) #12
  %0 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %first, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last) #12
  %1 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %last, align 4, !annotation !152
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480673097, i32 %5)
  %cmp = icmp eq i32 %5, 1480673097
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !154

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6, i32 noundef 2444) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %and = and i32 %fields, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv = sext i32 %fields to i64
  call void @xfs_btree_offsets(i64 noundef %conv, ptr noundef nonnull @xfs_ialloc_log_agi.offsets, i32 noundef 11, ptr noundef nonnull %first, ptr noundef nonnull %last) #12
  %6 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first, align 4
  %8 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last, align 4
  call void @xfs_trans_log_buf(ptr noundef %tp, ptr noundef %bp, i32 noundef %7, i32 noundef %9) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %and3 = and i32 %fields, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv6 = sext i32 %and3 to i64
  call void @xfs_btree_offsets(i64 noundef %conv6, ptr noundef nonnull @xfs_ialloc_log_agi.offsets, i32 noundef 14, ptr noundef nonnull %first, ptr noundef nonnull %last) #12
  %10 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %first, align 4
  %12 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last, align 4
  call void @xfs_trans_log_buf(ptr noundef %tp, ptr noundef %bp, i32 noundef %11, i32 noundef %13) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_offsets(i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_agi_read_verify(ptr noundef %bp) #0 align 64 {
entry:
  %zero.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %4 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_addr.i, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %6 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %7, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero.i.i.i) #12
  %8 = ptrtoint ptr %zero.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %zero.i.i.i, align 4
  %call.i.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %5, i32 noundef 312) #12
  %call1.i.i.i = call i32 @crc32c(i32 noundef %call.i.i.i, ptr noundef nonnull %zero.i.i.i, i32 noundef 4) #12
  %arrayidx.i.i.i = getelementptr i8, ptr %5, i32 316
  %sub.i.i.i = add i32 %shl.i, -316
  %call3.i.i.i = call i32 @crc32c(i32 noundef %call1.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef %sub.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero.i.i.i) #12
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 312
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %11 = xor i32 %call3.i.i.i, -1
  %12 = call i32 @llvm.bswap.i32(i32 %11) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i.i.not = icmp eq i32 %10, %12
  br i1 %cmp.i.i.not, label %land.lhs.true.if.else_crit_edge, label %__here

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

__here:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -74, ptr noundef blockaddress(@xfs_agi_read_verify, %__here)) #12
  br label %if.end6

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call2 = call ptr @xfs_agi_verify(ptr noundef %bp)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %lor.lhs.false, label %if.else.if.then5_crit_edge

if.else.if.then5_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.else
  %call4 = call zeroext i1 @xfs_errortag_test(ptr noundef %1, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.6, i32 noundef 2533, i32 noundef 11) #12
  br i1 %call4, label %lor.lhs.false.if.then5_crit_edge, label %lor.lhs.false.if.end6_crit_edge

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.else.if.then5_crit_edge
  call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef %call2) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %lor.lhs.false.if.end6_crit_edge, %__here
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_agi_write_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_log_item, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %4 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_addr, align 4
  %call = tail call ptr @xfs_agi_verify(ptr noundef %bp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %li_lsn = getelementptr inbounds %struct.xfs_log_item, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %li_lsn, align 8
  %agi_lsn = getelementptr inbounds %struct.xfs_agi, ptr %5, i32 0, i32 14
  %10 = ptrtoint ptr %agi_lsn to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %agi_lsn, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %11 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_addr, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %13 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %14, 9
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 312
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %add.ptr.i.i.i, align 4
  %call.i.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %12, i32 noundef %shl.i) #12
  %16 = xor i32 %call.i.i.i, -1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %add.ptr.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_agi_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %entry
  %agi_uuid = getelementptr inbounds %struct.xfs_agi, ptr %3, i32 0, i32 11
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 54
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %agi_uuid, ptr noundef dereferenceable(16) %sb_meta_uuid, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end, label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  br label %cleanup

if.end:                                           ; preds = %if.then
  %agi_lsn = getelementptr inbounds %struct.xfs_agi, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %agi_lsn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %agi_lsn, align 8
  %call3 = tail call zeroext i1 @xfs_log_check_lsn(ptr noundef %1, i64 noundef %7) #12
  br i1 %call3, label %if.end.if.end8_crit_edge, label %__here5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

__here5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !162
  br label %cleanup

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 8
  %call9 = tail call zeroext i1 @xfs_verify_magic(ptr noundef %bp, i32 noundef %9) #12
  br i1 %call9, label %if.end13, label %__here11

__here11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !163
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %agi_versionnum = getelementptr inbounds %struct.xfs_agi, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %agi_versionnum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %agi_versionnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.end17, label %__here15

__here15:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !164
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %agi_level = getelementptr inbounds %struct.xfs_agi, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %agi_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %agi_level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp18 = icmp eq i32 %13, 0
  br i1 %cmp18, label %if.end17.__here22_crit_edge, label %lor.lhs.false

if.end17.__here22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here22

lor.lhs.false:                                    ; preds = %if.end17
  %inobt_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 10
  %14 = ptrtoint ptr %inobt_maxlevels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inobt_maxlevels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp20 = icmp ugt i32 %13, %15
  br i1 %cmp20, label %lor.lhs.false.__here22_crit_edge, label %if.end24

lor.lhs.false.__here22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here22

__here22:                                         ; preds = %lor.lhs.false.__here22_crit_edge, %if.end17.__here22_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !165
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %m_features.i, align 8
  %and.i83 = and i64 %17, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i83)
  %tobool.i84.not = icmp eq i64 %and.i83, 0
  br i1 %tobool.i84.not, label %if.end24.if.end35_crit_edge, label %land.lhs.true

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end24
  %agi_free_level = getelementptr inbounds %struct.xfs_agi, ptr %3, i32 0, i32 16
  %18 = ptrtoint ptr %agi_free_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %agi_free_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp26 = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %15)
  %cmp31 = icmp ugt i32 %19, %15
  %or.cond = select i1 %cmp26, i1 true, i1 %cmp31
  br i1 %or.cond, label %__here33, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

__here33:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !166
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.end24.if.end35_crit_edge
  %b_pag = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 13
  %20 = ptrtoint ptr %b_pag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_pag, align 8
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.end35.for.body.preheader_crit_edge, label %land.lhs.true36

if.end35.for.body.preheader_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

for.body.preheader:                               ; preds = %land.lhs.true36.for.body.preheader_crit_edge, %if.end35.for.body.preheader_crit_edge
  br label %for.body

land.lhs.true36:                                  ; preds = %if.end35
  %agi_seqno = getelementptr inbounds %struct.xfs_agi, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %agi_seqno to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %agi_seqno, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pag_agno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp38.not = icmp eq i32 %23, %25
  br i1 %cmp38.not, label %land.lhs.true36.for.body.preheader_crit_edge, label %__here40

land.lhs.true36.for.body.preheader_crit_edge:     ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

__here40:                                         ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !167
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.085 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.xfs_agi, ptr %3, i32 0, i32 10, i32 %i.085
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp44 = icmp eq i32 %27, -1
  br i1 %cmp44, label %for.body.for.inc_crit_edge, label %if.end46

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end46:                                         ; preds = %for.body
  %conv = zext i32 %27 to i64
  %call49 = tail call zeroext i1 @xfs_verify_ino(ptr noundef %1, i64 noundef %conv) #12
  br i1 %call49, label %if.end46.for.inc_crit_edge, label %__here51

if.end46.for.inc_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

__here51:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !168
  br label %cleanup

for.inc:                                          ; preds = %if.end46.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %__here51, %__here40, %__here33, %__here22, %__here15, %__here11, %__here5, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_agi_verify, %__here22), %__here22 ], [ blockaddress(@xfs_agi_verify, %__here33), %__here33 ], [ blockaddress(@xfs_agi_verify, %__here40), %__here40 ], [ blockaddress(@xfs_agi_verify, %__here51), %__here51 ], [ blockaddress(@xfs_agi_verify, %__here15), %__here15 ], [ blockaddress(@xfs_agi_verify, %__here11), %__here11 ], [ blockaddress(@xfs_agi_verify, %__here5), %__here5 ], [ blockaddress(@xfs_agi_verify, %__here), %__here ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_read_agi(ptr noundef %mp, ptr noundef %tp, i32 noundef %agno, ptr noundef %bpp) local_unnamed_addr #0 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xfs_read_agi(ptr noundef %mp, i32 noundef %agno)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %agno)
  %cmp.not = icmp eq i32 %agno, -1
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !153

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.6, i32 noundef 2583) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %0 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_ddev_targp, align 8
  %conv = zext i32 %agno to i64
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %2 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_agblocks, align 4
  %conv2 = zext i32 %3 to i64
  %mul = mul nuw i64 %conv2, %conv
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %4 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %5 to i64
  %shl = shl i64 %mul, %sh_prom
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %6 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %m_sectbb_log, align 1
  %conv4 = zext i8 %7 to i32
  %shl5 = shl i32 2, %conv4
  %conv6 = sext i32 %shl5 to i64
  %add7 = add i64 %shl, %conv6
  %shl10 = shl nuw i32 1, %conv4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #12
  %8 = getelementptr inbounds i8, ptr %map.i, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %8, align 8
  %10 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add7, ptr %map.i, align 8
  store i32 %shl10, ptr %8, align 8
  %call.i = call i32 @xfs_trans_read_buf_map(ptr noundef %mp, ptr noundef %tp, ptr noundef %1, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef %bpp, ptr noundef nonnull @xfs_agi_buf_ops) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %tobool12.not = icmp eq ptr %tp, null
  br i1 %tobool12.not, label %if.end.if.end14_crit_edge, label %if.then13

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bpp, align 4
  call void @xfs_trans_buf_set_type(ptr noundef nonnull %tp, ptr noundef %12, i32 noundef 7) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  %13 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bpp, align 4
  call void @xfs_buf_set_ref(ptr noundef %14, i32 noundef 4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %cond.end.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_read_agi(ptr noundef %mp, i32 noundef %agno) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_read_agi, i32 0, i32 1), ptr blockaddress(@trace_xfs_read_agi, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !169

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !142) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !154

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !142) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !170
  %call42 = tail call i32 @__traceiter_xfs_read_agi(ptr noundef null, ptr noundef %mp, i32 noundef %agno) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !171
  %13 = tail call i32 @llvm.read_register.i32(metadata !142) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !142) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !154

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !142) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_read_agi, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_read_agi, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_read_agi.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_read_agi.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 295, ptr noundef nonnull @.str.32) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !173
  %31 = tail call i32 @llvm.read_register.i32(metadata !142) #12
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
declare dso_local void @xfs_trans_buf_set_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_set_ref(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_ialloc_read_agi(ptr noundef %mp, i32 noundef %agno) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ialloc_read_agi, i32 0, i32 1), ptr blockaddress(@trace_xfs_ialloc_read_agi, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !169

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !142) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !154

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !142) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  %call42 = tail call i32 @__traceiter_xfs_ialloc_read_agi(ptr noundef null, ptr noundef %mp, i32 noundef %agno) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %13 = tail call i32 @llvm.read_register.i32(metadata !142) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !142) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !154

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !142) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ialloc_read_agi, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ialloc_read_agi, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_ialloc_read_agi.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_ialloc_read_agi.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 296, ptr noundef nonnull @.str.32) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !173
  %31 = tail call i32 @llvm.read_register.i32(metadata !142) #12
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
define dso_local i32 @xfs_ialloc_pagi_init(ptr noundef %mp, ptr noundef %tp, i32 noundef %agno) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #12
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bp, align 4
  tail call fastcc void @trace_xfs_ialloc_read_agi(ptr noundef %mp, i32 noundef %agno) #12
  %call.i = call i32 @xfs_read_agi(ptr noundef %mp, ptr noundef %tp, i32 noundef %agno, ptr noundef nonnull %bp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bp, align 4
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_addr.i, align 4
  %b_pag.i = getelementptr inbounds %struct.xfs_buf, ptr %2, i32 0, i32 13
  %5 = ptrtoint ptr %b_pag.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_pag.i, align 8
  %pagi_init.i = getelementptr inbounds %struct.xfs_perag, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %pagi_init.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pagi_init.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %agi_freecount.i = getelementptr inbounds %struct.xfs_agi, ptr %4, i32 0, i32 7
  %9 = ptrtoint ptr %agi_freecount.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %agi_freecount.i, align 4
  %pagi_freecount.i = getelementptr inbounds %struct.xfs_perag, ptr %6, i32 0, i32 13
  %11 = ptrtoint ptr %pagi_freecount.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pagi_freecount.i, align 4
  %agi_count.i = getelementptr inbounds %struct.xfs_agi, ptr %4, i32 0, i32 4
  %12 = ptrtoint ptr %agi_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %agi_count.i, align 8
  %pagi_count.i = getelementptr inbounds %struct.xfs_perag, ptr %6, i32 0, i32 14
  %14 = ptrtoint ptr %pagi_count.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pagi_count.i, align 4
  %15 = ptrtoint ptr %pagi_init.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %pagi_init.i, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %pagi_freecount5.i = getelementptr inbounds %struct.xfs_perag, ptr %6, i32 0, i32 13
  %16 = ptrtoint ptr %pagi_freecount5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pagi_freecount5.i, align 4
  %agi_freecount6.i = getelementptr inbounds %struct.xfs_agi, ptr %4, i32 0, i32 7
  %18 = ptrtoint ptr %agi_freecount6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %agi_freecount6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.i = icmp eq i32 %17, %19
  br i1 %cmp.i, label %if.end4.i.if.end_crit_edge, label %lor.rhs.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.rhs.i:                                        ; preds = %if.end4.i
  %m_opstate.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %20 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %m_opstate.i.i, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %lor.rhs.i.if.end_crit_edge, !prof !153

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cond.false.i:                                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.6, i32 noundef 2626) #12
  br label %if.end

if.end:                                           ; preds = %cond.false.i, %lor.rhs.i.if.end_crit_edge, %if.end4.i.if.end_crit_edge
  %23 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bp, align 4
  %tobool1.not = icmp eq ptr %24, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef nonnull %24) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #12
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ialloc_has_inode_record(ptr noundef %cur, i32 noundef %low, i32 noundef %high, ptr nocapture noundef writeonly %exists) local_unnamed_addr #0 align 64 {
entry:
  %irec = alloca %struct.xfs_inobt_rec_incore, align 8
  %has_record = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %irec) #12
  %0 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 1
  %1 = call ptr @memset(ptr %irec, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %has_record) #12
  %2 = ptrtoint ptr %has_record to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %has_record, align 4, !annotation !152
  %3 = ptrtoint ptr %exists to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %exists, align 1
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %4 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %low, ptr %bc_rec.i, align 8
  %ir_holemask.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 1
  %5 = call ptr @memset(ptr %ir_holemask.i, i32 0, i32 12)
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 1, ptr noundef nonnull %has_record) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp39 = icmp eq i32 %call.i, 0
  br i1 %cmp39, label %entry.land.rhs_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.end.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %6 = ptrtoint ptr %has_record to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %has_record, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %call1 = call i32 @xfs_inobt_get_rec(ptr noundef %cur, ptr noundef nonnull %irec, ptr noundef nonnull %has_record)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %while.body
  %8 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irec, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %high)
  %cmp3 = icmp ugt i32 %9, %high
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %0, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.038 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %holemask.037 = phi i16 [ %11, %if.end ], [ %14, %for.inc.for.body_crit_edge ]
  %agino.036 = phi i32 [ %9, %if.end ], [ %add, %for.inc.for.body_crit_edge ]
  %12 = and i16 %holemask.037, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool6.not = icmp ne i16 %12, 0
  %add = add i32 %agino.036, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %low)
  %cmp9 = icmp ule i32 %add, %low
  %or.cond = select i1 %tobool6.not, i1 true, i1 %cmp9
  call void @__sanitizer_cov_trace_cmp4(i32 %agino.036, i32 %high)
  %cmp11.not = icmp ugt i32 %agino.036, %high
  %or.cond35 = select i1 %or.cond, i1 true, i1 %cmp11.not
  br i1 %or.cond35, label %for.inc, label %if.then13

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %exists to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %exists, align 1
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %14 = lshr i16 %holemask.037, 1
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call18 = call i32 @xfs_btree_increment(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %has_record) #12
  %cmp = icmp eq i32 %call18, 0
  br i1 %cmp, label %for.end.land.rhs_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end.land.rhs_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %if.then13, %lor.lhs.false.cleanup_crit_edge, %while.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then13 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call18, %for.end.cleanup_crit_edge ], [ %call1, %while.body.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %has_record) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %irec) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_increment(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ialloc_has_inodes_at_extent(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, ptr nocapture noundef writeonly %exists) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sb_inopblog, align 1
  %conv = zext i8 %3 to i32
  %shl = shl i32 %bno, %conv
  %add = add i32 %len, %bno
  %shl5 = shl i32 %add, %conv
  %sub = add i32 %shl5, -1
  %call = tail call i32 @xfs_ialloc_has_inode_record(ptr noundef %cur, i32 noundef %shl, i32 noundef %sub, ptr noundef %exists)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ialloc_count_inodes(ptr noundef %cur, ptr nocapture noundef writeonly %count, ptr nocapture noundef writeonly %freecount) local_unnamed_addr #0 align 64 {
entry:
  %ci = alloca %struct.xfs_ialloc_count_inodes, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ci) #12
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ci, align 8
  %bc_btnum = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 5
  %1 = ptrtoint ptr %bc_btnum to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bc_btnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !154

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.6, i32 noundef 2739) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call = call i32 @xfs_btree_query_all(ptr noundef %cur, ptr noundef nonnull @xfs_ialloc_count_inodes_rec, ptr noundef nonnull %ci) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ci, align 8
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %count, align 4
  %freecount4 = getelementptr inbounds %struct.xfs_ialloc_count_inodes, ptr %ci, i32 0, i32 1
  %6 = ptrtoint ptr %freecount4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %freecount4, align 4
  %8 = ptrtoint ptr %freecount to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %freecount, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ci) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_query_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_ialloc_count_inodes_rec(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %rec, ptr nocapture noundef %priv) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %ir_u9.i = getelementptr inbounds %struct.xfs_inobt_rec, ptr %rec, i32 0, i32 1
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ir_count.i = getelementptr inbounds %struct.anon.94, ptr %ir_u9.i, i32 0, i32 1
  %4 = ptrtoint ptr %ir_count.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ir_count.i, align 2
  %ir_freecount.i = getelementptr inbounds %struct.anon.94, ptr %ir_u9.i, i32 0, i32 2
  %6 = ptrtoint ptr %ir_freecount.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ir_freecount.i, align 1
  %phi.cast = zext i8 %5 to i32
  br label %xfs_inobt_btrec_to_irec.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %ir_u9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ir_u9.i, align 4
  %conv.i = trunc i32 %9 to i8
  br label %xfs_inobt_btrec_to_irec.exit

xfs_inobt_btrec_to_irec.exit:                     ; preds = %if.else.i, %if.then.i
  %irec.sroa.7.0 = phi i32 [ 64, %if.else.i ], [ %phi.cast, %if.then.i ]
  %.sink.i = phi i8 [ %conv.i, %if.else.i ], [ %7, %if.then.i ]
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %priv, align 4
  %add = add i32 %11, %irec.sroa.7.0
  store i32 %add, ptr %priv, align 4
  %conv1 = zext i8 %.sink.i to i32
  %freecount = getelementptr inbounds %struct.xfs_ialloc_count_inodes, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %freecount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %freecount, align 4
  %add2 = add i32 %13, %conv1
  store i32 %add2, ptr %freecount, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_ialloc_setup_geometry(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m_ino_geo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64
  %new_diflags2 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 17
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = lshr i64 %1, 21
  %2 = and i64 %and.i, 8
  %3 = ptrtoint ptr %new_diflags2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %new_diflags2, align 8
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 23
  %4 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_inopblog, align 1
  %conv = zext i8 %5 to i32
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  %6 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sb_agblklog, align 4
  %conv2 = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv2, %conv
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 15
  %8 = ptrtoint ptr %agino_log to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %agino_log, align 8
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 1
  %9 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_blocksize, align 4
  %call3 = tail call i32 @xfs_inobt_maxrecs(ptr noundef %mp, i32 noundef %10, i32 noundef 1) #12
  %inobt_mxr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 8
  %11 = ptrtoint ptr %inobt_mxr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call3, ptr %inobt_mxr, align 4
  %12 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sb_blocksize, align 4
  %call5 = tail call i32 @xfs_inobt_maxrecs(ptr noundef %mp, i32 noundef %13, i32 noundef 0) #12
  %arrayidx7 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 8, i32 1
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call5, ptr %arrayidx7, align 4
  %15 = ptrtoint ptr %inobt_mxr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inobt_mxr, align 4
  %div820 = lshr i32 %16, 1
  %inobt_mnr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 9
  %17 = ptrtoint ptr %inobt_mnr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div820, ptr %inobt_mnr, align 4
  %div13821 = lshr i32 %call5, 1
  %arrayidx15 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 9, i32 1
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div13821, ptr %arrayidx15, align 4
  %sb_inopblock = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 18
  %19 = ptrtoint ptr %sb_inopblock to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sb_inopblock, align 2
  %21 = tail call i16 @llvm.umax.i16(i16 %20, i16 64)
  %cond = zext i16 %21 to i32
  %ialloc_inos = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 11
  %22 = ptrtoint ptr %ialloc_inos to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond, ptr %ialloc_inos, align 8
  %23 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sb_inopblog, align 1
  %conv23 = zext i8 %24 to i32
  %shr = lshr i32 %cond, %conv23
  %ialloc_blks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 12
  %25 = ptrtoint ptr %ialloc_blks to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr, ptr %ialloc_blks, align 4
  %sb_spino_align = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 51
  %26 = ptrtoint ptr %sb_spino_align to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sb_spino_align, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  %spec.select = select i1 %tobool.not, i32 %shr, i32 %27
  %28 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 13
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select, ptr %28, align 8
  %30 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %31 to i64
  %shl = shl nuw i64 1, %sh_prom
  %32 = lshr i64 %shl, 6
  %conv34 = and i64 %32, 4294967295
  %call35 = tail call i32 @xfs_btree_compute_maxlevels(ptr noundef %inobt_mnr, i64 noundef %conv34) #12
  %inobt_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 10
  %33 = ptrtoint ptr %inobt_maxlevels to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call35, ptr %inobt_maxlevels, align 4
  %call37 = tail call i32 @xfs_iallocbt_maxlevels_ondisk() #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call35, i32 %call37)
  %cmp38.not = icmp ugt i32 %call35, %call37
  br i1 %cmp38.not, label %cond.false43, label %entry.cond.end44_crit_edge, !prof !153

entry.cond.end44_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end44

cond.false43:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.6, i32 noundef 2796) #12
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false43, %entry.cond.end44_crit_edge
  %sb_imax_pct = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 27
  %34 = ptrtoint ptr %sb_imax_pct to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sb_imax_pct, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool46.not = icmp eq i8 %35, 0
  br i1 %tobool46.not, label %cond.end44.if.end488_crit_edge, label %land.lhs.true

cond.end44.if.end488_crit_edge:                   ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end488

land.lhs.true:                                    ; preds = %cond.end44
  %36 = ptrtoint ptr %ialloc_blks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ialloc_blks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool48.not = icmp eq i32 %37, 0
  br i1 %tobool48.not, label %land.lhs.true.if.end488_crit_edge, label %if.end254

land.lhs.true.if.end488_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end488

if.end254:                                        ; preds = %land.lhs.true
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %38 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %sb_dblocks, align 8
  %conv51 = zext i8 %35 to i64
  %mul = mul i64 %39, %conv51
  %40 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul, i32 0) #17, !srcloc !176
  %asmresult.i = extractvalue { i64, i32 } %40, 0
  %asmresult4.i = extractvalue { i64, i32 } %40, 1
  %41 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul, i64 %asmresult.i, i32 %asmresult4.i) #17, !srcloc !177
  %asmresult10.i = extractvalue { i64, i32 } %41, 0
  %storemerge823 = lshr i64 %asmresult10.i, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906944, i64 %asmresult10.i)
  %cmp458 = icmp ult i64 %asmresult10.i, 274877906944
  br i1 %cmp458, label %if.then466, label %if.else472, !prof !154

if.then466:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #14
  %conv467 = trunc i64 %storemerge823 to i32
  %div470 = udiv i32 %conv467, %37
  %conv471 = zext i32 %div470 to i64
  br label %if.end476

if.else472:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #14
  %42 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %37, i64 %storemerge823) #17, !srcloc !178
  %asmresult1.i = extractvalue { i64, i64 } %42, 1
  br label %if.end476

if.end476:                                        ; preds = %if.else472, %if.then466
  %icount.0 = phi i64 [ %conv471, %if.then466 ], [ %asmresult1.i, %if.else472 ]
  %conv479 = zext i32 %37 to i64
  %mul480 = mul i64 %icount.0, %conv479
  %43 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %sb_inopblog, align 1
  %sh_prom484 = zext i8 %44 to i64
  %shl485 = shl i64 %mul480, %sh_prom484
  br label %if.end488

if.end488:                                        ; preds = %if.end476, %land.lhs.true.if.end488_crit_edge, %cond.end44.if.end488_crit_edge
  %storemerge = phi i64 [ %shl485, %if.end476 ], [ 0, %land.lhs.true.if.end488_crit_edge ], [ 0, %cond.end44.if.end488_crit_edge ]
  %45 = ptrtoint ptr %m_ino_geo to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %storemerge, ptr %m_ino_geo, align 8
  %inode_cluster_size_raw = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 2
  %46 = ptrtoint ptr %inode_cluster_size_raw to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8192, ptr %inode_cluster_size_raw, align 4
  %47 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %m_features.i, align 8
  %and.i831 = and i64 %48, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i831)
  %tobool.i832.not = icmp eq i64 %and.i831, 0
  br i1 %tobool.i832.not, label %if.end488.if.end508_crit_edge, label %if.then490

if.end488.if.end508_crit_edge:                    ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end508

if.then490:                                       ; preds = %if.end488
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 17
  %49 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sb_inodesize, align 8
  %51 = lshr i16 %50, 8
  %div494 = zext i16 %51 to i32
  %mul495 = shl nuw nsw i32 %div494, 13
  %sb_inoalignmt = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 37
  %52 = ptrtoint ptr %sb_inoalignmt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sb_inoalignmt, align 4
  %conv497 = zext i32 %53 to i64
  %conv498860 = zext i32 %mul495 to i64
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %54 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sb_blocklog, align 8
  %sh_prom501 = zext i8 %55 to i64
  %shr502 = lshr i64 %conv498860, %sh_prom501
  call void @__sanitizer_cov_trace_cmp8(i64 %shr502, i64 %conv497)
  %cmp503.not = icmp ugt i64 %shr502, %conv497
  br i1 %cmp503.not, label %if.then490.if.end508_crit_edge, label %if.then505

if.then490.if.end508_crit_edge:                   ; preds = %if.then490
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end508

if.then505:                                       ; preds = %if.then490
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %inode_cluster_size_raw to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %mul495, ptr %inode_cluster_size_raw, align 4
  br label %if.end508

if.end508:                                        ; preds = %if.then505, %if.then490.if.end508_crit_edge, %if.end488.if.end508_crit_edge
  %57 = ptrtoint ptr %inode_cluster_size_raw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %inode_cluster_size_raw, align 4
  %59 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sb_blocksize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp512 = icmp ugt i32 %58, %60
  br i1 %cmp512, label %if.then514, label %if.end508.if.end525_crit_edge

if.end508.if.end525_crit_edge:                    ; preds = %if.end508
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end525

if.then514:                                       ; preds = %if.end508
  call void @__sanitizer_cov_trace_pc() #14
  %conv516 = zext i32 %58 to i64
  %sb_blocklog518 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %61 = ptrtoint ptr %sb_blocklog518 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %sb_blocklog518, align 8
  %sh_prom520 = zext i8 %62 to i64
  %shr521 = lshr i64 %conv516, %sh_prom520
  %conv522 = trunc i64 %shr521 to i32
  br label %if.end525

if.end525:                                        ; preds = %if.then514, %if.end508.if.end525_crit_edge
  %.sink861 = phi i32 [ %conv522, %if.then514 ], [ 1, %if.end508.if.end525_crit_edge ]
  %63 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink861, ptr %63, align 4
  %conv527 = zext i32 %.sink861 to i64
  %sb_blocklog529 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %65 = ptrtoint ptr %sb_blocklog529 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %sb_blocklog529, align 8
  %sh_prom531 = zext i8 %66 to i64
  %shl532 = shl i64 %conv527, %sh_prom531
  %conv533 = trunc i64 %shl532 to i32
  %inode_cluster_size = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 1
  %67 = ptrtoint ptr %inode_cluster_size to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv533, ptr %inode_cluster_size, align 8
  %68 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %sb_inopblog, align 1
  %conv537 = zext i8 %69 to i32
  %shl538 = shl i32 %.sink861, %conv537
  %inodes_per_cluster = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 3
  %70 = ptrtoint ptr %inodes_per_cluster to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %shl538, ptr %inodes_per_cluster, align 8
  %and.i834 = and i64 %48, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i834)
  %tobool.i835.not = icmp eq i64 %and.i834, 0
  br i1 %tobool.i835.not, label %if.end525.if.else552_crit_edge, label %land.lhs.true543

if.end525.if.else552_crit_edge:                   ; preds = %if.end525
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else552

land.lhs.true543:                                 ; preds = %if.end525
  %sb_inoalignmt545 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 37
  %71 = ptrtoint ptr %sb_inoalignmt545 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sb_inoalignmt545, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %.sink861)
  %cmp547.not = icmp ult i32 %72, %.sink861
  br i1 %cmp547.not, label %land.lhs.true543.if.else552_crit_edge, label %land.lhs.true543.if.end554_crit_edge

land.lhs.true543.if.end554_crit_edge:             ; preds = %land.lhs.true543
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end554

land.lhs.true543.if.else552_crit_edge:            ; preds = %land.lhs.true543
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else552

if.else552:                                       ; preds = %land.lhs.true543.if.else552_crit_edge, %if.end525.if.else552_crit_edge
  br label %if.end554

if.end554:                                        ; preds = %if.else552, %land.lhs.true543.if.end554_crit_edge
  %.sink = phi i32 [ 1, %if.else552 ], [ %72, %land.lhs.true543.if.end554_crit_edge ]
  %cluster_align553 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 5
  %73 = ptrtoint ptr %cluster_align553 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %.sink, ptr %cluster_align553, align 8
  %sub556 = add i32 %.sink, -1
  %inoalign_mask = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 7
  %74 = ptrtoint ptr %inoalign_mask to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sub556, ptr %inoalign_mask, align 8
  %shl561 = shl i32 %.sink, %conv537
  %cluster_align_inodes = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 6
  %75 = ptrtoint ptr %cluster_align_inodes to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shl561, ptr %cluster_align_inodes, align 4
  %m_dalign = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 50
  %76 = ptrtoint ptr %m_dalign to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %m_dalign, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool564.not = icmp eq i32 %77, 0
  br i1 %tobool564.not, label %if.end554.if.else575_crit_edge, label %land.lhs.true565

if.end554.if.else575_crit_edge:                   ; preds = %if.end554
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else575

land.lhs.true565:                                 ; preds = %if.end554
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub556)
  %tobool567.not = icmp ne i32 %sub556, 0
  %and571 = and i32 %77, %sub556
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and571)
  %tobool572.not = icmp eq i32 %and571, 0
  %or.cond = select i1 %tobool567.not, i1 %tobool572.not, i1 false
  br i1 %or.cond, label %land.lhs.true565.if.end577_crit_edge, label %land.lhs.true565.if.else575_crit_edge

land.lhs.true565.if.else575_crit_edge:            ; preds = %land.lhs.true565
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else575

land.lhs.true565.if.end577_crit_edge:             ; preds = %land.lhs.true565
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end577

if.else575:                                       ; preds = %land.lhs.true565.if.else575_crit_edge, %if.end554.if.else575_crit_edge
  br label %if.end577

if.end577:                                        ; preds = %if.else575, %land.lhs.true565.if.end577_crit_edge
  %.sink862 = phi i32 [ 0, %if.else575 ], [ %77, %land.lhs.true565.if.end577_crit_edge ]
  %ialloc_align576 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 14
  %78 = ptrtoint ptr %ialloc_align576 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %.sink862, ptr %ialloc_align576, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_inobt_maxrecs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_compute_maxlevels(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iallocbt_maxlevels_ondisk() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @xfs_ialloc_calc_rootino(ptr noundef %mp, i32 noundef %sunit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %0 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_sectsize, align 2
  %conv = zext i16 %1 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 1
  %2 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_blocksize, align 4
  %sub = add i32 %3, -1
  %add = add i32 %sub, %mul
  %div = udiv i32 %add, %3
  %add5 = add i32 %div, 3
  %call = tail call i32 @xfs_alloc_min_freelist(ptr noundef %mp, ptr noundef null) #12
  %add6 = add i32 %add5, %call
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %6 = trunc i64 %5 to i32
  %7 = lshr i32 %6, 17
  %8 = and i32 %7, 1
  %spec.select = add i32 %add6, %8
  %9 = lshr i32 %6, 18
  %10 = and i32 %9, 1
  %first_bno.1 = add i32 %spec.select, %10
  %11 = lshr i32 %6, 19
  %12 = and i32 %11, 1
  %first_bno.2 = add i32 %first_bno.1, %12
  %sb_logstart = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 6
  %13 = ptrtoint ptr %sb_logstart to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sb_logstart, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not = icmp eq i64 %14, 0
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %land.lhs.true

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

land.lhs.true:                                    ; preds = %entry
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  %15 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %16 to i64
  %shr = lshr i64 %14, %sh_prom
  %conv21 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv21)
  %cmp = icmp eq i32 %conv21, 0
  br i1 %cmp, label %if.then23, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %sb_logblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 14
  %17 = ptrtoint ptr %sb_logblocks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sb_logblocks, align 32
  %add25 = add i32 %18, %first_bno.2
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true.if.end26_crit_edge, %entry.if.end26_crit_edge
  %first_bno.3 = phi i32 [ %add25, %if.then23 ], [ %first_bno.2, %land.lhs.true.if.end26_crit_edge ], [ %first_bno.2, %entry.if.end26_crit_edge ]
  %and.i98 = and i64 %5, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i98)
  %tobool.i99.not = icmp eq i64 %and.i98, 0
  br i1 %tobool.i99.not, label %if.end26.if.else_crit_edge, label %land.lhs.true29

if.end26.if.else_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true29:                                  ; preds = %if.end26
  %ialloc_align = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 14
  %19 = ptrtoint ptr %ialloc_align to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ialloc_align, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp30.not = icmp eq i32 %20, 0
  br i1 %cmp30.not, label %land.lhs.true29.if.else_crit_edge, label %if.then32

land.lhs.true29.if.else_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then32:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  %sub33 = add i32 %first_bno.3, -1
  %add34 = add i32 %sub33, %sunit
  %21 = urem i32 %add34, %sunit
  %mul36 = sub i32 %add34, %21
  br label %if.end53

if.else:                                          ; preds = %land.lhs.true29.if.else_crit_edge, %if.end26.if.else_crit_edge
  %and.i101 = and i64 %5, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i101)
  %tobool.i102.not = icmp eq i64 %and.i101, 0
  br i1 %tobool.i102.not, label %if.else.if.end53_crit_edge, label %land.lhs.true39

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

land.lhs.true39:                                  ; preds = %if.else
  %sb_inoalignmt = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 37
  %22 = ptrtoint ptr %sb_inoalignmt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sb_inoalignmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp41 = icmp ugt i32 %23, 1
  br i1 %cmp41, label %if.then43, label %land.lhs.true39.if.end53_crit_edge

land.lhs.true39.if.end53_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then43:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  %sub48 = add i32 %first_bno.3, -1
  %add49 = add i32 %sub48, %23
  %24 = urem i32 %add49, %23
  %mul51 = sub i32 %add49, %24
  br label %if.end53

if.end53:                                         ; preds = %if.then43, %land.lhs.true39.if.end53_crit_edge, %if.else.if.end53_crit_edge, %if.then32
  %first_bno.4 = phi i32 [ %mul36, %if.then32 ], [ %mul51, %if.then43 ], [ %first_bno.3, %land.lhs.true39.if.end53_crit_edge ], [ %first_bno.3, %if.else.if.end53_crit_edge ]
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 23
  %25 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sb_inopblog, align 1
  %conv57 = zext i8 %26 to i32
  %shl58 = shl i32 %first_bno.4, %conv57
  %conv59 = zext i32 %shl58 to i64
  ret i64 %conv59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_min_freelist(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ialloc_check_shrink(ptr noundef %tp, i32 noundef %agno, ptr noundef %agibp, i32 noundef %new_length) local_unnamed_addr #0 align 64 {
entry:
  %rec = alloca %struct.xfs_inobt_rec_incore, align 8
  %has = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec) #12
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = call ptr @memset(ptr %rec, i32 255, i32 16)
  %1 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %t_mountp, align 4
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %2, i32 0, i32 23
  %3 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sb_inopblog, align 1
  %conv = zext i8 %4 to i32
  %shl = shl i32 %new_length, %conv
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %has) #12
  %5 = ptrtoint ptr %has to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %has, align 4, !annotation !152
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @xfs_perag_get(ptr noundef %2, i32 noundef %agno) #12
  %call2 = tail call ptr @xfs_inobt_init_cursor(ptr noundef %2, ptr noundef %tp, ptr noundef %agibp, ptr noundef %call1, i32 noundef 4) #12
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call2, i32 0, i32 6
  %8 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl, ptr %bc_rec.i, align 8
  %ir_holemask.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 1
  %9 = call ptr @memset(ptr %ir_holemask.i, i32 0, i32 12)
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %call2, i32 noundef 1, ptr noundef nonnull %has) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %10 = ptrtoint ptr %has to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %has, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %lor.lhs.false.out_crit_edge, label %if.end6

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = call i32 @xfs_inobt_get_rec(ptr noundef %call2, ptr noundef nonnull %rec, ptr noundef nonnull %has)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end10:                                         ; preds = %if.end6
  %12 = ptrtoint ptr %has to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %has, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %if.end10.out_crit_edge, label %if.end13

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rec, align 8
  %add = add i32 %15, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shl)
  %cmp = icmp ugt i32 %add, %shl
  %spec.select = select i1 %cmp, i32 -28, i32 0
  br label %out

out:                                              ; preds = %if.end13, %if.end10.out_crit_edge, %if.end6.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge
  %error.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call7, %if.end6.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ -117, %if.end10.out_crit_edge ], [ %spec.select, %if.end13 ]
  call void @xfs_btree_del_cursor(ptr noundef %call2, i32 noundef %error.0) #12
  call void @xfs_perag_put(ptr noundef %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %has) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_inobt_init_cursor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_del_cursor(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight64(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_get_buf_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_buf_offset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_pagf_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_ialloc_ag_alloc(ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag) unnamed_addr #4 align 64 {
entry:
  %args = alloca %struct.xfs_alloc_arg, align 8
  %newino = alloca i32, align 4
  %rec = alloca %struct.xfs_inobt_rec_incore, align 8
  %allocmask = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %args) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newino) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec) #12
  %0 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 3
  %3 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 4
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %4 = call ptr @memset(ptr %rec, i32 255, i32 16)
  %5 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t_mountp, align 4
  %m_ino_geo = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %allocmask) #12
  %7 = ptrtoint ptr %allocmask to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %allocmask, align 2
  %8 = getelementptr inbounds i8, ptr %args, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 120)
  %10 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tp, ptr %args, align 8
  %mp = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 1
  %11 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %6, ptr %mp, align 4
  %fsbno = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 4
  %12 = ptrtoint ptr %fsbno to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %fsbno, align 8
  %oinfo = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 23
  %13 = call ptr @memcpy(ptr %oinfo, ptr @XFS_RMAP_OINFO_INODES, i32 24)
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 61
  %14 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %15, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ialloc_min_blks = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 64, i32 13
  %16 = ptrtoint ptr %ialloc_min_blks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ialloc_min_blks, align 8
  %ialloc_blks = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 64, i32 12
  %18 = ptrtoint ptr %ialloc_blks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ialloc_blks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp = icmp ult i32 %17, %19
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @prandom_u32() #12
  %and = and i32 %call4, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %do_sparse.0 = phi i32 [ %and, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %ialloc_inos = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 64, i32 11
  %20 = ptrtoint ptr %ialloc_inos to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ialloc_inos, align 8
  %22 = ptrtoint ptr %m_ino_geo to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %m_ino_geo, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool.not = icmp eq i64 %23, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %land.lhs.true5

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true5:                                   ; preds = %if.end
  %24 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mp, align 4
  %count.i = getelementptr inbounds %struct.xfs_mount, ptr %25, i32 0, i32 77, i32 1
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load volatile i64, ptr %count.i, align 8
  %28 = tail call i64 @llvm.smax.i64(i64 %27, i64 0) #12
  %conv = zext i32 %21 to i64
  %add = add nuw i64 %28, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %23)
  %cmp9 = icmp ugt i64 %add, %23
  br i1 %cmp9, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true5.if.end12_crit_edge

land.lhs.true5.if.end12_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true5.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %ialloc_blks13 = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 64, i32 12
  %29 = ptrtoint ptr %ialloc_blks13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ialloc_blks13, align 4
  %maxlen = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 8
  %31 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %maxlen, align 4
  %minlen = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 7
  %32 = ptrtoint ptr %minlen to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %minlen, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agbp, i32 0, i32 16
  %33 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_addr, align 4
  %agi_newino = getelementptr inbounds %struct.xfs_agi, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %agi_newino to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %agi_newino, align 8
  %37 = ptrtoint ptr %newino to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %newino, align 4
  %38 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mp, align 4
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %39, i32 0, i32 23
  %40 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sb_inopblog, align 1
  %conv15 = zext i8 %41 to i32
  %shr = lshr i32 %36, %conv15
  %add17 = add i32 %shr, %30
  %agbno = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 6
  %42 = ptrtoint ptr %agbno to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add17, ptr %agbno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_sparse.0)
  %tobool18.not = icmp eq i32 %do_sparse.0, 0
  br i1 %tobool18.not, label %if.end20, label %if.end12.sparse_alloc_crit_edge

if.end12.sparse_alloc_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sparse_alloc

if.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp21.not = icmp eq i32 %36, -1
  br i1 %cmp21.not, label %if.end20.if.end41_crit_edge, label %land.rhs, !prof !153

if.end20.if.end41_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

land.rhs:                                         ; preds = %if.end20
  %agi_length = getelementptr inbounds %struct.xfs_agi, ptr %34, i32 0, i32 3
  %43 = ptrtoint ptr %agi_length to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %agi_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add17, i32 %44)
  %cmp24 = icmp ult i32 %add17, %44
  br i1 %cmp24, label %if.then28, label %land.rhs.if.end41_crit_edge, !prof !154

land.rhs.if.end41_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then28:                                        ; preds = %land.rhs
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %45 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pag_agno, align 4
  %conv29 = zext i32 %46 to i64
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %39, i32 0, i32 24
  %47 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %48 to i64
  %shl = shl i64 %conv29, %sh_prom
  %conv34 = zext i32 %add17 to i64
  %or = or i64 %shl, %conv34
  %49 = ptrtoint ptr %fsbno to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %or, ptr %fsbno, align 8
  %type = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 18
  %50 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 64, ptr %type, align 4
  %prod = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 10
  %51 = ptrtoint ptr %prod to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %prod, align 4
  %alignment = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 13
  %52 = ptrtoint ptr %alignment to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %alignment, align 8
  %cluster_align = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 64, i32 5
  %53 = ptrtoint ptr %cluster_align to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cluster_align, align 8
  %sub = add i32 %54, -1
  %minalignslop = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 14
  %55 = ptrtoint ptr %minalignslop to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub, ptr %minalignslop, align 4
  %inobt_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 64, i32 10
  %56 = ptrtoint ptr %inobt_maxlevels to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %inobt_maxlevels, align 4
  %minleft = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 11
  %58 = ptrtoint ptr %minleft to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %minleft, align 8
  %call36 = call i32 @xfs_alloc_vextent(ptr noundef nonnull %args) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %minalignslop to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %minalignslop, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end39, %land.rhs.if.end41_crit_edge, %if.end20.if.end41_crit_edge
  %60 = ptrtoint ptr %fsbno to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %fsbno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %61)
  %cmp43 = icmp eq i64 %61, -1
  br i1 %cmp43, label %if.then51, label %if.end41.if.end118_crit_edge, !prof !153

if.end41.if.end118_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.then51:                                        ; preds = %if.end41
  %ialloc_align = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 64, i32 14
  %62 = ptrtoint ptr %ialloc_align to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ialloc_align, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool52.not = icmp eq i32 %63, 0
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.then51
  %64 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mp, align 4
  %m_features.i376 = getelementptr inbounds %struct.xfs_mount, ptr %65, i32 0, i32 61
  %66 = ptrtoint ptr %m_features.i376 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %m_features.i376, align 8
  %and.i377 = and i64 %67, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i377)
  %tobool.i378.not = icmp eq i64 %and.i377, 0
  br i1 %tobool.i378.not, label %if.then53.cond.end_crit_edge, label %cond.false, !prof !154

if.then53.cond.end_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.6, i32 noundef 714) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then53.cond.end_crit_edge
  %68 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mp, align 4
  %m_dalign = getelementptr inbounds %struct.xfs_mount, ptr %69, i32 0, i32 50
  br label %if.end68

if.else:                                          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  %cluster_align66 = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 64, i32 5
  br label %if.end68

if.end68:                                         ; preds = %if.else, %cond.end
  %cluster_align66.sink = phi ptr [ %cluster_align66, %if.else ], [ %m_dalign, %cond.end ]
  %70 = ptrtoint ptr %cluster_align66.sink to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cluster_align66.sink, align 8
  %alignment67 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 13
  %72 = ptrtoint ptr %alignment67 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %alignment67, align 8
  %agi_root = getelementptr inbounds %struct.xfs_agi, ptr %34, i32 0, i32 5
  %73 = ptrtoint ptr %agi_root to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %agi_root, align 4
  %75 = ptrtoint ptr %agbno to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %agbno, align 4
  %pag_agno70 = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %76 = ptrtoint ptr %pag_agno70 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pag_agno70, align 4
  %conv71 = zext i32 %77 to i64
  %78 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mp, align 4
  %sb_agblklog74 = getelementptr inbounds %struct.xfs_sb, ptr %79, i32 0, i32 24
  %80 = ptrtoint ptr %sb_agblklog74 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %sb_agblklog74, align 4
  %sh_prom76 = zext i8 %81 to i64
  %shl77 = shl i64 %conv71, %sh_prom76
  %conv79 = zext i32 %74 to i64
  %or80 = or i64 %shl77, %conv79
  %82 = ptrtoint ptr %fsbno to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %or80, ptr %fsbno, align 8
  %type82 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 18
  %83 = ptrtoint ptr %type82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 32, ptr %type82, align 4
  %prod83 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 10
  %84 = ptrtoint ptr %prod83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %prod83, align 4
  %inobt_maxlevels84 = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 64, i32 10
  %85 = ptrtoint ptr %inobt_maxlevels84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %inobt_maxlevels84, align 4
  %minleft85 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 11
  %87 = ptrtoint ptr %minleft85 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %minleft85, align 8
  %call86 = call i32 @xfs_alloc_vextent(ptr noundef nonnull %args) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end90, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end90:                                         ; preds = %if.end68
  br i1 %tobool52.not, label %if.end90.if.end118_crit_edge, label %land.lhs.true92

if.end90.if.end118_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

land.lhs.true92:                                  ; preds = %if.end90
  %88 = ptrtoint ptr %fsbno to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %fsbno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %89)
  %cmp94 = icmp eq i64 %89, -1
  br i1 %cmp94, label %if.then96, label %land.lhs.true92.if.end118_crit_edge

land.lhs.true92.if.end118_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.then96:                                        ; preds = %land.lhs.true92
  %90 = ptrtoint ptr %type82 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 32, ptr %type82, align 4
  %91 = ptrtoint ptr %agi_root to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %agi_root, align 4
  %93 = ptrtoint ptr %agbno to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %agbno, align 4
  %94 = ptrtoint ptr %pag_agno70 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pag_agno70, align 4
  %conv101 = zext i32 %95 to i64
  %96 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mp, align 4
  %sb_agblklog104 = getelementptr inbounds %struct.xfs_sb, ptr %97, i32 0, i32 24
  %98 = ptrtoint ptr %sb_agblklog104 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %sb_agblklog104, align 4
  %sh_prom106 = zext i8 %99 to i64
  %shl107 = shl i64 %conv101, %sh_prom106
  %conv109 = zext i32 %92 to i64
  %or110 = or i64 %shl107, %conv109
  %100 = ptrtoint ptr %fsbno to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %or110, ptr %fsbno, align 8
  %cluster_align112 = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 64, i32 5
  %101 = ptrtoint ptr %cluster_align112 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cluster_align112, align 8
  %alignment113 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 13
  %103 = ptrtoint ptr %alignment113 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %alignment113, align 8
  %call114 = call i32 @xfs_alloc_vextent(ptr noundef nonnull %args) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.then96.if.end118_crit_edge, label %if.then96.cleanup_crit_edge

if.then96.cleanup_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then96.if.end118_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.end118:                                        ; preds = %if.then96.if.end118_crit_edge, %land.lhs.true92.if.end118_crit_edge, %if.end90.if.end118_crit_edge, %if.end41.if.end118_crit_edge
  %104 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mp, align 4
  %m_features.i379 = getelementptr inbounds %struct.xfs_mount, ptr %105, i32 0, i32 61
  %106 = ptrtoint ptr %m_features.i379 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %m_features.i379, align 8
  %and.i380 = and i64 %107, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i380)
  %tobool.i381.not = icmp eq i64 %and.i380, 0
  br i1 %tobool.i381.not, label %if.end118.if.end189_crit_edge, label %land.lhs.true122

if.end118.if.end189_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end189

land.lhs.true122:                                 ; preds = %if.end118
  %ialloc_min_blks123 = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 64, i32 13
  %108 = ptrtoint ptr %ialloc_min_blks123 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ialloc_min_blks123, align 8
  %110 = ptrtoint ptr %ialloc_blks13 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ialloc_blks13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %111)
  %cmp125 = icmp ult i32 %109, %111
  br i1 %cmp125, label %land.lhs.true127, label %land.lhs.true122.if.end189_crit_edge

land.lhs.true122.if.end189_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end189

land.lhs.true127:                                 ; preds = %land.lhs.true122
  %112 = ptrtoint ptr %fsbno to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %fsbno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %113)
  %cmp129 = icmp eq i64 %113, -1
  br i1 %cmp129, label %land.lhs.true127.sparse_alloc_crit_edge, label %land.lhs.true127.if.end194_crit_edge

land.lhs.true127.if.end194_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end194

land.lhs.true127.sparse_alloc_crit_edge:          ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sparse_alloc

sparse_alloc:                                     ; preds = %land.lhs.true127.sparse_alloc_crit_edge, %if.end12.sparse_alloc_crit_edge
  %type132 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 18
  %114 = ptrtoint ptr %type132 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 32, ptr %type132, align 4
  %agi_root133 = getelementptr inbounds %struct.xfs_agi, ptr %34, i32 0, i32 5
  %115 = ptrtoint ptr %agi_root133 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %agi_root133, align 4
  %117 = ptrtoint ptr %agbno to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %agbno, align 4
  %pag_agno135 = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %118 = ptrtoint ptr %pag_agno135 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pag_agno135, align 4
  %conv136 = zext i32 %119 to i64
  %120 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mp, align 4
  %sb_agblklog139 = getelementptr inbounds %struct.xfs_sb, ptr %121, i32 0, i32 24
  %122 = ptrtoint ptr %sb_agblklog139 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %sb_agblklog139, align 4
  %sh_prom141 = zext i8 %123 to i64
  %shl142 = shl i64 %conv136, %sh_prom141
  %conv144 = zext i32 %116 to i64
  %or145 = or i64 %shl142, %conv144
  %124 = ptrtoint ptr %fsbno to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %or145, ptr %fsbno, align 8
  %sb_spino_align = getelementptr inbounds %struct.xfs_sb, ptr %121, i32 0, i32 51
  %125 = ptrtoint ptr %sb_spino_align to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %sb_spino_align, align 4
  %alignment149 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 13
  %127 = ptrtoint ptr %alignment149 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %alignment149, align 8
  %prod150 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 10
  %128 = ptrtoint ptr %prod150 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %prod150, align 4
  %ialloc_min_blks151 = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 64, i32 13
  %129 = ptrtoint ptr %ialloc_min_blks151 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ialloc_min_blks151, align 8
  %131 = ptrtoint ptr %minlen to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %minlen, align 8
  %132 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %130, ptr %maxlen, align 4
  %sb_inoalignmt = getelementptr inbounds %struct.xfs_sb, ptr %121, i32 0, i32 37
  %133 = ptrtoint ptr %sb_inoalignmt to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %sb_inoalignmt, align 4
  %min_agbno = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 15
  %135 = ptrtoint ptr %min_agbno to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %min_agbno, align 8
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %121, i32 0, i32 11
  %136 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sb_agblocks, align 4
  %neg = sub i32 0, %134
  %and163 = and i32 %137, %neg
  %138 = ptrtoint ptr %ialloc_blks13 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ialloc_blks13, align 4
  %sub165 = sub i32 %and163, %139
  %max_agbno = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 16
  %140 = ptrtoint ptr %max_agbno to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %sub165, ptr %max_agbno, align 4
  %call166 = call i32 @xfs_alloc_vextent(ptr noundef nonnull %args) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.end169, label %sparse_alloc.cleanup_crit_edge

sparse_alloc.cleanup_crit_edge:                   ; preds = %sparse_alloc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end169:                                        ; preds = %sparse_alloc
  %len = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 17
  %141 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %len, align 8
  %143 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mp, align 4
  %sb_inopblog172 = getelementptr inbounds %struct.xfs_sb, ptr %144, i32 0, i32 23
  %145 = ptrtoint ptr %sb_inopblog172 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %sb_inopblog172, align 1
  %conv173 = zext i8 %146 to i32
  %shl174 = shl i32 %142, %conv173
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %shl174)
  %cmp175 = icmp ult i32 %shl174, 65
  br i1 %cmp175, label %if.end169.cond.end185_crit_edge, label %cond.false184, !prof !154

if.end169.cond.end185_crit_edge:                  ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end185

cond.false184:                                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.6, i32 noundef 789) #12
  br label %cond.end185

cond.end185:                                      ; preds = %cond.false184, %if.end169.cond.end185_crit_edge
  %div375 = lshr i32 %shl174, 2
  %notmask = shl nsw i32 -1, %div375
  %147 = trunc i32 %notmask to i16
  %conv188 = xor i16 %147, -1
  %148 = ptrtoint ptr %allocmask to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %conv188, ptr %allocmask, align 2
  br label %if.end189

if.end189:                                        ; preds = %cond.end185, %land.lhs.true122.if.end189_crit_edge, %if.end118.if.end189_crit_edge
  %newlen.0.ph = phi i32 [ %21, %if.end118.if.end189_crit_edge ], [ %21, %land.lhs.true122.if.end189_crit_edge ], [ %shl174, %cond.end185 ]
  %149 = ptrtoint ptr %fsbno to i32
  call void @__asan_load8_noabort(i32 %149)
  %.pr = load i64, ptr %fsbno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.pr)
  %cmp191 = icmp eq i64 %.pr, -1
  br i1 %cmp191, label %if.end189.cleanup_crit_edge, label %if.end189.if.end194_crit_edge

if.end189.if.end194_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end194

if.end189.cleanup_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end194:                                        ; preds = %if.end189.if.end194_crit_edge, %land.lhs.true127.if.end194_crit_edge
  %newlen.0394 = phi i32 [ %newlen.0.ph, %if.end189.if.end194_crit_edge ], [ %21, %land.lhs.true127.if.end194_crit_edge ]
  %len195 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 17
  %150 = ptrtoint ptr %len195 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %len195, align 8
  %152 = ptrtoint ptr %minlen to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %minlen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %153)
  %cmp197 = icmp eq i32 %151, %153
  br i1 %cmp197, label %if.end194.cond.end207_crit_edge, label %cond.false206, !prof !154

if.end194.cond.end207_crit_edge:                  ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end207

cond.false206:                                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.6, i32 noundef 796) #12
  br label %cond.end207

cond.end207:                                      ; preds = %cond.false206, %if.end194.cond.end207_crit_edge
  %154 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mp, align 4
  %pag_agno209 = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %156 = ptrtoint ptr %pag_agno209 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %pag_agno209, align 4
  %158 = ptrtoint ptr %agbno to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %agbno, align 4
  %160 = ptrtoint ptr %len195 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %len195, align 8
  %call212 = call i32 @prandom_u32() #12
  %call213 = call i32 @xfs_ialloc_inode_init(ptr noundef %155, ptr noundef %tp, ptr noundef null, i32 noundef %newlen.0394, i32 noundef %157, i32 noundef %159, i32 noundef %161, i32 noundef %call212)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.end216, label %cond.end207.cleanup_crit_edge

cond.end207.cleanup_crit_edge:                    ; preds = %cond.end207
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end216:                                        ; preds = %cond.end207
  %162 = ptrtoint ptr %agbno to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %agbno, align 4
  %164 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mp, align 4
  %sb_inopblog220 = getelementptr inbounds %struct.xfs_sb, ptr %165, i32 0, i32 23
  %166 = ptrtoint ptr %sb_inopblog220 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %sb_inopblog220, align 1
  %conv221 = zext i8 %167 to i32
  %shl222 = shl i32 %163, %conv221
  %168 = ptrtoint ptr %newino to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %shl222, ptr %newino, align 4
  %169 = ptrtoint ptr %allocmask to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %allocmask, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %170)
  %tobool.i382.not = icmp eq i16 %170, -1
  br i1 %tobool.i382.not, label %if.else267, label %if.then227

if.then227:                                       ; preds = %if.end216
  call fastcc void @xfs_align_sparse_ino(ptr noundef %165, ptr noundef nonnull %newino, ptr noundef nonnull %allocmask)
  %171 = ptrtoint ptr %newino to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %newino, align 4
  %173 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %rec, align 8
  %174 = ptrtoint ptr %allocmask to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %allocmask, align 2
  %neg230 = xor i16 %175, -1
  %176 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %neg230, ptr %0, align 4
  %conv232 = trunc i32 %newlen.0394 to i8
  %177 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv232, ptr %1, align 2
  %178 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %conv232, ptr %2, align 1
  %179 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 -1, ptr %3, align 8
  %call235 = call fastcc i32 @xfs_inobt_insert_sprec(ptr noundef %165, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i32 noundef 4, ptr noundef nonnull %rec, i1 noundef zeroext true)
  %180 = zext i32 %call235 to i64
  call void @__sanitizer_cov_trace_switch(i64 %180, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %call235, label %if.then227.cleanup_crit_edge [
    i32 -117, label %if.then238
    i32 0, label %if.end257
  ]

if.then227.cleanup_crit_edge:                     ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then238:                                       ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #14
  %181 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %mp, align 4
  %183 = ptrtoint ptr %pag_agno209 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %pag_agno209, align 4
  %conv241 = zext i32 %184 to i64
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %182, i32 0, i32 64, i32 15
  %185 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %agino_log, align 8
  %sh_prom244 = zext i32 %186 to i64
  %shl245 = shl i64 %conv241, %sh_prom244
  %187 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %rec, align 8
  %conv247 = zext i32 %188 to i64
  %or248 = or i64 %shl245, %conv247
  %189 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %0, align 4
  %conv250 = zext i16 %190 to i32
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %1, align 2
  %conv252 = zext i8 %192 to i32
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %182, ptr noundef nonnull @.str.27, i64 noundef %or248, i32 noundef %conv250, i32 noundef %conv252) #12
  %193 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mp, align 4
  call void @xfs_do_force_shutdown(ptr noundef %194, i32 noundef 8, ptr noundef nonnull @.str.6, i32 noundef 842) #12
  br label %cleanup

if.end257:                                        ; preds = %if.then227
  %195 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mp, align 4
  %m_features.i383 = getelementptr inbounds %struct.xfs_mount, ptr %196, i32 0, i32 61
  %197 = ptrtoint ptr %m_features.i383 to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %m_features.i383, align 8
  %and.i384 = and i64 %198, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i384)
  %tobool.i385.not = icmp eq i64 %and.i384, 0
  br i1 %tobool.i385.not, label %if.end257.if.end282_crit_edge, label %if.then260

if.end257.if.end282_crit_edge:                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end282

if.then260:                                       ; preds = %if.end257
  %call262 = call fastcc i32 @xfs_inobt_insert_sprec(ptr noundef %196, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i32 noundef 5, ptr noundef nonnull %rec, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call262)
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %if.then260.if.end282_crit_edge, label %if.then260.cleanup_crit_edge

if.then260.cleanup_crit_edge:                     ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then260.if.end282_crit_edge:                   ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end282

if.else267:                                       ; preds = %if.end216
  %call269 = call fastcc i32 @xfs_inobt_insert(ptr noundef %165, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i32 noundef %shl222, i32 noundef %newlen.0394, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %if.end272, label %if.else267.cleanup_crit_edge

if.else267.cleanup_crit_edge:                     ; preds = %if.else267
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end272:                                        ; preds = %if.else267
  %199 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mp, align 4
  %m_features.i386 = getelementptr inbounds %struct.xfs_mount, ptr %200, i32 0, i32 61
  %201 = ptrtoint ptr %m_features.i386 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %m_features.i386, align 8
  %and.i387 = and i64 %202, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i387)
  %tobool.i388.not = icmp eq i64 %and.i387, 0
  br i1 %tobool.i388.not, label %if.end272.if.end282_crit_edge, label %if.then275

if.end272.if.end282_crit_edge:                    ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end282

if.then275:                                       ; preds = %if.end272
  %call277 = call fastcc i32 @xfs_inobt_insert(ptr noundef %200, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i32 noundef %shl222, i32 noundef %newlen.0394, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277)
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %if.then275.if.end282_crit_edge, label %if.then275.cleanup_crit_edge

if.then275.cleanup_crit_edge:                     ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then275.if.end282_crit_edge:                   ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end282

if.end282:                                        ; preds = %if.then275.if.end282_crit_edge, %if.end272.if.end282_crit_edge, %if.then260.if.end282_crit_edge, %if.end257.if.end282_crit_edge
  %agi_count = getelementptr inbounds %struct.xfs_agi, ptr %34, i32 0, i32 4
  %203 = ptrtoint ptr %agi_count to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %agi_count, align 4
  %add.i = add i32 %204, %newlen.0394
  store i32 %add.i, ptr %agi_count, align 4
  %agi_freecount = getelementptr inbounds %struct.xfs_agi, ptr %34, i32 0, i32 7
  %205 = ptrtoint ptr %agi_freecount to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %agi_freecount, align 4
  %add.i389 = add i32 %206, %newlen.0394
  store i32 %add.i389, ptr %agi_freecount, align 4
  %pagi_freecount = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 13
  %207 = ptrtoint ptr %pagi_freecount to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %pagi_freecount, align 4
  %add283 = add i32 %208, %newlen.0394
  store i32 %add283, ptr %pagi_freecount, align 4
  %pagi_count = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 14
  %209 = ptrtoint ptr %pagi_count to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %pagi_count, align 4
  %add284 = add i32 %210, %newlen.0394
  store i32 %add284, ptr %pagi_count, align 4
  %211 = ptrtoint ptr %newino to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %newino, align 4
  %213 = ptrtoint ptr %agi_newino to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %agi_newino, align 8
  call void @xfs_ialloc_log_agi(ptr noundef %tp, ptr noundef %agbp, i32 noundef 400)
  %conv286 = sext i32 %newlen.0394 to i64
  call void @xfs_trans_mod_sb(ptr noundef %tp, i32 noundef 1, i64 noundef %conv286) #12
  call void @xfs_trans_mod_sb(ptr noundef %tp, i32 noundef 2, i64 noundef %conv286) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end282, %if.then275.cleanup_crit_edge, %if.else267.cleanup_crit_edge, %if.then260.cleanup_crit_edge, %if.then238, %if.then227.cleanup_crit_edge, %cond.end207.cleanup_crit_edge, %if.end189.cleanup_crit_edge, %sparse_alloc.cleanup_crit_edge, %if.then96.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end282 ], [ -28, %land.lhs.true5.cleanup_crit_edge ], [ %call36, %if.then28.cleanup_crit_edge ], [ %call86, %if.end68.cleanup_crit_edge ], [ %call114, %if.then96.cleanup_crit_edge ], [ %call166, %sparse_alloc.cleanup_crit_edge ], [ -11, %if.end189.cleanup_crit_edge ], [ %call213, %cond.end207.cleanup_crit_edge ], [ %call235, %if.then227.cleanup_crit_edge ], [ -117, %if.then238 ], [ %call262, %if.then260.cleanup_crit_edge ], [ %call269, %if.else267.cleanup_crit_edge ], [ %call277, %if.then275.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %allocmask) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newino) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %args) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_vextent(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @xfs_align_sparse_ino(ptr nocapture noundef readonly %mp, ptr nocapture noundef %startino, ptr nocapture noundef %allocmask) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %startino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %startino, align 4
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 23
  %2 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sb_inopblog, align 1
  %conv = zext i8 %3 to i32
  %shr = lshr i32 %1, %conv
  %sb_inoalignmt = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 37
  %4 = ptrtoint ptr %sb_inoalignmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_inoalignmt, align 4
  %rem = urem i32 %shr, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl i32 %rem, %conv
  %sub = sub i32 %1, %shl
  %6 = ptrtoint ptr %startino to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %startino, align 4
  %div15 = lshr i32 %shl, 2
  %7 = ptrtoint ptr %allocmask to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %allocmask, align 2
  %conv5 = zext i16 %8 to i32
  %shl6 = shl i32 %conv5, %div15
  %conv7 = trunc i32 %shl6 to i16
  store i16 %conv7, ptr %allocmask, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_inobt_insert_sprec(ptr noundef %mp, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i32 noundef %btnum, ptr noundef %nrec, i1 noundef zeroext %merge) #4 align 64 {
entry:
  %i = alloca i32, align 4
  %rec = alloca %struct.xfs_inobt_rec_incore, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %i, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec) #12
  %1 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 1
  %2 = call ptr @memset(ptr %rec, i32 255, i32 16)
  %call = tail call ptr @xfs_inobt_init_cursor(ptr noundef %mp, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i32 noundef %btnum) #12
  %3 = ptrtoint ptr %nrec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nrec, align 8
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call, i32 0, i32 6
  %5 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %bc_rec.i, align 8
  %ir_holemask.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 1
  %6 = call ptr @memset(ptr %ir_holemask.i, i32 0, i32 12)
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.error81_crit_edge

entry.error81_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %error81

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then2, label %if.end13

if.then2:                                         ; preds = %if.end
  %ir_holemask = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %nrec, i32 0, i32 1
  %9 = ptrtoint ptr %ir_holemask to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ir_holemask, align 4
  %ir_count = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %nrec, i32 0, i32 2
  %11 = ptrtoint ptr %ir_count to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ir_count, align 2
  %ir_freecount = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %nrec, i32 0, i32 3
  %13 = ptrtoint ptr %ir_freecount to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ir_freecount, align 1
  %ir_free = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %nrec, i32 0, i32 4
  %15 = ptrtoint ptr %ir_free to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ir_free, align 8
  %17 = ptrtoint ptr %ir_holemask.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %10, ptr %ir_holemask.i, align 4
  %ir_count.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 2
  %18 = ptrtoint ptr %ir_count.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %12, ptr %ir_count.i, align 2
  %ir_freecount.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 3
  %19 = ptrtoint ptr %ir_freecount.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %14, ptr %ir_freecount.i, align 1
  %ir_free.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call, i32 0, i32 6, i32 0, i32 1
  %20 = ptrtoint ptr %ir_free.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %16, ptr %ir_free.i, align 8
  %call.i119 = call i32 @xfs_btree_insert(ptr noundef %call, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool4.not = icmp eq i32 %call.i119, 0
  br i1 %tobool4.not, label %if.end6, label %if.then2.error81_crit_edge

if.then2.error81_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %error81

if.end6:                                          ; preds = %if.then2
  %21 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp7.not = icmp eq i32 %22, 1
  br i1 %cmp7.not, label %if.end6.cleanup_crit_edge, label %__here, !prof !154

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

__here:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !179
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 543, ptr noundef blockaddress(@xfs_inobt_insert_sprec, %__here)) #12
  br label %error81

if.end13:                                         ; preds = %if.end
  br i1 %merge, label %if.then15, label %if.end13.if.end76_crit_edge

if.end13.if.end76_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then15:                                        ; preds = %if.end13
  %call16 = call i32 @xfs_inobt_get_rec(ptr noundef %call, ptr noundef nonnull %rec, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then15.error81_crit_edge

if.then15.error81_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %error81

if.end19:                                         ; preds = %if.then15
  %23 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp20.not = icmp eq i32 %24, 1
  br i1 %cmp20.not, label %if.end33, label %__here29, !prof !154

__here29:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !180
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 559, ptr noundef blockaddress(@xfs_inobt_insert_sprec, %__here29)) #12
  br label %error81

if.end33:                                         ; preds = %if.end19
  %25 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rec, align 8
  %27 = ptrtoint ptr %nrec to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nrec, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp36.not = icmp eq i32 %26, %28
  br i1 %cmp36.not, label %if.end49, label %__here45, !prof !154

__here45:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !181
  call void @xfs_corruption_error(ptr noundef nonnull @.str.29, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 563, ptr noundef blockaddress(@xfs_inobt_insert_sprec, %__here45)) #12
  br label %error81

if.end49:                                         ; preds = %if.end33
  %call50 = call fastcc zeroext i1 @__xfs_inobt_can_merge(ptr noundef %nrec, ptr noundef nonnull %rec)
  br i1 %call50, label %if.end64, label %__here60, !prof !154

__here60:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !182
  call void @xfs_corruption_error(ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 572, ptr noundef blockaddress(@xfs_inobt_insert_sprec, %__here60)) #12
  br label %error81

if.end64:                                         ; preds = %if.end49
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %29 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pag_agno, align 4
  %31 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rec, align 8
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %1, align 4
  %35 = ptrtoint ptr %nrec to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nrec, align 8
  %ir_holemask68 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %nrec, i32 0, i32 1
  %37 = ptrtoint ptr %ir_holemask68 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ir_holemask68, align 4
  call fastcc void @trace_xfs_irec_merge_pre(ptr noundef %mp, i32 noundef %30, i32 noundef %32, i16 noundef zeroext %34, i32 noundef %36, i16 noundef zeroext %38)
  call fastcc void @__xfs_inobt_rec_merge(ptr noundef %nrec, ptr noundef nonnull %rec)
  %39 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pag_agno, align 4
  %41 = ptrtoint ptr %nrec to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nrec, align 8
  %43 = ptrtoint ptr %ir_holemask68 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ir_holemask68, align 4
  call fastcc void @trace_xfs_irec_merge_post(ptr noundef %mp, i32 noundef %40, i32 noundef %42, i16 noundef zeroext %44)
  %call72 = call i32 @xfs_inobt_rec_check_count(ptr noundef %mp, ptr noundef %nrec) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end64.if.end76_crit_edge, label %if.end64.error81_crit_edge

if.end64.error81_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %error81

if.end64.if.end76_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.end76:                                         ; preds = %if.end64.if.end76_crit_edge, %if.end13.if.end76_crit_edge
  %call77 = call fastcc i32 @xfs_inobt_update(ptr noundef %call, ptr noundef %nrec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end76.cleanup_crit_edge, label %if.end76.error81_crit_edge

if.end76.error81_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %error81

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

error81:                                          ; preds = %if.end76.error81_crit_edge, %if.end64.error81_crit_edge, %__here60, %__here45, %__here29, %if.then15.error81_crit_edge, %__here, %if.then2.error81_crit_edge, %entry.error81_crit_edge
  %error.0 = phi i32 [ %call.i, %entry.error81_crit_edge ], [ %call.i119, %if.then2.error81_crit_edge ], [ -117, %__here ], [ %call16, %if.then15.error81_crit_edge ], [ -117, %__here29 ], [ -117, %__here45 ], [ -117, %__here60 ], [ %call72, %if.end64.error81_crit_edge ], [ %call77, %if.end76.error81_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %error81, %if.end76.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  %.sink = phi i32 [ 1, %error81 ], [ 0, %if.end76.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  %retval.0 = phi i32 [ %error.0, %error81 ], [ 0, %if.end76.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @xfs_btree_del_cursor(ptr noundef %call, i32 noundef %.sink) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_do_force_shutdown(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_inobt_insert(ptr noundef %mp, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i32 noundef %newino, i32 noundef %newlen, i32 noundef %btnum) unnamed_addr #4 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %i, align 4, !annotation !152
  %call = tail call ptr @xfs_inobt_init_cursor(ptr noundef %mp, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i32 noundef %btnum) #12
  %add = add i32 %newlen, %newino
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %newino)
  %cmp37 = icmp ugt i32 %add, %newino
  br i1 %cmp37, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call, i32 0, i32 6
  %ir_holemask.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 1
  %ir_count.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 2
  %ir_freecount.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 3
  %ir_free.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call, i32 0, i32 6, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %thisino.038 = phi i32 [ %newino, %for.body.lr.ph ], [ %add19, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %thisino.038, ptr %bc_rec.i, align 8
  %2 = call ptr @memset(ptr %ir_holemask.i, i32 0, i32 12)
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.end.cond.end_crit_edge, label %cond.false, !prof !154

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.6, i32 noundef 195) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %5 = ptrtoint ptr %ir_holemask.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %ir_holemask.i, align 4
  %6 = ptrtoint ptr %ir_count.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %ir_count.i, align 2
  %7 = ptrtoint ptr %ir_freecount.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %ir_freecount.i, align 1
  %8 = ptrtoint ptr %ir_free.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %ir_free.i, align 8
  %call.i35 = call i32 @xfs_btree_insert(ptr noundef %call, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool6.not = icmp eq i32 %call.i35, 0
  br i1 %tobool6.not, label %if.end8, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %cond.end
  %9 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp9 = icmp eq i32 %10, 1
  br i1 %cmp9, label %if.end8.for.inc_crit_edge, label %cond.false17, !prof !154

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

cond.false17:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.6, i32 noundef 205) #12
  br label %for.inc

for.inc:                                          ; preds = %cond.false17, %if.end8.for.inc_crit_edge
  %add19 = add i32 %thisino.038, 64
  %cmp = icmp ult i32 %add19, %add
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ], [ 1, %cond.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ], [ %call.i35, %cond.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @xfs_btree_del_cursor(ptr noundef %call, i32 noundef %.sink) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_mod_sb(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__xfs_inobt_can_merge(ptr noundef %trec, ptr noundef %srec) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %trec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trec, align 8
  %2 = ptrtoint ptr %srec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %srec, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ir_holemask = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %trec, i32 0, i32 1
  %4 = ptrtoint ptr %ir_holemask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ir_holemask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.i.not = icmp eq i16 %5, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %ir_holemask2 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %srec, i32 0, i32 1
  %6 = ptrtoint ptr %ir_holemask2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ir_holemask2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.i33.not = icmp eq i16 %7, 0
  br i1 %tobool.i33.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %ir_count = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %trec, i32 0, i32 2
  %8 = ptrtoint ptr %ir_count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ir_count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %lor.lhs.false6

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false6:                                   ; preds = %if.end5
  %ir_count7 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %srec, i32 0, i32 2
  %10 = ptrtoint ptr %ir_count7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ir_count7, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  %conv = zext i8 %9 to i32
  %conv13 = zext i8 %11 to i32
  %add = add nuw nsw i32 %conv13, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp14 = icmp ugt i32 %add, 64
  %or.cond = select i1 %tobool8.not, i1 true, i1 %cmp14
  br i1 %or.cond, label %lor.lhs.false6.cleanup_crit_edge, label %if.end17

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = tail call i64 @xfs_inobt_irec_to_allocmask(ptr noundef %trec) #12
  %call19 = tail call i64 @xfs_inobt_irec_to_allocmask(ptr noundef %srec) #12
  %and = and i64 %call19, %call18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool20.not = icmp eq i64 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %lor.lhs.false6.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %lor.lhs.false6.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ], [ %tobool20.not, %if.end17 ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_irec_merge_pre(ptr noundef %mp, i32 noundef %agno, i32 noundef %agino, i16 noundef zeroext %holemask, i32 noundef %nagino, i16 noundef zeroext %nholemask) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_irec_merge_pre, i32 0, i32 1), ptr blockaddress(@trace_xfs_irec_merge_pre, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !169

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !142) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !154

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !142) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !183
  %call42 = tail call i32 @__traceiter_xfs_irec_merge_pre(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agino, i16 noundef zeroext %holemask, i32 noundef %nagino, i16 noundef zeroext %nholemask) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !184
  %13 = tail call i32 @llvm.read_register.i32(metadata !142) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !142) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !154

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !142) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_irec_merge_pre, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_irec_merge_pre, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_irec_merge_pre.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_irec_merge_pre.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 900, ptr noundef nonnull @.str.32) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !173
  %31 = tail call i32 @llvm.read_register.i32(metadata !142) #12
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

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__xfs_inobt_rec_merge(ptr nocapture noundef %trec, ptr nocapture noundef readonly %srec) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %trec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trec, align 8
  %2 = ptrtoint ptr %srec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %srec, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !154

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.6, i32 noundef 486) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %ir_count = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %srec, i32 0, i32 2
  %4 = ptrtoint ptr %ir_count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ir_count, align 2
  %ir_count3 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %trec, i32 0, i32 2
  %6 = ptrtoint ptr %ir_count3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ir_count3, align 2
  %add = add i8 %7, %5
  store i8 %add, ptr %ir_count3, align 2
  %ir_freecount = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %srec, i32 0, i32 3
  %8 = ptrtoint ptr %ir_freecount to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ir_freecount, align 1
  %ir_freecount7 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %trec, i32 0, i32 3
  %10 = ptrtoint ptr %ir_freecount7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ir_freecount7, align 1
  %add9 = add i8 %11, %9
  store i8 %add9, ptr %ir_freecount7, align 1
  %ir_holemask = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %srec, i32 0, i32 1
  %12 = ptrtoint ptr %ir_holemask to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ir_holemask, align 4
  %ir_holemask12 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %trec, i32 0, i32 1
  %14 = ptrtoint ptr %ir_holemask12 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ir_holemask12, align 4
  %and25 = and i16 %15, %13
  store i16 %and25, ptr %ir_holemask12, align 4
  %ir_free = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %srec, i32 0, i32 4
  %16 = ptrtoint ptr %ir_free to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ir_free, align 8
  %ir_free15 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %trec, i32 0, i32 4
  %18 = ptrtoint ptr %ir_free15 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ir_free15, align 8
  %and16 = and i64 %19, %17
  store i64 %and16, ptr %ir_free15, align 8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_irec_merge_post(ptr noundef %mp, i32 noundef %agno, i32 noundef %agino, i16 noundef zeroext %holemask) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_irec_merge_post, i32 0, i32 1), ptr blockaddress(@trace_xfs_irec_merge_post, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !169

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !142) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !154

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !142) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !185
  %call42 = tail call i32 @__traceiter_xfs_irec_merge_post(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agino, i16 noundef zeroext %holemask) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !186
  %13 = tail call i32 @llvm.read_register.i32(metadata !142) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !142) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !154

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !142) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_irec_merge_post, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_irec_merge_post, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_irec_merge_post.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_irec_merge_post.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 924, ptr noundef nonnull @.str.32) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !173
  %31 = tail call i32 @llvm.read_register.i32(metadata !142) #12
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
declare dso_local i32 @xfs_inobt_rec_check_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_inobt_update(ptr noundef %cur, ptr nocapture noundef readonly %irec) unnamed_addr #4 align 64 {
entry:
  %rec = alloca %union.xfs_btree_rec, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rec) #12
  %0 = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 1
  %1 = call ptr @memset(ptr %rec, i32 255, i32 24)
  %2 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irec, align 8
  %4 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rec, align 8
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %5 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bc_mp, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 61
  %7 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ir_holemask = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 1
  %9 = ptrtoint ptr %ir_holemask to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ir_holemask, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %0, align 4
  %ir_count = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 2
  %12 = ptrtoint ptr %ir_count to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ir_count, align 2
  %ir_count4 = getelementptr inbounds %struct.anon.94, ptr %0, i32 0, i32 1
  %14 = ptrtoint ptr %ir_count4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %ir_count4, align 2
  %ir_freecount = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 3
  %15 = ptrtoint ptr %ir_freecount to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ir_freecount, align 1
  %ir_freecount6 = getelementptr inbounds %struct.anon.94, ptr %0, i32 0, i32 2
  %17 = ptrtoint ptr %ir_freecount6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %ir_freecount6, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ir_freecount7 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 3
  %18 = ptrtoint ptr %ir_freecount7 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ir_freecount7, align 1
  %conv = zext i8 %19 to i32
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 2
  %ir_free = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 4
  %22 = ptrtoint ptr %ir_free to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ir_free, align 8
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %21, align 8
  %call11 = call i32 @xfs_btree_update(ptr noundef %cur, ptr noundef nonnull %rec) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rec) #12
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_irec_merge_pre(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_irec_merge_post(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_update(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_bhold(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_roll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_bjoin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_dialloc_ag_inobt(ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i64 noundef %parent, ptr nocapture noundef writeonly %inop) #4 align 64 {
entry:
  %first.i = alloca i32, align 4
  %last.i = alloca i32, align 4
  %tcur = alloca ptr, align 4
  %rec = alloca %struct.xfs_inobt_rec_incore, align 8
  %trec = alloca %struct.xfs_inobt_rec_incore, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %doneleft = alloca i32, align 4
  %doneright = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agbp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  %4 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %5 to i64
  %shr = lshr i64 %parent, %sh_prom
  %conv = trunc i64 %shr to i32
  %conv1 = trunc i64 %parent to i32
  %notmask = shl nsw i64 -1, %sh_prom
  %6 = trunc i64 %notmask to i32
  %conv5 = xor i32 %6, -1
  %and = and i32 %conv5, %conv1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tcur) #12
  %7 = ptrtoint ptr %tcur to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %tcur, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec) #12
  %8 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 3
  %9 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 4
  %10 = call ptr @memset(ptr %rec, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %trec) #12
  %11 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %trec, i32 0, i32 3
  %12 = call ptr @memset(ptr %trec, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %13 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %i, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %j) #12
  %14 = ptrtoint ptr %j to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %j, align 4, !annotation !152
  %pagi_init = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 4
  %15 = ptrtoint ptr %pagi_init to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pagi_init, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !153

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.6, i32 noundef 1002) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %pagi_inodeok = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 6
  %17 = ptrtoint ptr %pagi_inodeok to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pagi_inodeok, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool8.not = icmp eq i8 %18, 0
  br i1 %tobool8.not, label %cond.false16, label %cond.end.cond.end17_crit_edge, !prof !153

cond.end.cond.end17_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end17

cond.false16:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.6, i32 noundef 1003) #12
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %cond.end.cond.end17_crit_edge
  %pagi_freecount = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 13
  %19 = ptrtoint ptr %pagi_freecount to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pagi_freecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not = icmp eq i32 %20, 0
  br i1 %cmp.not, label %cond.false26, label %cond.end17.cond.end27_crit_edge, !prof !153

cond.end17.cond.end27_crit_edge:                  ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end27

cond.false26:                                     ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.6, i32 noundef 1004) #12
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false26, %cond.end17.cond.end27_crit_edge
  %agi_newino = getelementptr inbounds %struct.xfs_agi, ptr %3, i32 0, i32 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %pagl_pagino = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 15
  %pagl_leftrec = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 16
  %pagl_rightrec = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 17
  br label %restart_pagno

restart_pagno:                                    ; preds = %cleanup176, %cond.end27
  %searchdistance.0 = phi i32 [ 10, %cond.end27 ], [ %dec, %cleanup176 ]
  %pagino.0 = phi i32 [ %and, %cond.end27 ], [ %pagino.1, %cleanup176 ]
  %call = call ptr @xfs_inobt_init_cursor(ptr noundef %1, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pagino.0)
  %tobool28.not = icmp eq i32 %pagino.0, 0
  br i1 %tobool28.not, label %if.then, label %restart_pagno.if.end_crit_edge

restart_pagno.if.end_crit_edge:                   ; preds = %restart_pagno
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %restart_pagno
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %agi_newino to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %agi_newino, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %restart_pagno.if.end_crit_edge
  %pagino.1 = phi i32 [ %pagino.0, %restart_pagno.if.end_crit_edge ], [ %22, %if.then ]
  %call29 = call fastcc i32 @xfs_check_agi_freecount(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end.error0_crit_edge

if.end.error0_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %error0

if.end32:                                         ; preds = %if.end
  %23 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pag_agno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv)
  %cmp33 = icmp eq i32 %24, %conv
  br i1 %cmp33, label %if.then35, label %if.end32.if.end180_crit_edge

if.end32.if.end180_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end180

if.then35:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %doneleft) #12
  %25 = ptrtoint ptr %doneleft to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %doneleft, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %doneright) #12
  %26 = ptrtoint ptr %doneright to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %doneright, align 4, !annotation !152
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call, i32 0, i32 6
  %27 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %pagino.1, ptr %bc_rec.i, align 8
  %ir_holemask.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 1
  %28 = call ptr @memset(ptr %ir_holemask.i, i32 0, i32 12)
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %call, i32 noundef 1, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool37.not = icmp eq i32 %call.i, 0
  br i1 %tobool37.not, label %if.end39, label %if.then35.cleanup176.thread_crit_edge

if.then35.cleanup176.thread_crit_edge:            ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup176.thread

if.end39:                                         ; preds = %if.then35
  %29 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp40.not = icmp eq i32 %30, 1
  br i1 %cmp40.not, label %if.end51, label %__here, !prof !154

__here:                                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !187
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 1029, ptr noundef blockaddress(@xfs_dialloc_ag_inobt, %__here)) #12
  br label %cleanup176.thread

if.end51:                                         ; preds = %if.end39
  %call52 = call i32 @xfs_inobt_get_rec(ptr noundef %call, ptr noundef nonnull %rec, ptr noundef nonnull %j)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.cleanup176.thread_crit_edge

if.end51.cleanup176.thread_crit_edge:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup176.thread

if.end55:                                         ; preds = %if.end51
  %31 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %j, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp56.not = icmp eq i32 %32, 1
  br i1 %cmp56.not, label %if.end69, label %__here65, !prof !154

__here65:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !188
  call void @xfs_corruption_error(ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 1037, ptr noundef blockaddress(@xfs_dialloc_ag_inobt, %__here65)) #12
  br label %cleanup176.thread

if.end69:                                         ; preds = %if.end55
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp71.not = icmp eq i8 %34, 0
  br i1 %cmp71.not, label %if.end74, label %if.end69.cleanup176.thread468_crit_edge

if.end69.cleanup176.thread468_crit_edge:          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup176.thread468

if.end74:                                         ; preds = %if.end69
  %call75 = call i32 @xfs_btree_dup_cursor(ptr noundef %call, ptr noundef nonnull %tcur) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end74.cleanup176.thread_crit_edge

if.end74.cleanup176.thread_crit_edge:             ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup176.thread

if.end78:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pagino.1)
  %cmp79.not = icmp eq i32 %pagino.1, -1
  br i1 %cmp79.not, label %if.end78.if.else_crit_edge, label %land.lhs.true

if.end78.if.else_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end78
  %35 = ptrtoint ptr %pagl_pagino to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pagl_pagino, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %pagino.1)
  %cmp81 = icmp eq i32 %36, %pagino.1
  br i1 %cmp81, label %land.lhs.true83, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true83:                                  ; preds = %land.lhs.true
  %37 = ptrtoint ptr %pagl_leftrec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pagl_leftrec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp84.not = icmp eq i32 %38, -1
  br i1 %cmp84.not, label %land.lhs.true83.if.else_crit_edge, label %land.lhs.true86

land.lhs.true83.if.else_crit_edge:                ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true86:                                  ; preds = %land.lhs.true83
  %39 = ptrtoint ptr %pagl_rightrec to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pagl_rightrec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp87.not = icmp eq i32 %40, -1
  br i1 %cmp87.not, label %land.lhs.true86.if.else_crit_edge, label %if.then89

land.lhs.true86.if.else_crit_edge:                ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then89:                                        ; preds = %land.lhs.true86
  %41 = ptrtoint ptr %tcur to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tcur, align 4
  %call91 = call fastcc i32 @xfs_ialloc_get_rec(ptr noundef %42, i32 noundef %38, ptr noundef nonnull %trec, ptr noundef nonnull %doneleft)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.then89.cleanup176.thread459_crit_edge

if.then89.cleanup176.thread459_crit_edge:         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup176.thread459

if.end94:                                         ; preds = %if.then89
  %43 = ptrtoint ptr %pagl_rightrec to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pagl_rightrec, align 4
  %call96 = call fastcc i32 @xfs_ialloc_get_rec(ptr noundef %call, i32 noundef %44, ptr noundef nonnull %rec, ptr noundef nonnull %doneright)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end94.if.end108_crit_edge, label %if.end94.cleanup176.thread459_crit_edge

if.end94.cleanup176.thread459_crit_edge:          ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup176.thread459

if.end94.if.end108_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end108

if.else:                                          ; preds = %land.lhs.true86.if.else_crit_edge, %land.lhs.true83.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end78.if.else_crit_edge
  %45 = ptrtoint ptr %tcur to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tcur, align 4
  %call100 = call fastcc i32 @xfs_ialloc_next_rec(ptr noundef %46, ptr noundef nonnull %trec, ptr noundef nonnull %doneleft, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.else.cleanup176.thread459_crit_edge

if.else.cleanup176.thread459_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup176.thread459

if.end103:                                        ; preds = %if.else
  %call104 = call fastcc i32 @xfs_ialloc_next_rec(ptr noundef %call, ptr noundef nonnull %rec, ptr noundef nonnull %doneright, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end103.if.end108_crit_edge, label %if.end103.cleanup176.thread459_crit_edge

if.end103.cleanup176.thread459_crit_edge:         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup176.thread459

if.end103.if.end108_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end108

if.end108:                                        ; preds = %if.end103.if.end108_crit_edge, %if.end94.if.end108_crit_edge
  %sub119.neg = add i32 %pagino.1, -63
  br label %while.cond

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %if.end108
  %searchdistance.1 = phi i32 [ %searchdistance.0, %if.end108 ], [ %dec, %cleanup.while.cond_crit_edge ]
  %dec = add i32 %searchdistance.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp109 = icmp sgt i32 %dec, 0
  br i1 %cmp109, label %land.rhs, label %cleanup176.thread473

land.rhs:                                         ; preds = %while.cond
  %47 = ptrtoint ptr %doneleft to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %doneleft, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool111.not = icmp eq i32 %48, 0
  %49 = ptrtoint ptr %doneright to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %doneright, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool117.not = icmp eq i32 %50, 0
  br i1 %tobool111.not, label %land.lhs.true116, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  br i1 %tobool117.not, label %lor.rhs.land.lhs.true143.critedge_crit_edge, label %cleanup176

lor.rhs.land.lhs.true143.critedge_crit_edge:      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true143.critedge

land.lhs.true116:                                 ; preds = %land.rhs
  br i1 %tobool117.not, label %if.end129, label %land.lhs.true116.land.lhs.true131_crit_edge

land.lhs.true116.land.lhs.true131_crit_edge:      ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true131

if.end129:                                        ; preds = %land.lhs.true116
  %51 = ptrtoint ptr %trec to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %trec, align 8
  %sub120 = sub i32 %sub119.neg, %52
  %53 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rec, align 8
  %sub122 = sub i32 %54, %pagino.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub120, i32 %sub122)
  %cmp123 = icmp ult i32 %sub120, %sub122
  br i1 %cmp123, label %if.end129.land.lhs.true131_crit_edge, label %if.end129.land.lhs.true143.critedge_crit_edge

if.end129.land.lhs.true143.critedge_crit_edge:    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true143.critedge

if.end129.land.lhs.true131_crit_edge:             ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true131

land.lhs.true131:                                 ; preds = %if.end129.land.lhs.true131_crit_edge, %land.lhs.true116.land.lhs.true131_crit_edge
  %55 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool134.not = icmp eq i8 %56, 0
  br i1 %tobool134.not, label %if.then155.critedge, label %if.then135

if.then135:                                       ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_btree_del_cursor(ptr noundef %call, i32 noundef 0) #12
  %57 = ptrtoint ptr %tcur to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tcur, align 4
  %59 = ptrtoint ptr %trec to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %trec, align 8
  %61 = ptrtoint ptr %pagl_leftrec to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %pagl_leftrec, align 4
  %62 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rec, align 8
  %64 = ptrtoint ptr %pagl_rightrec to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %pagl_rightrec, align 4
  %65 = ptrtoint ptr %pagl_pagino to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %pagino.1, ptr %pagl_pagino, align 4
  %66 = call ptr @memcpy(ptr %rec, ptr %trec, i32 16)
  br label %cleanup176.thread468

land.lhs.true143.critedge:                        ; preds = %if.end129.land.lhs.true143.critedge_crit_edge, %lor.rhs.land.lhs.true143.critedge_crit_edge
  %67 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool146.not = icmp eq i8 %68, 0
  br i1 %tobool146.not, label %if.else157, label %if.then147

if.then147:                                       ; preds = %land.lhs.true143.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %tcur to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tcur, align 4
  call void @xfs_btree_del_cursor(ptr noundef %70, i32 noundef 0) #12
  %71 = ptrtoint ptr %trec to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %trec, align 8
  %73 = ptrtoint ptr %pagl_leftrec to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %pagl_leftrec, align 4
  %74 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rec, align 8
  %76 = ptrtoint ptr %pagl_rightrec to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %pagl_rightrec, align 4
  %77 = ptrtoint ptr %pagl_pagino to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %pagino.1, ptr %pagl_pagino, align 4
  br label %cleanup176.thread468

if.then155.critedge:                              ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %tcur to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tcur, align 4
  %call156 = call fastcc i32 @xfs_ialloc_next_rec(ptr noundef %79, ptr noundef nonnull %trec, ptr noundef nonnull %doneleft, i32 noundef 1)
  br label %cleanup

if.else157:                                       ; preds = %land.lhs.true143.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %call158 = call fastcc i32 @xfs_ialloc_next_rec(ptr noundef %call, ptr noundef nonnull %rec, ptr noundef nonnull %doneright, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.else157, %if.then155.critedge
  %error.2 = phi i32 [ %call156, %if.then155.critedge ], [ %call158, %if.else157 ]
  %tobool160.not = icmp eq i32 %error.2, 0
  br i1 %tobool160.not, label %cleanup.while.cond_crit_edge, label %error1.loopexit

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

cleanup176.thread473:                             ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %tcur to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tcur, align 4
  call void @xfs_btree_del_cursor(ptr noundef %81, i32 noundef 0) #12
  %82 = ptrtoint ptr %trec to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %trec, align 8
  %84 = ptrtoint ptr %pagl_leftrec to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %pagl_leftrec, align 4
  %85 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rec, align 8
  %87 = ptrtoint ptr %pagl_rightrec to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %pagl_rightrec, align 4
  %88 = ptrtoint ptr %pagl_pagino to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %pagino.1, ptr %pagl_pagino, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %doneright) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %doneleft) #12
  br label %if.end180

cleanup176.thread:                                ; preds = %if.end74.cleanup176.thread_crit_edge, %__here65, %if.end51.cleanup176.thread_crit_edge, %__here, %if.then35.cleanup176.thread_crit_edge
  %error.4.ph = phi i32 [ -117, %__here65 ], [ -117, %__here ], [ %call.i, %if.then35.cleanup176.thread_crit_edge ], [ %call52, %if.end51.cleanup176.thread_crit_edge ], [ %call75, %if.end74.cleanup176.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %doneright) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %doneleft) #12
  br label %error0

cleanup176.thread459:                             ; preds = %if.end103.cleanup176.thread459_crit_edge, %if.else.cleanup176.thread459_crit_edge, %if.end94.cleanup176.thread459_crit_edge, %if.then89.cleanup176.thread459_crit_edge
  %error.4.ph458 = phi i32 [ %call104, %if.end103.cleanup176.thread459_crit_edge ], [ %call100, %if.else.cleanup176.thread459_crit_edge ], [ %call96, %if.end94.cleanup176.thread459_crit_edge ], [ %call91, %if.then89.cleanup176.thread459_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %doneright) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %doneleft) #12
  br label %error1

cleanup176.thread468:                             ; preds = %if.then147, %if.then135, %if.end69.cleanup176.thread468_crit_edge
  %cur.2.ph = phi ptr [ %call, %if.then147 ], [ %58, %if.then135 ], [ %call, %if.end69.cleanup176.thread468_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %doneright) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %doneleft) #12
  br label %alloc_inode

cleanup176:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %pagl_pagino to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %pagl_pagino, align 4
  %90 = ptrtoint ptr %pagl_leftrec to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %pagl_leftrec, align 4
  %91 = ptrtoint ptr %pagl_rightrec to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %pagl_rightrec, align 4
  %92 = ptrtoint ptr %tcur to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tcur, align 4
  call void @xfs_btree_del_cursor(ptr noundef %93, i32 noundef 0) #12
  call void @xfs_btree_del_cursor(ptr noundef %call, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %doneright) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %doneleft) #12
  br label %restart_pagno

if.end180:                                        ; preds = %cleanup176.thread473, %if.end32.if.end180_crit_edge
  %94 = ptrtoint ptr %agi_newino to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %agi_newino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %cmp182.not = icmp eq i32 %95, -1
  br i1 %cmp182.not, label %if.end180.if.end207_crit_edge, label %if.then184

if.end180.if.end207_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

if.then184:                                       ; preds = %if.end180
  %bc_rec.i439 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call, i32 0, i32 6
  %96 = ptrtoint ptr %bc_rec.i439 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %bc_rec.i439, align 8
  %ir_holemask.i440 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i439, i32 0, i32 1
  %97 = call ptr @memset(ptr %ir_holemask.i440, i32 0, i32 12)
  %call.i441 = call i32 @xfs_btree_lookup(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i441)
  %tobool187.not = icmp eq i32 %call.i441, 0
  br i1 %tobool187.not, label %if.end189, label %if.then184.error0_crit_edge

if.then184.error0_crit_edge:                      ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #14
  br label %error0

if.end189:                                        ; preds = %if.then184
  %98 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp190 = icmp eq i32 %99, 1
  br i1 %cmp190, label %if.then192, label %if.end189.if.end207_crit_edge

if.end189.if.end207_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

if.then192:                                       ; preds = %if.end189
  %call193 = call i32 @xfs_inobt_get_rec(ptr noundef %call, ptr noundef nonnull %rec, ptr noundef nonnull %j)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.end196, label %if.then192.error0_crit_edge

if.then192.error0_crit_edge:                      ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #14
  br label %error0

if.end196:                                        ; preds = %if.then192
  %100 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %j, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp197 = icmp eq i32 %101, 1
  br i1 %cmp197, label %land.lhs.true199, label %if.end196.if.end207_crit_edge

if.end196.if.end207_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

land.lhs.true199:                                 ; preds = %if.end196
  %102 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp202.not = icmp eq i8 %103, 0
  br i1 %cmp202.not, label %land.lhs.true199.if.end207_crit_edge, label %land.lhs.true199.alloc_inode_crit_edge

land.lhs.true199.alloc_inode_crit_edge:           ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #14
  br label %alloc_inode

land.lhs.true199.if.end207_crit_edge:             ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

if.end207:                                        ; preds = %land.lhs.true199.if.end207_crit_edge, %if.end196.if.end207_crit_edge, %if.end189.if.end207_crit_edge, %if.end180.if.end207_crit_edge
  %bc_rec.i442 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call, i32 0, i32 6
  %104 = call ptr @memset(ptr %bc_rec.i442, i32 0, i32 16)
  %call.i444 = call i32 @xfs_btree_lookup(ptr noundef %call, i32 noundef 2, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i444)
  %tobool209.not = icmp eq i32 %call.i444, 0
  br i1 %tobool209.not, label %if.end211, label %if.end207.error0_crit_edge

if.end207.error0_crit_edge:                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #14
  br label %error0

if.end211:                                        ; preds = %if.end207
  %105 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp212.not = icmp eq i32 %106, 1
  br i1 %cmp212.not, label %if.end211.for.cond_crit_edge, label %__here221, !prof !154

if.end211.for.cond_crit_edge:                     ; preds = %if.end211
  br label %for.cond

__here221:                                        ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !189
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 1195, ptr noundef blockaddress(@xfs_dialloc_ag_inobt, %__here221)) #12
  br label %error0

for.cond:                                         ; preds = %if.end253.for.cond_crit_edge, %if.end211.for.cond_crit_edge
  %call226 = call i32 @xfs_inobt_get_rec(ptr noundef %call, ptr noundef nonnull %rec, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %if.end229, label %for.cond.error0_crit_edge

for.cond.error0_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %error0

if.end229:                                        ; preds = %for.cond
  %107 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %108)
  %cmp230.not = icmp eq i32 %108, 1
  br i1 %cmp230.not, label %if.end243, label %__here239, !prof !154

__here239:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !190
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 1204, ptr noundef blockaddress(@xfs_dialloc_ag_inobt, %__here239)) #12
  br label %error0

if.end243:                                        ; preds = %if.end229
  %109 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp246.not = icmp eq i8 %110, 0
  br i1 %cmp246.not, label %if.end249, label %if.end243.alloc_inode_crit_edge

if.end243.alloc_inode_crit_edge:                  ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #14
  br label %alloc_inode

if.end249:                                        ; preds = %if.end243
  %call250 = call i32 @xfs_btree_increment(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %if.end253, label %if.end249.error0_crit_edge

if.end249.error0_crit_edge:                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #14
  br label %error0

if.end253:                                        ; preds = %if.end249
  %111 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %i, align 4
  %cmp254.not = icmp eq i32 %112, 1
  br i1 %cmp254.not, label %if.end253.for.cond_crit_edge, label %__here263, !prof !154

if.end253.for.cond_crit_edge:                     ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

__here263:                                        ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !191
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 1213, ptr noundef blockaddress(@xfs_dialloc_ag_inobt, %__here263)) #12
  br label %error0

alloc_inode:                                      ; preds = %if.end243.alloc_inode_crit_edge, %land.lhs.true199.alloc_inode_crit_edge, %cleanup176.thread468
  %cur.4 = phi ptr [ %call, %land.lhs.true199.alloc_inode_crit_edge ], [ %cur.2.ph, %cleanup176.thread468 ], [ %call, %if.end243.alloc_inode_crit_edge ]
  %call268 = call fastcc i32 @xfs_inobt_first_free_inode(ptr noundef nonnull %rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call268)
  %cmp269 = icmp sgt i32 %call268, -1
  br i1 %cmp269, label %cond.end279, label %cond.end279.thread, !prof !154

cond.end279.thread:                               ; preds = %alloc_inode
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.6, i32 noundef 1221) #12
  br label %cond.false289

cond.end279:                                      ; preds = %alloc_inode
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call268)
  %cmp280 = icmp ult i32 %call268, 64
  br i1 %cmp280, label %cond.end279.cond.end290_crit_edge, label %cond.end279.cond.false289_crit_edge, !prof !154

cond.end279.cond.false289_crit_edge:              ; preds = %cond.end279
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false289

cond.end279.cond.end290_crit_edge:                ; preds = %cond.end279
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end290

cond.false289:                                    ; preds = %cond.end279.cond.false289_crit_edge, %cond.end279.thread
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.6, i32 noundef 1222) #12
  br label %cond.end290

cond.end290:                                      ; preds = %cond.false289, %cond.end279.cond.end290_crit_edge
  %113 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rec, align 8
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 23
  %115 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %sb_inopblog, align 1
  %sh_prom293 = zext i8 %116 to i64
  %notmask437 = shl nsw i64 -1, %sh_prom293
  %117 = trunc i64 %notmask437 to i32
  %conv296 = xor i32 %117, -1
  %and297 = and i32 %114, 63
  %rem = and i32 %and297, %conv296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp298 = icmp eq i32 %rem, 0
  br i1 %cmp298, label %cond.end290.cond.end308_crit_edge, label %cond.false307, !prof !154

cond.end290.cond.end308_crit_edge:                ; preds = %cond.end290
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end308

cond.false307:                                    ; preds = %cond.end290
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.6, i32 noundef 1224) #12
  br label %cond.end308

cond.end308:                                      ; preds = %cond.false307, %cond.end290.cond.end308_crit_edge
  %118 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pag_agno, align 4
  %conv310 = zext i32 %119 to i64
  %120 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %agino_log, align 8
  %sh_prom313 = zext i32 %121 to i64
  %shl314 = shl i64 %conv310, %sh_prom313
  %122 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rec, align 8
  %add316 = add i32 %123, %call268
  %conv317 = zext i32 %add316 to i64
  %or = or i64 %shl314, %conv317
  %sh_prom318 = zext i32 %call268 to i64
  %shl319 = shl nuw i64 1, %sh_prom318
  %neg = xor i64 %shl319, -1
  %124 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %9, align 8
  %and320 = and i64 %125, %neg
  store i64 %and320, ptr %9, align 8
  %126 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %8, align 1
  %dec322 = add i8 %127, -1
  store i8 %dec322, ptr %8, align 1
  %call323 = call fastcc i32 @xfs_inobt_update(ptr noundef %cur.4, ptr noundef nonnull %rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323)
  %tobool324.not = icmp eq i32 %call323, 0
  br i1 %tobool324.not, label %if.end326, label %cond.end308.error0_crit_edge

cond.end308.error0_crit_edge:                     ; preds = %cond.end308
  call void @__sanitizer_cov_trace_pc() #14
  br label %error0

if.end326:                                        ; preds = %cond.end308
  %agi_freecount = getelementptr inbounds %struct.xfs_agi, ptr %3, i32 0, i32 7
  %128 = ptrtoint ptr %agi_freecount to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %agi_freecount, align 4
  %add.i = add i32 %129, -1
  store i32 %add.i, ptr %agi_freecount, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first.i) #12
  %130 = ptrtoint ptr %first.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -1, ptr %first.i, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last.i) #12
  %131 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -1, ptr %last.i, align 4, !annotation !152
  %132 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %b_addr, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480673097, i32 %135)
  %cmp.i = icmp eq i32 %135, 1480673097
  br i1 %cmp.i, label %if.end326.xfs_ialloc_log_agi.exit_crit_edge, label %cond.false.i, !prof !154

if.end326.xfs_ialloc_log_agi.exit_crit_edge:      ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_ialloc_log_agi.exit

cond.false.i:                                     ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6, i32 noundef 2444) #12
  br label %xfs_ialloc_log_agi.exit

xfs_ialloc_log_agi.exit:                          ; preds = %cond.false.i, %if.end326.xfs_ialloc_log_agi.exit_crit_edge
  call void @xfs_btree_offsets(i64 noundef 128, ptr noundef nonnull @xfs_ialloc_log_agi.offsets, i32 noundef 11, ptr noundef nonnull %first.i, ptr noundef nonnull %last.i) #12
  %136 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %first.i, align 4
  %138 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %last.i, align 4
  call void @xfs_trans_log_buf(ptr noundef %tp, ptr noundef %agbp, i32 noundef %137, i32 noundef %139) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first.i) #12
  %140 = ptrtoint ptr %pagi_freecount to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %pagi_freecount, align 4
  %dec328 = add i32 %141, -1
  store i32 %dec328, ptr %pagi_freecount, align 4
  %call329 = call fastcc i32 @xfs_check_agi_freecount(ptr noundef %cur.4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call329)
  %tobool330.not = icmp eq i32 %call329, 0
  br i1 %tobool330.not, label %if.end332, label %xfs_ialloc_log_agi.exit.error0_crit_edge

xfs_ialloc_log_agi.exit.error0_crit_edge:         ; preds = %xfs_ialloc_log_agi.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %error0

if.end332:                                        ; preds = %xfs_ialloc_log_agi.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_btree_del_cursor(ptr noundef %cur.4, i32 noundef 0) #12
  call void @xfs_trans_mod_sb(ptr noundef %tp, i32 noundef 2, i64 noundef -1) #12
  %142 = ptrtoint ptr %inop to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %or, ptr %inop, align 8
  br label %cleanup333

error1.loopexit:                                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %doneright) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %doneleft) #12
  br label %error1

error1:                                           ; preds = %error1.loopexit, %cleanup176.thread459
  %error.4465 = phi i32 [ %error.4.ph458, %cleanup176.thread459 ], [ %error.2, %error1.loopexit ]
  %143 = ptrtoint ptr %tcur to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %tcur, align 4
  call void @xfs_btree_del_cursor(ptr noundef %144, i32 noundef 1) #12
  br label %error0

error0:                                           ; preds = %error1, %xfs_ialloc_log_agi.exit.error0_crit_edge, %cond.end308.error0_crit_edge, %__here263, %if.end249.error0_crit_edge, %__here239, %for.cond.error0_crit_edge, %__here221, %if.end207.error0_crit_edge, %if.then192.error0_crit_edge, %if.then184.error0_crit_edge, %cleanup176.thread, %if.end.error0_crit_edge
  %cur.5 = phi ptr [ %call, %error1 ], [ %cur.4, %cond.end308.error0_crit_edge ], [ %cur.4, %xfs_ialloc_log_agi.exit.error0_crit_edge ], [ %call, %if.then184.error0_crit_edge ], [ %call, %if.then192.error0_crit_edge ], [ %call, %if.end207.error0_crit_edge ], [ %call, %__here221 ], [ %call, %__here239 ], [ %call, %__here263 ], [ %call, %cleanup176.thread ], [ %call, %for.cond.error0_crit_edge ], [ %call, %if.end249.error0_crit_edge ], [ %call, %if.end.error0_crit_edge ]
  %error.5 = phi i32 [ %error.4465, %error1 ], [ %call323, %cond.end308.error0_crit_edge ], [ %call329, %xfs_ialloc_log_agi.exit.error0_crit_edge ], [ %call.i441, %if.then184.error0_crit_edge ], [ %call193, %if.then192.error0_crit_edge ], [ %call.i444, %if.end207.error0_crit_edge ], [ -117, %__here221 ], [ -117, %__here239 ], [ -117, %__here263 ], [ %error.4.ph, %cleanup176.thread ], [ %call250, %if.end249.error0_crit_edge ], [ %call226, %for.cond.error0_crit_edge ], [ %call29, %if.end.error0_crit_edge ]
  call void @xfs_btree_del_cursor(ptr noundef %cur.5, i32 noundef 1) #12
  br label %cleanup333

cleanup333:                                       ; preds = %error0, %if.end332
  %retval.0 = phi i32 [ %error.5, %error0 ], [ 0, %if.end332 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %j) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %trec) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tcur) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_check_agi_freecount(ptr noundef %cur) unnamed_addr #0 align 64 {
entry:
  %rec = alloca %struct.xfs_inobt_rec_incore, align 8
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 7
  %0 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bc_nlevels, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec) #12
  %2 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 3
  %3 = call ptr @memset(ptr %rec, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %i, align 4, !annotation !152
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %5 = call ptr @memset(ptr %bc_rec.i, i32 0, i32 16)
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 2, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then.do.body_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.do.body_crit_edge:                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.then.do.body_crit_edge
  %freecount.0 = phi i32 [ %add, %do.cond.do.body_crit_edge ], [ 0, %if.then.do.body_crit_edge ]
  %call3 = call i32 @xfs_inobt_get_rec(ptr noundef %cur, ptr noundef nonnull %rec, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %do.body
  %6 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.end6.do.end_crit_edge, label %if.then8

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then8:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %2, align 1
  %call10 = call i32 @xfs_btree_increment(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.cond, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.cond:                                          ; preds = %if.then8
  %conv9 = zext i8 %9 to i32
  %add = add i32 %freecount.0, %conv9
  %10 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %i, align 4
  %cmp15 = icmp eq i32 %.pr, 1
  br i1 %cmp15, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %if.end6.do.end_crit_edge
  %freecount.141 = phi i32 [ %add, %do.cond.do.end_crit_edge ], [ %freecount.0, %if.end6.do.end_crit_edge ]
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %11 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bc_mp, align 4
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %12, i32 0, i32 66
  %13 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %m_opstate.i, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.not, label %if.then18, label %do.end.cleanup.thread_crit_edge

do.end.cleanup.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.then18:                                        ; preds = %do.end
  %16 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %pagi_freecount = getelementptr inbounds %struct.xfs_perag, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %pagi_freecount to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pagi_freecount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %freecount.141, i32 %20)
  %cmp19 = icmp eq i32 %freecount.141, %20
  br i1 %cmp19, label %if.then18.cleanup.thread_crit_edge, label %cond.false, !prof !154

if.then18.cleanup.thread_crit_edge:               ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

cond.false:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.6, i32 noundef 245) #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cond.false, %if.then18.cleanup.thread_crit_edge, %do.end.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec) #12
  br label %return

cleanup:                                          ; preds = %if.then8.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ %call10, %if.then8.cleanup_crit_edge ], [ %call3, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec) #12
  br label %return

return:                                           ; preds = %cleanup, %cleanup.thread, %entry.return_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ 0, %cleanup.thread ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_dialloc_ag_finobt_near(i32 noundef %pagino, ptr nocapture noundef %ocur, ptr noundef %rec) #4 align 64 {
entry:
  %rcur = alloca ptr, align 4
  %rrec = alloca %struct.xfs_inobt_rec_incore, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ocur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ocur, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rcur) #12
  %2 = ptrtoint ptr %rcur to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %rcur, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rrec) #12
  %3 = call ptr @memset(ptr %rrec, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %i, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %j) #12
  %5 = ptrtoint ptr %j to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %j, align 4, !annotation !152
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %pagino, ptr %bc_rec.i, align 8
  %ir_holemask.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 1
  %7 = call ptr @memset(ptr %ir_holemask.i, i32 0, i32 12)
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then1, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then1:                                         ; preds = %if.end
  %call2 = call i32 @xfs_inobt_get_rec(ptr noundef %1, ptr noundef %rec, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.then1
  %10 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp6.not = icmp eq i32 %11, 1
  br i1 %cmp6.not, label %if.end10, label %__here, !prof !154

__here:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !192
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %13, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 1274, ptr noundef blockaddress(@xfs_dialloc_ag_finobt_near, %__here)) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %14 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rec, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %pagino)
  %cmp11.not = icmp ule i32 %15, %pagino
  %add = add i32 %15, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %pagino)
  %cmp13 = icmp ugt i32 %add, %pagino
  %or.cond = and i1 %cmp11.not, %cmp13
  br i1 %or.cond, label %if.end10.cleanup_crit_edge, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end10.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %call17 = call i32 @xfs_btree_dup_cursor(ptr noundef %1, ptr noundef nonnull %rcur) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %16 = ptrtoint ptr %rcur to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rcur, align 4
  %bc_rec.i114 = getelementptr inbounds %struct.xfs_btree_cur, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %bc_rec.i114 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %pagino, ptr %bc_rec.i114, align 8
  %ir_holemask.i115 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i114, i32 0, i32 1
  %19 = call ptr @memset(ptr %ir_holemask.i115, i32 0, i32 12)
  %call.i116 = call i32 @xfs_btree_lookup(ptr noundef %17, i32 noundef 2, ptr noundef nonnull %j) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool22.not = icmp eq i32 %call.i116, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.error_rcur_crit_edge

if.end20.error_rcur_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_rcur

if.end24:                                         ; preds = %if.end20
  %20 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %j, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp25 = icmp eq i32 %21, 1
  br i1 %cmp25, label %if.then26, label %if.end24.if.end45_crit_edge

if.end24.if.end45_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then26:                                        ; preds = %if.end24
  %22 = ptrtoint ptr %rcur to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rcur, align 4
  %call27 = call i32 @xfs_inobt_get_rec(ptr noundef %23, ptr noundef nonnull %rrec, ptr noundef nonnull %j)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then26.error_rcur_crit_edge

if.then26.error_rcur_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_rcur

if.end30:                                         ; preds = %if.then26
  %24 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %j, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp31.not = icmp eq i32 %25, 1
  br i1 %cmp31.not, label %if.end30.if.end45_crit_edge, label %__here40, !prof !154

if.end30.if.end45_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

__here40:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %bc_mp39 = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %bc_mp39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bc_mp39, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !193
  call void @xfs_corruption_error(ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef %27, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 1298, ptr noundef blockaddress(@xfs_dialloc_ag_finobt_near, %__here40)) #12
  br label %error_rcur

if.end45:                                         ; preds = %if.end30.if.end45_crit_edge, %if.end24.if.end45_crit_edge
  %28 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp46.not = icmp eq i32 %29, 1
  %30 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %j, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp63 = icmp eq i32 %31, 1
  br i1 %cmp46.not, label %land.lhs.true62, label %land.rhs

land.rhs:                                         ; preds = %if.end45
  br i1 %cmp63, label %if.then75, label %__here56, !prof !154

__here56:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %bc_mp55 = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %bc_mp55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bc_mp55, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !194
  call void @xfs_corruption_error(ptr noundef nonnull @.str.44, i32 noundef 1, ptr noundef %33, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 1304, ptr noundef blockaddress(@xfs_dialloc_ag_finobt_near, %__here56)) #12
  br label %error_rcur

land.lhs.true62:                                  ; preds = %if.end45
  br i1 %cmp63, label %if.then64, label %if.then78

if.then64:                                        ; preds = %land.lhs.true62
  %34 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rec, align 8
  %sub = add i32 %pagino, 63
  %sub67 = sub i32 %sub, %35
  %36 = ptrtoint ptr %rrec to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rrec, align 8
  %sub69 = sub i32 %37, %pagino
  call void @__sanitizer_cov_trace_cmp4(i32 %sub67, i32 %sub69)
  %cmp70 = icmp ugt i32 %sub67, %sub69
  br i1 %cmp70, label %if.then71, label %if.else

if.then71:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  %38 = call ptr @memcpy(ptr %rec, ptr %rrec, i32 16)
  call void @xfs_btree_del_cursor(ptr noundef %1, i32 noundef 0) #12
  %39 = ptrtoint ptr %rcur to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rcur, align 4
  %41 = ptrtoint ptr %ocur to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %ocur, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %rcur to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rcur, align 4
  call void @xfs_btree_del_cursor(ptr noundef %43, i32 noundef 0) #12
  br label %cleanup

if.then75:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %44 = call ptr @memcpy(ptr %rec, ptr %rrec, i32 16)
  call void @xfs_btree_del_cursor(ptr noundef %1, i32 noundef 0) #12
  %45 = ptrtoint ptr %rcur to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rcur, align 4
  %47 = ptrtoint ptr %ocur to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %ocur, align 4
  br label %cleanup

if.then78:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %rcur to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rcur, align 4
  call void @xfs_btree_del_cursor(ptr noundef %49, i32 noundef 0) #12
  br label %cleanup

error_rcur:                                       ; preds = %__here56, %__here40, %if.then26.error_rcur_crit_edge, %if.end20.error_rcur_crit_edge
  %error.0 = phi i32 [ %call.i116, %if.end20.error_rcur_crit_edge ], [ %call27, %if.then26.error_rcur_crit_edge ], [ -117, %__here40 ], [ -117, %__here56 ]
  %50 = ptrtoint ptr %rcur to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rcur, align 4
  call void @xfs_btree_del_cursor(ptr noundef %51, i32 noundef 1) #12
  br label %cleanup

cleanup:                                          ; preds = %error_rcur, %if.then78, %if.then75, %if.else, %if.then71, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %__here, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %__here ], [ %error.0, %error_rcur ], [ %call.i, %entry.cleanup_crit_edge ], [ %call2, %if.then1.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ 0, %if.then75 ], [ 0, %if.then78 ], [ 0, %if.then71 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %j) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rrec) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rcur) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_dialloc_ag_finobt_newino(ptr nocapture noundef readonly %agi, ptr noundef %cur, ptr noundef %rec) #4 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %i, align 4, !annotation !152
  %agi_newino = getelementptr inbounds %struct.xfs_agi, ptr %agi, i32 0, i32 8
  %1 = ptrtoint ptr %agi_newino to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %agi_newino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.not = icmp eq i32 %2, -1
  br i1 %cmp.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then:                                          ; preds = %entry
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %3 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %bc_rec.i, align 8
  %ir_holemask.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 1
  %4 = call ptr @memset(ptr %ir_holemask.i, i32 0, i32 12)
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %5 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %if.then4, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @xfs_inobt_get_rec(ptr noundef %cur, ptr noundef %rec, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %7 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp9.not = icmp eq i32 %8, 1
  br i1 %cmp9.not, label %if.end8.cleanup_crit_edge, label %__here, !prof !154

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

__here:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %9 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !195
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %10, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 1360, ptr noundef blockaddress(@xfs_dialloc_ag_finobt_newino, %__here)) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end.if.end15_crit_edge, %entry.if.end15_crit_edge
  %bc_rec.i68 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %11 = call ptr @memset(ptr %bc_rec.i68, i32 0, i32 16)
  %call.i70 = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 2, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool17.not = icmp eq i32 %call.i70, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %12 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp20.not = icmp eq i32 %13, 1
  br i1 %cmp20.not, label %if.end33, label %__here29, !prof !154

__here29:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %bc_mp28 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %14 = ptrtoint ptr %bc_mp28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bc_mp28, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !196
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %15, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 1372, ptr noundef blockaddress(@xfs_dialloc_ag_finobt_newino, %__here29)) #12
  br label %cleanup

if.end33:                                         ; preds = %if.end19
  %call34 = call i32 @xfs_inobt_get_rec(ptr noundef %cur, ptr noundef %rec, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %16 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp38.not = icmp eq i32 %17, 1
  br i1 %cmp38.not, label %if.end37.cleanup_crit_edge, label %__here47, !prof !154

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

__here47:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %bc_mp46 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %18 = ptrtoint ptr %bc_mp46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bc_mp46, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !197
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %19, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 1378, ptr noundef blockaddress(@xfs_dialloc_ag_finobt_newino, %__here47)) #12
  br label %cleanup

cleanup:                                          ; preds = %__here47, %if.end37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %__here29, %if.end15.cleanup_crit_edge, %__here, %if.end8.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %__here ], [ -117, %__here29 ], [ -117, %__here47 ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call5, %if.then4.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %call.i70, %if.end15.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_inobt_first_free_inode(ptr noundef %rec) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ir_holemask = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 1
  %0 = ptrtoint ptr %ir_holemask to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ir_holemask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.i.not = icmp eq i16 %1, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ir_free = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 4
  %2 = ptrtoint ptr %ir_free to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ir_free, align 8
  %conv.i = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %4 = tail call i32 @llvm.cttz.i32(i32 %conv.i, i1 true) #12, !range !198
  %5 = add nuw nsw i32 %4, 1
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  %shr.i = lshr i64 %3, 32
  %conv1.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %tobool2.not.i = icmp eq i32 %conv1.i, 0
  br i1 %tobool2.not.i, label %if.else.i.cleanup_crit_edge, label %if.then7.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call i32 @llvm.cttz.i32(i32 %conv1.i, i1 true) #12, !range !198
  %add.i = add nuw nsw i32 %6, 33
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @xfs_inobt_irec_to_allocmask(ptr noundef %rec) #12
  %ir_free3 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 4
  %7 = ptrtoint ptr %ir_free3 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ir_free3, align 8
  %and = and i64 %8, %call2
  %conv.i9 = trunc i64 %and to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i9)
  %tobool.not.i10 = icmp eq i32 %conv.i9, 0
  br i1 %tobool.not.i10, label %if.else.i15, label %if.then.i11

if.then.i11:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.cttz.i32(i32 %conv.i9, i1 true) #12, !range !198
  %10 = add nuw nsw i32 %9, 1
  br label %cleanup

if.else.i15:                                      ; preds = %if.end
  %shr.i12 = lshr i64 %and, 32
  %conv1.i13 = trunc i64 %shr.i12 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i13)
  %tobool2.not.i14 = icmp eq i32 %conv1.i13, 0
  br i1 %tobool2.not.i14, label %if.else.i15.cleanup_crit_edge, label %if.then7.i17

if.else.i15.cleanup_crit_edge:                    ; preds = %if.else.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7.i17:                                     ; preds = %if.else.i15
  call void @__sanitizer_cov_trace_pc() #14
  %11 = tail call i32 @llvm.cttz.i32(i32 %conv1.i13, i1 true) #12, !range !198
  %add.i16 = add nuw nsw i32 %11, 33
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i17, %if.else.i15.cleanup_crit_edge, %if.then.i11, %if.then7.i, %if.else.i.cleanup_crit_edge, %if.then.i
  %retval.0.in = phi i32 [ %5, %if.then.i ], [ %add.i, %if.then7.i ], [ 0, %if.else.i.cleanup_crit_edge ], [ %10, %if.then.i11 ], [ %add.i16, %if.then7.i17 ], [ 0, %if.else.i15.cleanup_crit_edge ]
  %retval.0 = add nsw i32 %retval.0.in, -1
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_delete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_dialloc_ag_update_inobt(ptr noundef %cur, ptr nocapture noundef readonly %frec, i32 noundef %offset) #4 align 64 {
entry:
  %rec = alloca %struct.xfs_inobt_rec_incore, align 8
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec) #12
  %0 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 3
  %1 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 4
  %2 = call ptr @memset(ptr %rec, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %3 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %i, align 4, !annotation !152
  %4 = ptrtoint ptr %frec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frec, align 8
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %6 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %bc_rec.i, align 8
  %ir_holemask.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 1
  %7 = call ptr @memset(ptr %ir_holemask.i, i32 0, i32 12)
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end4, label %__here, !prof !154

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %10 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !199
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %11, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 1401, ptr noundef blockaddress(@xfs_dialloc_ag_update_inobt, %__here)) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @xfs_inobt_get_rec(ptr noundef %cur, ptr noundef nonnull %rec, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %12 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp9.not = icmp eq i32 %13, 1
  br i1 %cmp9.not, label %if.end22, label %__here18, !prof !154

__here18:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %bc_mp17 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %14 = ptrtoint ptr %bc_mp17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bc_mp17, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !200
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %15, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 1407, ptr noundef blockaddress(@xfs_dialloc_ag_update_inobt, %__here18)) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end8
  %16 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rec, align 8
  %bc_mp24 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %18 = ptrtoint ptr %bc_mp24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bc_mp24, align 4
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sb_inopblog, align 1
  %sh_prom = zext i8 %21 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %22 = trunc i64 %notmask to i32
  %conv25 = xor i32 %22, -1
  %and = and i32 %17, 63
  %rem = and i32 %and, %conv25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp26 = icmp eq i32 %rem, 0
  br i1 %cmp26, label %if.end22.cond.end_crit_edge, label %cond.false35, !prof !154

if.end22.cond.end_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false35:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.6, i32 noundef 1410) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false35, %if.end22.cond.end_crit_edge
  %sh_prom36 = zext i32 %offset to i64
  %shl37 = shl nuw i64 1, %sh_prom36
  %neg = xor i64 %shl37, -1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %1, align 8
  %and38 = and i64 %24, %neg
  store i64 %and38, ptr %1, align 8
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %0, align 1
  %dec = add i8 %26, -1
  store i8 %dec, ptr %0, align 1
  %ir_free40 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %frec, i32 0, i32 4
  %27 = ptrtoint ptr %ir_free40 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ir_free40, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and38, i64 %28)
  %cmp41.not = icmp eq i64 %and38, %28
  br i1 %cmp41.not, label %lor.rhs, label %cond.end.__here57_crit_edge, !prof !154

cond.end.__here57_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here57

lor.rhs:                                          ; preds = %cond.end
  %ir_freecount45 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %frec, i32 0, i32 3
  %29 = ptrtoint ptr %ir_freecount45 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ir_freecount45, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %dec, i8 %30)
  %cmp47.not = icmp eq i8 %dec, %30
  br i1 %cmp47.not, label %if.end61, label %lor.rhs.__here57_crit_edge, !prof !154

lor.rhs.__here57_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here57

__here57:                                         ; preds = %lor.rhs.__here57_crit_edge, %cond.end.__here57_crit_edge
  %31 = ptrtoint ptr %bc_mp24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bc_mp24, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !201
  call void @xfs_corruption_error(ptr noundef nonnull @.str.46, i32 noundef 1, ptr noundef %32, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 1417, ptr noundef blockaddress(@xfs_dialloc_ag_update_inobt, %__here57)) #12
  br label %cleanup

if.end61:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %call62 = call fastcc i32 @xfs_inobt_update(ptr noundef %cur, ptr noundef nonnull %rec)
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %__here57, %__here18, %if.end4.cleanup_crit_edge, %__here, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %__here ], [ -117, %__here18 ], [ -117, %__here57 ], [ %call62, %if.end61 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_dup_cursor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_ialloc_get_rec(ptr noundef %cur, i32 noundef %agino, ptr noundef %rec, ptr nocapture noundef writeonly %done) #4 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %i, align 4, !annotation !152
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %1 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %agino, ptr %bc_rec.i, align 8
  %ir_holemask.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec.i, i32 0, i32 1
  %2 = call ptr @memset(ptr %ir_holemask.i, i32 0, i32 12)
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  %lnot.ext = zext i1 %tobool1.not to i32
  %5 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %lnot.ext, ptr %done, align 4
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @xfs_inobt_get_rec(ptr noundef %cur, ptr noundef %rec, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %6 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end7.cleanup_crit_edge, label %__here, !prof !154

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

__here:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %8 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !202
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 951, ptr noundef blockaddress(@xfs_ialloc_get_rec, %__here)) #12
  br label %cleanup

cleanup:                                          ; preds = %__here, %if.end7.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %__here ], [ %call.i, %entry.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_ialloc_next_rec(ptr noundef %cur, ptr noundef %rec, ptr nocapture noundef writeonly %done, i32 noundef %left) #4 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %i, align 4, !annotation !152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left)
  %tobool.not = icmp eq i32 %left, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = call i32 @xfs_btree_decrement(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = call i32 @xfs_btree_increment(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %error.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool2.not = icmp eq i32 %error.0, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool5.not = icmp eq i32 %2, 0
  %lnot.ext = zext i1 %tobool5.not to i32
  %3 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %lnot.ext, ptr %done, align 4
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  %call8 = call i32 @xfs_inobt_get_rec(ptr noundef %cur, ptr noundef %rec, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  %4 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end11.cleanup_crit_edge, label %__here, !prof !154

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

__here:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %6 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !203
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %7, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 926, ptr noundef blockaddress(@xfs_ialloc_next_rec, %__here)) #12
  br label %cleanup

cleanup:                                          ; preds = %__here, %if.end11.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %__here ], [ %error.0, %if.end.cleanup_crit_edge ], [ %call8, %if.then7.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_decrement(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_difree_inode_chunk(ptr noundef %tp, i32 noundef %agno, ptr nocapture noundef readonly %rec) unnamed_addr #4 align 64 {
entry:
  %holemask = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %2 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rec, align 8
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_inopblog, align 1
  %conv = zext i8 %5 to i32
  %shr = lshr i32 %3, %conv
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %holemask) #12
  %ir_holemask = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 1
  %6 = ptrtoint ptr %ir_holemask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ir_holemask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.i.not = icmp eq i16 %7, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv1 = zext i32 %agno to i64
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %9 to i64
  %shl = shl i64 %conv1, %sh_prom
  %conv4 = zext i32 %shr to i64
  %or = or i64 %shl, %conv4
  %ialloc_blks = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 12
  %10 = ptrtoint ptr %ialloc_blks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ialloc_blks, align 4
  %conv5 = zext i32 %11 to i64
  tail call void @__xfs_free_extent_later(ptr noundef %tp, i64 noundef %or, i64 noundef %conv5, ptr noundef nonnull @XFS_RMAP_OINFO_INODES, i1 noundef zeroext false) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv7 = zext i16 %7 to i32
  %12 = ptrtoint ptr %holemask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv7, ptr %holemask, align 4
  %call8 = call i32 @_find_first_zero_bit_be(ptr noundef nonnull %holemask, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call8)
  %cmp87 = icmp ult i32 %call8, 16
  br i1 %cmp87, label %while.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %sb_inopblock = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 18
  %sb_spino_align = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 51
  %conv46 = zext i32 %agno to i64
  %sb_agblklog48 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  br label %while.body

while.body:                                       ; preds = %next.while.body_crit_edge, %while.body.lr.ph
  %endidx.089 = phi i32 [ %call8, %while.body.lr.ph ], [ %call11, %next.while.body_crit_edge ]
  %startidx.088 = phi i32 [ %call8, %while.body.lr.ph ], [ %startidx.1, %next.while.body_crit_edge ]
  %nextbit.0 = add i32 %endidx.089, 1
  %call11 = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %holemask, i32 noundef 16, i32 noundef %nextbit.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call11)
  %cmp12.not = icmp ne i32 %call11, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %nextbit.0)
  %cmp15 = icmp eq i32 %call11, %nextbit.0
  %or.cond = and i1 %cmp12.not, %cmp15
  br i1 %or.cond, label %while.body.next_crit_edge, label %if.end18

while.body.next_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %next

if.end18:                                         ; preds = %while.body
  %13 = ptrtoint ptr %sb_inopblock to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sb_inopblock, align 2
  %conv20 = zext i16 %14 to i32
  %startidx.0.tr = trunc i32 %startidx.088 to i16
  %div.lhs.trunc = shl nuw nsw i16 %startidx.0.tr, 2
  %div86 = udiv i16 %div.lhs.trunc, %14
  %div.zext = zext i16 %div86 to i32
  %add21 = add i32 %shr, %div.zext
  %sub = sub i32 %endidx.089, %startidx.088
  %add22 = shl i32 %sub, 2
  %mul23 = add i32 %add22, 4
  %div27 = udiv i32 %mul23, %conv20
  %15 = ptrtoint ptr %sb_spino_align to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_spino_align, align 4
  %rem = urem i32 %add21, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp29 = icmp eq i32 %rem, 0
  br i1 %cmp29, label %if.end18.cond.end_crit_edge, label %cond.false, !prof !154

if.end18.cond.end_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.6, i32 noundef 1873) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end18.cond.end_crit_edge
  %17 = ptrtoint ptr %sb_spino_align to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sb_spino_align, align 4
  %rem34 = urem i32 %div27, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem34)
  %cmp35 = icmp eq i32 %rem34, 0
  br i1 %cmp35, label %cond.end.cond.end45_crit_edge, label %cond.false44, !prof !154

cond.end.cond.end45_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end45

cond.false44:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.6, i32 noundef 1874) #12
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false44, %cond.end.cond.end45_crit_edge
  %19 = ptrtoint ptr %sb_agblklog48 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sb_agblklog48, align 4
  %sh_prom50 = zext i8 %20 to i64
  %shl51 = shl i64 %conv46, %sh_prom50
  %conv52 = zext i32 %add21 to i64
  %or53 = or i64 %shl51, %conv52
  %conv54 = sext i32 %div27 to i64
  call void @__xfs_free_extent_later(ptr noundef %tp, i64 noundef %or53, i64 noundef %conv54, ptr noundef nonnull @XFS_RMAP_OINFO_INODES, i1 noundef zeroext false) #12
  br label %next

next:                                             ; preds = %cond.end45, %while.body.next_crit_edge
  %startidx.1 = phi i32 [ %call11, %cond.end45 ], [ %startidx.088, %while.body.next_crit_edge ]
  %cmp = icmp ult i32 %startidx.1, 16
  br i1 %cmp, label %next.while.body_crit_edge, label %next.cleanup_crit_edge

next.cleanup_crit_edge:                           ; preds = %next
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

next.while.body_crit_edge:                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup:                                          ; preds = %next.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %holemask) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfs_free_extent_later(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_verifier_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_errortag_test(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_log_check_lsn(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_magic(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_ino(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_read_agi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_read_buf_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_ialloc_read_agi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !77, !79, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !141}
!llvm.named.register.sp = !{!142}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 139, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 140, i32 36}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 140, i32 45}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 142, i32 1}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2149, i32 16}
!10 = !{ptr @__func__.xfs_difree, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2150, i32 4}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2151, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2156, i32 16}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2164, i32 16}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2174, i32 16}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2281, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2301, i32 5}
!25 = !{ptr @__func__.xfs_imap, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2302, i32 5}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2307, i32 3}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2313, i32 3}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2343, i32 3}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2369, i32 2}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2389, i32 2}
!37 = !{ptr @xfs_ialloc_log_agi.offsets, !38, !"offsets", i1 false, i1 false}
!38 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2423, i32 21}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2444, i32 2}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2562, i32 10}
!43 = !{ptr @xfs_agi_buf_ops, !44, !"xfs_agi_buf_ops", i1 false, i1 false}
!44 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2561, i32 26}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2583, i32 2}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2625, i32 2}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2739, i32 2}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2796, i32 2}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1701, i32 3}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 714, i32 4}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 789, i32 3}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 796, i32 2}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 838, i32 2}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 543, i32 7}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 563, i32 7}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 572, i32 7}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../fs/xfs/xfs_trace.h", i32 873, i32 1}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!73 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!76 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 486, i32 2}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../fs/xfs/xfs_trace.h", i32 902, i32 1}
!81 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 195, i32 3}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 205, i32 3}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1479, i32 2}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1480, i32 2}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1481, i32 2}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1002, i32 2}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1003, i32 2}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1037, i32 7}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 245, i32 4}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1304, i32 6}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1409, i32 2}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1415, i32 6}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1905, i32 2}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1920, i32 16}
!110 = !{ptr @__func__.xfs_difree_inobt, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1921, i32 4}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1930, i32 16}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1942, i32 2}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1943, i32 2}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1979, i32 17}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1990, i32 17}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1873, i32 3}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 1874, i32 3}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2046, i32 7}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2080, i32 6}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2221, i32 4}
!132 = !{ptr @__func__.xfs_imap_lookup, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2222, i32 4}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/xfs/libxfs/xfs_ialloc.c", i32 2533, i32 7}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../fs/xfs/xfs_trace.h", i32 295, i32 1}
!138 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!139 = distinct !{null, !140, !"__already_done", i1 false, i1 false}
!140 = !{!"../fs/xfs/xfs_trace.h", i32 296, i32 1}
!141 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!142 = !{!"sp"}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{!"auto-init"}
!153 = !{!"branch_weights", i32 1, i32 2000}
!154 = !{!"branch_weights", i32 2000, i32 1}
!155 = !{i64 2166427141}
!156 = !{i64 2166427510}
!157 = !{i64 2166428921}
!158 = !{i64 2166429454}
!159 = !{i64 2166430072}
!160 = !{i64 2166437717}
!161 = !{i64 2166436142}
!162 = !{i64 2166436289}
!163 = !{i64 2166436380}
!164 = !{i64 2166436610}
!165 = !{i64 2166436839}
!166 = !{i64 2166437078}
!167 = !{i64 2166437227}
!168 = !{i64 2166437464}
!169 = !{i64 2148324657, i64 2148324662, i64 2148324675, i64 2148324719, i64 2148324753, i64 2148324774}
!170 = !{i64 2156552060}
!171 = !{i64 2156552263}
!172 = !{i64 2150026750}
!173 = !{i64 2150027786}
!174 = !{i64 2156572638}
!175 = !{i64 2156572855}
!176 = !{i64 1060910, i64 1060937, i64 1060959, i64 1060987}
!177 = !{i64 1061318, i64 1061345, i64 1061378, i64 1061399, i64 1061426, i64 1061452}
!178 = !{i64 2148546454, i64 2148546734, i64 2148547068, i64 2148547402}
!179 = !{i64 2166403226}
!180 = !{i64 2166403594}
!181 = !{i64 2166404052}
!182 = !{i64 2166404504}
!183 = !{i64 2158481349}
!184 = !{i64 2158481636}
!185 = !{i64 2158499234}
!186 = !{i64 2158499485}
!187 = !{i64 2166409646}
!188 = !{i64 2166410015}
!189 = !{i64 2166410735}
!190 = !{i64 2166411104}
!191 = !{i64 2166411473}
!192 = !{i64 2166413205}
!193 = !{i64 2166413647}
!194 = !{i64 2166414055}
!195 = !{i64 2166414690}
!196 = !{i64 2166415098}
!197 = !{i64 2166415475}
!198 = !{i32 0, i32 33}
!199 = !{i64 2166415929}
!200 = !{i64 2166416306}
!201 = !{i64 2166421662}
!202 = !{i64 2166408215}
!203 = !{i64 2166407762}
