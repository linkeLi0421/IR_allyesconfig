; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_ialloc_btree.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_ialloc_btree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_buf_ops = type { ptr, %union.anon, ptr, ptr, ptr }
%union.anon = type { [2 x i32] }
%struct.xfs_btree_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.73 }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_owner_info = type { i64, i64, i32 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xfs_btree_block = type { i32, i16, i16, %union.anon.89 }
%union.anon.89 = type { %struct.xfs_btree_block_lhdr }
%struct.xfs_btree_block_lhdr = type { i64, i64, i64, i64, %struct.uuid_t, i64, i32, i32 }
%struct.xfs_btree_cur = type { ptr, ptr, ptr, ptr, i32, i32, %union.xfs_btree_irec, i8, i8, i32, %union.anon.93, [0 x %struct.xfs_btree_level] }
%union.xfs_btree_irec = type { %struct.xfs_bmbt_irec }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%union.anon.93 = type { %struct.xfs_btree_cur_ag }
%struct.xfs_btree_cur_ag = type { ptr, %union.anon.94, %union.anon.95 }
%union.anon.94 = type { ptr }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { i32, i32 }
%struct.xfs_btree_level = type { ptr, i16, i16 }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.xfs_agi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i32], %struct.uuid_t, i32, i32, i64, i32, i32, i32, i32 }
%struct.xbtree_afakeroot = type { i32, i32, i32 }
%struct.xfs_inobt_rec_incore = type { i32, i16, i8, i8, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_inobt_rec = type { i32, %union.anon.90, i64 }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { i32 }
%struct.anon.92 = type { i16, i8, i8 }
%struct.xfs_alloc_arg = type { ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %struct.xfs_owner_info, i32, i8 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xfs_inobt\00", [22 x i8] zeroinitializer }, align 32
@xfs_inobt_buf_ops = dso_local constant { %struct.xfs_buf_ops, [40 x i8] } { %struct.xfs_buf_ops { ptr @.str, %union.anon { [2 x i32] [i32 1229013588, i32 1229013555] }, ptr @xfs_inobt_read_verify, ptr @xfs_inobt_write_verify, ptr @xfs_inobt_verify }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xfs_finobt\00", [21 x i8] zeroinitializer }, align 32
@xfs_finobt_buf_ops = dso_local constant { %struct.xfs_buf_ops, [40 x i8] } { %struct.xfs_buf_ops { ptr @.str.1, %union.anon { [2 x i32] [i32 1179206228, i32 1179206195] }, ptr @xfs_inobt_read_verify, ptr @xfs_inobt_write_verify, ptr @xfs_inobt_verify }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cur->bc_flags & XFS_BTREE_STAGING\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fs/xfs/libxfs/xfs_ialloc_btree.c\00", [63 x i8] zeroinitializer }, align 32
@xfs_inobt_ops = internal constant { %struct.xfs_btree_ops, [48 x i8] } { %struct.xfs_btree_ops { i32 4, i32 16, ptr @xfs_inobt_dup_cursor, ptr null, ptr @xfs_inobt_set_root, ptr @xfs_inobt_alloc_block, ptr @xfs_inobt_free_block, ptr null, ptr @xfs_inobt_get_minrecs, ptr @xfs_inobt_get_maxrecs, ptr null, ptr @xfs_inobt_init_key_from_rec, ptr @xfs_inobt_init_rec_from_cur, ptr @xfs_inobt_init_ptr_from_cur, ptr @xfs_inobt_init_high_key_from_rec, ptr @xfs_inobt_key_diff, ptr @xfs_inobt_diff_two_keys, ptr @xfs_inobt_buf_ops, ptr @xfs_inobt_keys_inorder, ptr @xfs_inobt_recs_inorder }, [48 x i8] zeroinitializer }, align 32
@xfs_finobt_ops = internal constant { %struct.xfs_btree_ops, [48 x i8] } { %struct.xfs_btree_ops { i32 4, i32 16, ptr @xfs_inobt_dup_cursor, ptr null, ptr @xfs_finobt_set_root, ptr @xfs_finobt_alloc_block, ptr @xfs_finobt_free_block, ptr null, ptr @xfs_inobt_get_minrecs, ptr @xfs_inobt_get_maxrecs, ptr null, ptr @xfs_inobt_init_key_from_rec, ptr @xfs_inobt_init_rec_from_cur, ptr @xfs_finobt_init_ptr_from_cur, ptr @xfs_inobt_init_high_key_from_rec, ptr @xfs_inobt_key_diff, ptr @xfs_inobt_diff_two_keys, ptr @xfs_finobt_buf_ops, ptr @xfs_inobt_keys_inorder, ptr @xfs_inobt_recs_inorder }, [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nextbit < (sizeof(rec->ir_holemask) * NBBY)\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"*agi_bpp == NULL\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"*curpp == NULL\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xfs_inobt_cur\00", [18 x i8] zeroinitializer }, align 32
@xfs_inobt_cur_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__tracepoint_xfs_btree_corrupt = external dso_local global %struct.tracepoint, align 4
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_btree_corrupt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@XFS_RMAP_OINFO_INOBT = external dso_local constant %struct.xfs_owner_info, align 8
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"args.len == 1\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"cur->bc_ag.pag->pag_agno == be32_to_cpu(agi->agi_seqno)\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 347, i32 10 }
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"xfs_inobt_buf_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 346, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 355, i32 10 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"xfs_finobt_buf_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 354, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 506, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"xfs_inobt_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 383, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"xfs_finobt_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 404, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 642, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 722, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 723, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 821, i32 42 }
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c"xfs_inobt_cur_cache\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 25, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 473, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 108, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 122, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [36 x i8] c"../fs/xfs/libxfs/xfs_ialloc_btree.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 240, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @xfs_inobt_buf_ops, ptr @.str.1, ptr @xfs_finobt_buf_ops, ptr @.str.2, ptr @.str.3, ptr @xfs_inobt_ops, ptr @xfs_finobt_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @xfs_inobt_cur_cache, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_inobt_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_finobt_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_inobt_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_finobt_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_inobt_cur_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_inobt_read_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @xfs_btree_sblock_verify_crc(ptr noundef %bp) #15
  br i1 %call, label %if.else, label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !47
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -74, ptr noundef blockaddress(@xfs_inobt_read_verify, %__here)) #15
  br label %if.end3

if.else:                                          ; preds = %entry
  %call1 = tail call ptr @xfs_inobt_verify(ptr noundef %bp)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.else.if.end3_crit_edge, label %if.then2

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call1) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %3 = ptrtoint ptr %2 to i32
  tail call fastcc void @trace_xfs_btree_corrupt(ptr noundef %bp, i32 noundef %3)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_inobt_write_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xfs_inobt_verify(ptr noundef %bp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_xfs_btree_corrupt(ptr noundef %bp, i32 noundef %1)
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @xfs_btree_sblock_calc_crc(ptr noundef %bp) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_inobt_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  %call = tail call zeroext i1 @xfs_verify_magic(ptr noundef %bp, i32 noundef %5) #15
  br i1 %call, label %if.end, label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !48
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @xfs_btree_sblock_v5hdr_verify(ptr noundef %bp) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then2.if.end6_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end6:                                          ; preds = %if.then2.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %bb_level = getelementptr inbounds %struct.xfs_btree_block, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %bb_level to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bb_level, align 4
  %conv = zext i16 %9 to i32
  %inobt_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 10
  %10 = ptrtoint ptr %inobt_maxlevels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inobt_maxlevels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp.not = icmp ugt i32 %11, %conv
  br i1 %cmp.not, label %if.end11, label %__here9

__here9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !49
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp13 = icmp ne i16 %9, 0
  %conv14 = zext i1 %cmp13 to i32
  %arrayidx = getelementptr %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 8, i32 %conv14
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %call15 = tail call ptr @xfs_btree_sblock_verify(ptr noundef %bp, i32 noundef %13) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %__here9, %if.then2.cleanup_crit_edge, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_inobt_verify, %__here9), %__here9 ], [ %call15, %if.end11 ], [ blockaddress(@xfs_inobt_verify, %__here), %__here ], [ %call3, %if.then2.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_inobt_init_cursor(ptr noundef %mp, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i32 noundef %btnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agbp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %inobt_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 10
  %2 = ptrtoint ptr %inobt_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inobt_maxlevels.i, align 4
  %conv.i = trunc i32 %3 to i8
  %4 = load ptr, ptr @xfs_inobt_cur_cache, align 4
  %call.i.i18.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 36160) #15
  %5 = ptrtoint ptr %call.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tp, ptr %call.i.i18.i, align 8
  %bc_mp.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 1
  %6 = ptrtoint ptr %bc_mp.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mp, ptr %bc_mp.i.i, align 4
  %bc_btnum.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 5
  %7 = ptrtoint ptr %bc_btnum.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %btnum, ptr %bc_btnum.i.i, align 4
  %bc_maxlevels.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 8
  %8 = ptrtoint ptr %bc_maxlevels.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %bc_maxlevels.i.i, align 1
  %bc_cache.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 3
  %9 = ptrtoint ptr %bc_cache.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %4, ptr %bc_cache.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %btnum)
  %cmp.i = icmp eq i32 %btnum, 4
  %spec.select.i = select i1 %cmp.i, i32 121, i32 136
  %spec.select19.i = select i1 %cmp.i, ptr @xfs_inobt_ops, ptr @xfs_finobt_ops
  %10 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 9
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select.i, ptr %10, align 4
  %12 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %spec.select19.i, ptr %12, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %14 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.xfs_inobt_init_common.exit_crit_edge, label %if.then5.i

entry.xfs_inobt_init_common.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_inobt_init_common.exit

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %bc_flags.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 4
  %16 = ptrtoint ptr %bc_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bc_flags.i, align 8
  %or.i = or i32 %17, 8
  store i32 %or.i, ptr %bc_flags.i, align 8
  br label %xfs_inobt_init_common.exit

xfs_inobt_init_common.exit:                       ; preds = %if.then5.i, %entry.xfs_inobt_init_common.exit_crit_edge
  %pag_ref.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pag_ref.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %pag_ref.i, i32 1, i32 3, i32 1) #15
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pag_ref.i, ptr %pag_ref.i, i32 1, ptr elementtype(i32) %pag_ref.i) #15, !srcloc !50
  %19 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 10
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pag, ptr %19, align 8
  %agi_level = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 6
  %agi_free_level = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 16
  %conv1.sink.in.in = select i1 %cmp.i, ptr %agi_level, ptr %agi_free_level
  %21 = ptrtoint ptr %conv1.sink.in.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %conv1.sink.in = load i32, ptr %conv1.sink.in.in, align 4
  %conv1.sink = trunc i32 %conv1.sink.in to i8
  %22 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 7
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv1.sink, ptr %22, align 8
  %24 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 10, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %agbp, ptr %24, align 4
  ret ptr %call.i.i18.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_inobt_stage_cursor(ptr noundef %mp, ptr noundef %afake, ptr noundef %pag, i32 noundef %btnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %inobt_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 10
  %0 = ptrtoint ptr %inobt_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inobt_maxlevels.i, align 4
  %conv.i = trunc i32 %1 to i8
  %2 = load ptr, ptr @xfs_inobt_cur_cache, align 4
  %call.i.i18.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 36160) #15
  %3 = ptrtoint ptr %call.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call.i.i18.i, align 8
  %bc_mp.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 1
  %4 = ptrtoint ptr %bc_mp.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mp, ptr %bc_mp.i.i, align 4
  %bc_btnum.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 5
  %5 = ptrtoint ptr %bc_btnum.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %btnum, ptr %bc_btnum.i.i, align 4
  %bc_maxlevels.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 8
  %6 = ptrtoint ptr %bc_maxlevels.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %bc_maxlevels.i.i, align 1
  %bc_cache.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 3
  %7 = ptrtoint ptr %bc_cache.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %2, ptr %bc_cache.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %btnum)
  %cmp.i = icmp eq i32 %btnum, 4
  %spec.select.i = select i1 %cmp.i, i32 121, i32 136
  %spec.select19.i = select i1 %cmp.i, ptr @xfs_inobt_ops, ptr @xfs_finobt_ops
  %8 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 9
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select.i, ptr %8, align 4
  %10 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select19.i, ptr %10, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %12 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.xfs_inobt_init_common.exit_crit_edge, label %if.then5.i

entry.xfs_inobt_init_common.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_inobt_init_common.exit

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %bc_flags.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 4
  %14 = ptrtoint ptr %bc_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bc_flags.i, align 8
  %or.i = or i32 %15, 8
  store i32 %or.i, ptr %bc_flags.i, align 8
  br label %xfs_inobt_init_common.exit

xfs_inobt_init_common.exit:                       ; preds = %if.then5.i, %entry.xfs_inobt_init_common.exit_crit_edge
  %pag_ref.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pag_ref.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %pag_ref.i, i32 1, i32 3, i32 1) #15
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pag_ref.i, ptr %pag_ref.i, i32 1, ptr elementtype(i32) %pag_ref.i) #15, !srcloc !50
  %17 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i, i32 0, i32 10
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pag, ptr %17, align 8
  tail call void @xfs_btree_stage_afakeroot(ptr noundef %call.i.i18.i, ptr noundef %afake) #15
  ret ptr %call.i.i18.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_stage_afakeroot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_inobt_commit_staged_btree(ptr noundef %cur, ptr noundef %tp, ptr noundef %agbp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agbp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %2 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 4
  %5 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bc_flags, align 8
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !51

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 506) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %bc_btnum = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 5
  %7 = ptrtoint ptr %bc_btnum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bc_btnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp eq i32 %8, 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %4, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %agi_root = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %agi_root to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %agi_root, align 4
  %af_levels = getelementptr inbounds %struct.xbtree_afakeroot, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %af_levels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %af_levels, align 4
  %agi_level = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %agi_level to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %agi_level, align 8
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %15 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bc_mp, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %16, i32 0, i32 61
  %17 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %18, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then.if.end12_crit_edge, label %if.then3

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %af_blocks = getelementptr inbounds %struct.xbtree_afakeroot, ptr %4, i32 0, i32 2
  %19 = ptrtoint ptr %af_blocks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %af_blocks, align 4
  %agi_iblocks = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 17
  %21 = ptrtoint ptr %agi_iblocks to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %agi_iblocks, align 8
  br label %if.end12

if.else:                                          ; preds = %cond.end
  %agi_free_root = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %agi_free_root to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %10, ptr %agi_free_root, align 8
  %af_levels5 = getelementptr inbounds %struct.xbtree_afakeroot, ptr %4, i32 0, i32 1
  %23 = ptrtoint ptr %af_levels5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %af_levels5, align 4
  %agi_free_level = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 16
  %25 = ptrtoint ptr %agi_free_level to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %agi_free_level, align 4
  %bc_mp6 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %26 = ptrtoint ptr %bc_mp6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bc_mp6, align 4
  %m_features.i39 = getelementptr inbounds %struct.xfs_mount, ptr %27, i32 0, i32 61
  %28 = ptrtoint ptr %m_features.i39 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %m_features.i39, align 8
  %and.i40 = and i64 %29, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i40)
  %tobool.i41.not = icmp eq i64 %and.i40, 0
  br i1 %tobool.i41.not, label %if.else.if.end12_crit_edge, label %if.then8

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %af_blocks9 = getelementptr inbounds %struct.xbtree_afakeroot, ptr %4, i32 0, i32 2
  %30 = ptrtoint ptr %af_blocks9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %af_blocks9, align 4
  %agi_fblocks = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 18
  %32 = ptrtoint ptr %agi_fblocks to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %agi_fblocks, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.else.if.end12_crit_edge, %if.then3, %if.then.if.end12_crit_edge
  %fields.1.sink = phi i32 [ 8288, %if.then3 ], [ 96, %if.then.if.end12_crit_edge ], [ 14336, %if.then8 ], [ 6144, %if.else.if.end12_crit_edge ]
  %xfs_finobt_ops.sink = phi ptr [ @xfs_inobt_ops, %if.then3 ], [ @xfs_inobt_ops, %if.then.if.end12_crit_edge ], [ @xfs_finobt_ops, %if.then8 ], [ @xfs_finobt_ops, %if.else.if.end12_crit_edge ]
  tail call void @xfs_ialloc_log_agi(ptr noundef %tp, ptr noundef %agbp, i32 noundef %fields.1.sink) #15
  tail call void @xfs_btree_commit_afakeroot(ptr noundef %cur, ptr noundef %tp, ptr noundef %agbp, ptr noundef nonnull %xfs_finobt_ops.sink) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ialloc_log_agi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_commit_afakeroot(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_inobt_maxrecs(ptr nocapture noundef readonly %mp, i32 noundef %blocklen, i32 noundef %leaf) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond.neg = select i1 %tobool.i.not, i32 -16, i32 -56
  %sub = add i32 %cond.neg, %blocklen
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %leaf)
  %tobool.not = icmp eq i32 %leaf, 0
  %retval.0.v.i = select i1 %tobool.not, i32 3, i32 4
  %retval.0.i = lshr i32 %sub, %retval.0.v.i
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_iallocbt_maxlevels_ondisk() local_unnamed_addr #0 align 64 {
entry:
  %minrecs.i4 = alloca [2 x i32], align 4
  %minrecs.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %minrecs.i) #15
  %0 = getelementptr inbounds [2 x i32], ptr %minrecs.i, i32 0, i32 1
  %1 = ptrtoint ptr %minrecs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 15, ptr %minrecs.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 31, ptr %0, align 4
  %call4.i = call i32 @xfs_btree_compute_maxlevels(ptr noundef nonnull %minrecs.i, i64 noundef 67108863) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %minrecs.i) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %minrecs.i4) #15
  %3 = getelementptr inbounds [2 x i32], ptr %minrecs.i4, i32 0, i32 1
  %4 = ptrtoint ptr %minrecs.i4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 30, ptr %minrecs.i4, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 60, ptr %3, align 4
  %call4.i5 = call i32 @xfs_btree_compute_maxlevels(ptr noundef nonnull %minrecs.i4, i64 noundef 67108863) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %minrecs.i4) #15
  %6 = call i32 @llvm.umax.i32(i32 %call4.i, i32 %call4.i5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @xfs_inobt_irec_to_allocmask(ptr nocapture noundef readonly %rec) local_unnamed_addr #0 align 64 {
entry:
  %allocbitmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %allocbitmap) #15
  %ir_holemask = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 1
  %0 = ptrtoint ptr %ir_holemask to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ir_holemask, align 4
  %2 = xor i16 %1, -1
  %and = zext i16 %2 to i32
  %3 = ptrtoint ptr %allocbitmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and, ptr %allocbitmap, align 4
  %call = call i32 @xfs_next_bit(ptr noundef nonnull %allocbitmap, i32 noundef 1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.not10 = icmp eq i32 %call, -1
  br i1 %cmp.not10, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %cond.end.while.body_crit_edge, %entry.while.body_crit_edge
  %nextbit.012 = phi i32 [ %call5, %cond.end.while.body_crit_edge ], [ %call, %entry.while.body_crit_edge ]
  %bitmap.011 = phi i64 [ %or, %cond.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %nextbit.012)
  %cmp2 = icmp ult i32 %nextbit.012, 16
  br i1 %cmp2, label %while.body.cond.end_crit_edge, label %cond.false, !prof !52

while.body.cond.end_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 642) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %while.body.cond.end_crit_edge
  %mul = shl i32 %nextbit.012, 2
  %sh_prom = zext i32 %mul to i64
  %shl = shl i64 15, %sh_prom
  %or = or i64 %shl, %bitmap.011
  %add = add nuw i32 %nextbit.012, 1
  %call5 = call i32 @xfs_next_bit(ptr noundef nonnull %allocbitmap, i32 noundef 1, i32 noundef %add) #15
  %cmp.not = icmp eq i32 %call5, -1
  br i1 %cmp.not, label %cond.end.while.end_crit_edge, label %cond.end.while.body_crit_edge

cond.end.while.body_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %cond.end.while.end_crit_edge, %entry.while.end_crit_edge
  %bitmap.0.lcssa = phi i64 [ 0, %entry.while.end_crit_edge ], [ %or, %cond.end.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %allocbitmap) #15
  ret i64 %bitmap.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_next_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_inobt_rec_check_count(ptr nocapture noundef readnone %mp, ptr nocapture noundef readonly %rec) local_unnamed_addr #0 align 64 {
entry:
  %allocbitmap.i = alloca i32, align 4
  %allocbmap = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %allocbmap) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %allocbitmap.i) #15
  %ir_holemask.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 1
  %0 = ptrtoint ptr %ir_holemask.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ir_holemask.i, align 4
  %2 = xor i16 %1, -1
  %and.i = zext i16 %2 to i32
  %3 = ptrtoint ptr %allocbitmap.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and.i, ptr %allocbitmap.i, align 4
  %call.i = call i32 @xfs_next_bit(ptr noundef nonnull %allocbitmap.i, i32 noundef 1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.not10.i = icmp eq i32 %call.i, -1
  br i1 %cmp.not10.i, label %entry.xfs_inobt_irec_to_allocmask.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.xfs_inobt_irec_to_allocmask.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_inobt_irec_to_allocmask.exit

while.body.i:                                     ; preds = %cond.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %nextbit.012.i = phi i32 [ %call5.i, %cond.end.i.while.body.i_crit_edge ], [ %call.i, %entry.while.body.i_crit_edge ]
  %bitmap.011.i = phi i64 [ %or.i, %cond.end.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %nextbit.012.i)
  %cmp2.i = icmp ult i32 %nextbit.012.i, 16
  br i1 %cmp2.i, label %while.body.i.cond.end.i_crit_edge, label %cond.false.i, !prof !52

while.body.i.cond.end.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i

cond.false.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 642) #15
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %while.body.i.cond.end.i_crit_edge
  %mul.i = shl i32 %nextbit.012.i, 2
  %sh_prom.i = zext i32 %mul.i to i64
  %shl.i = shl i64 15, %sh_prom.i
  %or.i = or i64 %shl.i, %bitmap.011.i
  %add.i = add nuw i32 %nextbit.012.i, 1
  %call5.i = call i32 @xfs_next_bit(ptr noundef nonnull %allocbitmap.i, i32 noundef 1, i32 noundef %add.i) #15
  %cmp.not.i = icmp eq i32 %call5.i, -1
  br i1 %cmp.not.i, label %cond.end.i.xfs_inobt_irec_to_allocmask.exit_crit_edge, label %cond.end.i.while.body.i_crit_edge

cond.end.i.while.body.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

cond.end.i.xfs_inobt_irec_to_allocmask.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_inobt_irec_to_allocmask.exit

xfs_inobt_irec_to_allocmask.exit:                 ; preds = %cond.end.i.xfs_inobt_irec_to_allocmask.exit_crit_edge, %entry.xfs_inobt_irec_to_allocmask.exit_crit_edge
  %bitmap.0.lcssa.i = phi i64 [ 0, %entry.xfs_inobt_irec_to_allocmask.exit_crit_edge ], [ %or.i, %cond.end.i.xfs_inobt_irec_to_allocmask.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %allocbitmap.i) #15
  %4 = ptrtoint ptr %allocbmap to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %bitmap.0.lcssa.i, ptr %allocbmap, align 8
  %call1 = call i32 @xfs_next_bit(ptr noundef nonnull %allocbmap, i32 noundef 2, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp.not13 = icmp eq i32 %call1, -1
  br i1 %cmp.not13, label %xfs_inobt_irec_to_allocmask.exit.while.end_crit_edge, label %xfs_inobt_irec_to_allocmask.exit.while.body_crit_edge

xfs_inobt_irec_to_allocmask.exit.while.body_crit_edge: ; preds = %xfs_inobt_irec_to_allocmask.exit
  br label %while.body

xfs_inobt_irec_to_allocmask.exit.while.end_crit_edge: ; preds = %xfs_inobt_irec_to_allocmask.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %xfs_inobt_irec_to_allocmask.exit.while.body_crit_edge
  %nextbit.015 = phi i32 [ %call2, %while.body.while.body_crit_edge ], [ %call1, %xfs_inobt_irec_to_allocmask.exit.while.body_crit_edge ]
  %inocount.014 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %xfs_inobt_irec_to_allocmask.exit.while.body_crit_edge ]
  %inc = add i32 %inocount.014, 1
  %add = add nuw i32 %nextbit.015, 1
  %call2 = call i32 @xfs_next_bit(ptr noundef nonnull %allocbmap, i32 noundef 2, i32 noundef %add) #15
  %cmp.not = icmp eq i32 %call2, -1
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %xfs_inobt_irec_to_allocmask.exit.while.end_crit_edge
  %inocount.0.lcssa = phi i32 [ 0, %xfs_inobt_irec_to_allocmask.exit.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %ir_count = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec, i32 0, i32 2
  %5 = ptrtoint ptr %ir_count to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ir_count, align 2
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inocount.0.lcssa, i32 %conv)
  %cmp3.not = icmp eq i32 %inocount.0.lcssa, %conv
  %. = select i1 %cmp3.not, i32 0, i32 -117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %allocbmap) #15
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_inobt_cur(ptr noundef %mp, ptr noundef %tp, ptr noundef %pag, i32 noundef %which, ptr nocapture noundef %curpp, ptr noundef %agi_bpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %agi_bpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %agi_bpp, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !52

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 722) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %2 = ptrtoint ptr %curpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curpp, align 4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %cond.end.cond.end11_crit_edge, label %cond.false10, !prof !52

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 723) #15
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %4 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pag_agno, align 4
  %call = tail call i32 @xfs_ialloc_read_agi(ptr noundef %mp, ptr noundef %tp, i32 noundef %5, ptr noundef %agi_bpp) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.end, label %cond.end11.cleanup_crit_edge

cond.end11.cleanup_crit_edge:                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %cond.end11
  %6 = ptrtoint ptr %agi_bpp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %agi_bpp, align 4
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_addr.i, align 4
  %inobt_maxlevels.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 10
  %10 = ptrtoint ptr %inobt_maxlevels.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inobt_maxlevels.i.i, align 4
  %conv.i.i = trunc i32 %11 to i8
  %12 = load ptr, ptr @xfs_inobt_cur_cache, align 4
  %call.i.i18.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %12, i32 noundef 36160) #15
  %13 = ptrtoint ptr %call.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tp, ptr %call.i.i18.i.i, align 8
  %bc_mp.i.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %bc_mp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %mp, ptr %bc_mp.i.i.i, align 4
  %bc_btnum.i.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %bc_btnum.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %which, ptr %bc_btnum.i.i.i, align 4
  %bc_maxlevels.i.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %bc_maxlevels.i.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i.i, ptr %bc_maxlevels.i.i.i, align 1
  %bc_cache.i.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %bc_cache.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %12, ptr %bc_cache.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %which)
  %cmp.i.i = icmp eq i32 %which, 4
  %spec.select.i.i = select i1 %cmp.i.i, i32 121, i32 136
  %spec.select19.i.i = select i1 %cmp.i.i, ptr @xfs_inobt_ops, ptr @xfs_finobt_ops
  %18 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select.i.i, ptr %18, align 4
  %20 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spec.select19.i.i, ptr %20, align 8
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %22 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i = and i64 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.xfs_inobt_init_cursor.exit_crit_edge, label %if.then5.i.i

if.end.xfs_inobt_init_cursor.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_inobt_init_cursor.exit

if.then5.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %bc_flags.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %bc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bc_flags.i.i, align 8
  %or.i.i = or i32 %25, 8
  store i32 %or.i.i, ptr %bc_flags.i.i, align 8
  br label %xfs_inobt_init_cursor.exit

xfs_inobt_init_cursor.exit:                       ; preds = %if.then5.i.i, %if.end.xfs_inobt_init_cursor.exit_crit_edge
  %pag_ref.i.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pag_ref.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %pag_ref.i.i, i32 1, i32 3, i32 1) #15
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pag_ref.i.i, ptr %pag_ref.i.i, i32 1, ptr elementtype(i32) %pag_ref.i.i) #15, !srcloc !50
  %27 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %pag, ptr %27, align 8
  %agi_level.i = getelementptr inbounds %struct.xfs_agi, ptr %9, i32 0, i32 6
  %agi_free_level.i = getelementptr inbounds %struct.xfs_agi, ptr %9, i32 0, i32 16
  %conv1.sink.in.in.i = select i1 %cmp.i.i, ptr %agi_level.i, ptr %agi_free_level.i
  %29 = ptrtoint ptr %conv1.sink.in.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %conv1.sink.in.i = load i32, ptr %conv1.sink.in.in.i, align 4
  %conv1.sink.i = trunc i32 %conv1.sink.in.i to i8
  %30 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv1.sink.i, ptr %30, align 8
  %32 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 10, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %7, ptr %32, align 4
  %34 = ptrtoint ptr %curpp to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i18.i.i, ptr %curpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %xfs_inobt_init_cursor.exit, %cond.end11.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ialloc_read_agi(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_finobt_calc_reserves(ptr noundef %mp, ptr noundef %tp, ptr noundef %pag, ptr nocapture noundef %ask, ptr nocapture noundef %used) local_unnamed_addr #0 align 64 {
entry:
  %agbp.i22 = alloca ptr, align 4
  %cur.i = alloca ptr, align 4
  %agbp.i = alloca ptr, align 4
  %tree_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tree_len) #15
  %0 = ptrtoint ptr %tree_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tree_len, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %1 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i20 = and i64 %2, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i20)
  %tobool.i21.not = icmp eq i64 %and.i20, 0
  br i1 %tobool.i21.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agbp.i) #15
  %3 = ptrtoint ptr %agbp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %agbp.i, align 4, !annotation !53
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %4 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pag_agno.i, align 4
  %call.i = call i32 @xfs_ialloc_read_agi(ptr noundef %mp, ptr noundef %tp, i32 noundef %5, ptr noundef nonnull %agbp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then2.xfs_finobt_read_blocks.exit_crit_edge

if.then2.xfs_finobt_read_blocks.exit_crit_edge:   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_finobt_read_blocks.exit

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %agbp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %agbp.i, align 4
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_addr.i, align 4
  %agi_fblocks.i = getelementptr inbounds %struct.xfs_agi, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %agi_fblocks.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %agi_fblocks.i, align 4
  %12 = ptrtoint ptr %tree_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tree_len, align 4
  call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %7) #15
  br label %xfs_finobt_read_blocks.exit

xfs_finobt_read_blocks.exit:                      ; preds = %if.end.i, %if.then2.xfs_finobt_read_blocks.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agbp.i) #15
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agbp.i22) #15
  %13 = ptrtoint ptr %agbp.i22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %agbp.i22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur.i) #15
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cur.i, align 4
  %call.i23 = call i32 @xfs_inobt_cur(ptr noundef %mp, ptr noundef %tp, ptr noundef %pag, i32 noundef 5, ptr noundef nonnull %cur.i, ptr noundef nonnull %agbp.i22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i24 = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i24, label %if.end.i25, label %if.else.xfs_inobt_count_blocks.exit_crit_edge

if.else.xfs_inobt_count_blocks.exit_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_inobt_count_blocks.exit

if.end.i25:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i, align 4
  %call1.i = call i32 @xfs_btree_count_blocks(ptr noundef %16, ptr noundef nonnull %tree_len) #15
  call void @xfs_btree_del_cursor(ptr noundef %16, i32 noundef %call1.i) #15
  %17 = ptrtoint ptr %agbp.i22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %agbp.i22, align 4
  call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %18) #15
  br label %xfs_inobt_count_blocks.exit

xfs_inobt_count_blocks.exit:                      ; preds = %if.end.i25, %if.else.xfs_inobt_count_blocks.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i25 ], [ %call.i23, %if.else.xfs_inobt_count_blocks.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agbp.i22) #15
  br label %if.end5

if.end5:                                          ; preds = %xfs_inobt_count_blocks.exit, %xfs_finobt_read_blocks.exit
  %error.0 = phi i32 [ %call.i, %xfs_finobt_read_blocks.exit ], [ %retval.0.i, %xfs_inobt_count_blocks.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool.not = icmp eq i32 %error.0, 0
  br i1 %tobool.not, label %if.end7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %19 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pag_agno, align 4
  %call.i26 = call i32 @xfs_ag_block_count(ptr noundef %mp, i32 noundef %20) #15
  %inobt_mxr.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 8
  %21 = ptrtoint ptr %inobt_mxr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %inobt_mxr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %if.end7.xfs_inobt_max_size.exit_crit_edge, label %if.end.i28

if.end7.xfs_inobt_max_size.exit_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_inobt_max_size.exit

if.end.i28:                                       ; preds = %if.end7
  %sb_logstart.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 6
  %23 = ptrtoint ptr %sb_logstart.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %sb_logstart.i, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool.not.i27 = icmp eq i64 %24, 0
  br i1 %tobool.not.i27, label %if.end.i28.if.end9.i_crit_edge, label %land.lhs.true.i

if.end.i28.if.end9.i_crit_edge:                   ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i28
  %sb_agblklog.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  %25 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sb_agblklog.i, align 4
  %sh_prom.i = zext i8 %26 to i64
  %shr.i = lshr i64 %24, %sh_prom.i
  %conv4.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv4.i)
  %cmp5.i = icmp eq i32 %20, %conv4.i
  br i1 %cmp5.i, label %if.then7.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %sb_logblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 14
  %27 = ptrtoint ptr %sb_logblocks.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sb_logblocks.i, align 32
  %sub.i = sub i32 %call.i26, %28
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i28.if.end9.i_crit_edge
  %agblocks.0.i = phi i32 [ %sub.i, %if.then7.i ], [ %call.i26, %land.lhs.true.i.if.end9.i_crit_edge ], [ %call.i26, %if.end.i28.if.end9.i_crit_edge ]
  %inobt_mnr.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 9
  %conv11.i = zext i32 %agblocks.0.i to i64
  %sb_inopblock.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 18
  %29 = ptrtoint ptr %sb_inopblock.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sb_inopblock.i, align 2
  %conv13.i = zext i16 %30 to i64
  %mul.i = mul nuw nsw i64 %conv13.i, %conv11.i
  %div25.i = lshr i64 %mul.i, 6
  %call14.i = call i64 @xfs_btree_calc_size(ptr noundef %inobt_mnr.i, i64 noundef %div25.i) #15
  %conv15.i = trunc i64 %call14.i to i32
  br label %xfs_inobt_max_size.exit

xfs_inobt_max_size.exit:                          ; preds = %if.end9.i, %if.end7.xfs_inobt_max_size.exit_crit_edge
  %retval.0.i29 = phi i32 [ %conv15.i, %if.end9.i ], [ 0, %if.end7.xfs_inobt_max_size.exit_crit_edge ]
  %31 = ptrtoint ptr %ask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ask, align 4
  %add = add i32 %32, %retval.0.i29
  store i32 %add, ptr %ask, align 4
  %33 = ptrtoint ptr %tree_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tree_len, align 4
  %35 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %used, align 4
  %add9 = add i32 %36, %34
  store i32 %add9, ptr %used, align 4
  br label %cleanup

cleanup:                                          ; preds = %xfs_inobt_max_size.exit, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %xfs_inobt_max_size.exit ], [ 0, %entry.cleanup_crit_edge ], [ %error.0, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tree_len) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_iallocbt_calc_size(ptr noundef %mp, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %inobt_mnr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 9
  %call = tail call i64 @xfs_btree_calc_size(ptr noundef %inobt_mnr, i64 noundef %len) #15
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_btree_calc_size(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_inobt_init_cur_cache() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  %minrecs.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %minrecs.i) #15
  %0 = getelementptr inbounds [2 x i32], ptr %minrecs.i, i32 0, i32 1
  %1 = ptrtoint ptr %minrecs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 15, ptr %minrecs.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 31, ptr %0, align 4
  %call4.i = call i32 @xfs_btree_compute_maxlevels(ptr noundef nonnull %minrecs.i, i64 noundef 67108863) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %minrecs.i) #15
  %3 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4.i, i32 8) #15
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %spec.select.i.i = call i32 @llvm.uadd.sat.i32(i32 %5, i32 80) #15
  %retval.0.i.i = select i1 %4, i32 -1, i32 %spec.select.i.i
  %call2 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.7, i32 noundef %retval.0.i.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  store ptr %call2, ptr @xfs_inobt_cur_cache, align 4
  %tobool.not = icmp eq ptr %call2, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_inobt_destroy_cur_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xfs_inobt_cur_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #15
  store ptr null, ptr @xfs_inobt_cur_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_btree_sblock_verify_crc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_verifier_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_btree_corrupt(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_corrupt, i32 0, i32 1), ptr blockaddress(@trace_xfs_btree_corrupt, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !54

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !37) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !55
  %call42 = tail call i32 @__traceiter_xfs_btree_corrupt(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !56
  %13 = tail call i32 @llvm.read_register.i32(metadata !37) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !37) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !37) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_corrupt, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_corrupt, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_btree_corrupt.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_xfs_btree_corrupt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 473, ptr noundef nonnull @.str.9) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !58
  %31 = tail call i32 @llvm.read_register.i32(metadata !37) #15
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
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_sblock_calc_crc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_magic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_sblock_v5hdr_verify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_sblock_verify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_inobt_dup_cursor(ptr nocapture noundef readonly %cur) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur, align 8
  %4 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %5 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %4, align 8
  %bc_btnum = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 5
  %10 = ptrtoint ptr %bc_btnum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bc_btnum, align 4
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %7, i32 0, i32 16
  %12 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_addr.i, align 4
  %inobt_maxlevels.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 10
  %14 = ptrtoint ptr %inobt_maxlevels.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inobt_maxlevels.i.i, align 4
  %conv.i.i = trunc i32 %15 to i8
  %16 = load ptr, ptr @xfs_inobt_cur_cache, align 4
  %call.i.i18.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %16, i32 noundef 36160) #15
  %17 = ptrtoint ptr %call.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %call.i.i18.i.i, align 8
  %bc_mp.i.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %bc_mp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %bc_mp.i.i.i, align 4
  %bc_btnum.i.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %bc_btnum.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %11, ptr %bc_btnum.i.i.i, align 4
  %bc_maxlevels.i.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %bc_maxlevels.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i.i, ptr %bc_maxlevels.i.i.i, align 1
  %bc_cache.i.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %bc_cache.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %16, ptr %bc_cache.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 4
  %spec.select.i.i = select i1 %cmp.i.i, i32 121, i32 136
  %spec.select19.i.i = select i1 %cmp.i.i, ptr @xfs_inobt_ops, ptr @xfs_finobt_ops
  %22 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select.i.i, ptr %22, align 4
  %24 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %spec.select19.i.i, ptr %24, align 8
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %26 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i = and i64 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %entry.xfs_inobt_init_cursor.exit_crit_edge, label %if.then5.i.i

entry.xfs_inobt_init_cursor.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_inobt_init_cursor.exit

if.then5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %bc_flags.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %bc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bc_flags.i.i, align 8
  %or.i.i = or i32 %29, 8
  store i32 %or.i.i, ptr %bc_flags.i.i, align 8
  br label %xfs_inobt_init_cursor.exit

xfs_inobt_init_cursor.exit:                       ; preds = %if.then5.i.i, %entry.xfs_inobt_init_cursor.exit_crit_edge
  %pag_ref.i.i = getelementptr inbounds %struct.xfs_perag, ptr %9, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pag_ref.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %pag_ref.i.i, i32 1, i32 3, i32 1) #15
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pag_ref.i.i, ptr %pag_ref.i.i, i32 1, ptr elementtype(i32) %pag_ref.i.i) #15, !srcloc !50
  %31 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 10
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %9, ptr %31, align 8
  %agi_level.i = getelementptr inbounds %struct.xfs_agi, ptr %13, i32 0, i32 6
  %agi_free_level.i = getelementptr inbounds %struct.xfs_agi, ptr %13, i32 0, i32 16
  %conv1.sink.in.in.i = select i1 %cmp.i.i, ptr %agi_level.i, ptr %agi_free_level.i
  %33 = ptrtoint ptr %conv1.sink.in.in.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %conv1.sink.in.i = load i32, ptr %conv1.sink.in.in.i, align 4
  %conv1.sink.i = trunc i32 %conv1.sink.in.i to i8
  %34 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 7
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv1.sink.i, ptr %34, align 8
  %36 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i18.i.i, i32 0, i32 10, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %7, ptr %36, align 4
  ret ptr %call.i.i18.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_inobt_set_root(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %nptr, i32 noundef %inc) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_addr, align 4
  %5 = ptrtoint ptr %nptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nptr, align 8
  %agi_root = getelementptr inbounds %struct.xfs_agi, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %agi_root to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %agi_root, align 4
  %agi_level = getelementptr inbounds %struct.xfs_agi, ptr %4, i32 0, i32 6
  %8 = ptrtoint ptr %agi_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %agi_level, align 4
  %add.i = add i32 %9, %inc
  store i32 %add.i, ptr %agi_level, align 4
  %10 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur, align 8
  tail call void @xfs_ialloc_log_agi(ptr noundef %11, ptr noundef %2, i32 noundef 96) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_inobt_alloc_block(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %start, ptr nocapture noundef writeonly %new, ptr nocapture noundef writeonly %stat) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__xfs_inobt_alloc_block(ptr noundef %cur, ptr noundef %start, ptr noundef %new, ptr noundef %stat, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_inobt_free_block(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %bp) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__xfs_inobt_free_block(ptr noundef %cur, ptr noundef %bp, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_inobt_get_minrecs(ptr nocapture noundef readonly %cur, i32 noundef %level) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp = icmp ne i32 %level, 0
  %conv = zext i1 %cmp to i32
  %arrayidx = getelementptr %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 9, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_inobt_get_maxrecs(ptr nocapture noundef readonly %cur, i32 noundef %level) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp = icmp ne i32 %level, 0
  %conv = zext i1 %cmp to i32
  %arrayidx = getelementptr %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 8, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_inobt_init_key_from_rec(ptr nocapture noundef writeonly %key, ptr nocapture noundef readonly %rec) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rec, align 8
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %key, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_inobt_init_rec_from_cur(ptr nocapture noundef readonly %cur, ptr nocapture noundef writeonly %rec) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_rec = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %0 = ptrtoint ptr %bc_rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bc_rec, align 8
  %2 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %rec, align 8
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %3 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bc_mp, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 61
  %5 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %6, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ir_holemask = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec, i32 0, i32 1
  %7 = ptrtoint ptr %ir_holemask to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ir_holemask, align 4
  %ir_u = getelementptr inbounds %struct.xfs_inobt_rec, ptr %rec, i32 0, i32 1
  %9 = ptrtoint ptr %ir_u to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %ir_u, align 4
  %ir_count = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec, i32 0, i32 2
  %10 = ptrtoint ptr %ir_count to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ir_count, align 2
  %ir_count6 = getelementptr inbounds %struct.anon.92, ptr %ir_u, i32 0, i32 1
  %12 = ptrtoint ptr %ir_count6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %ir_count6, align 2
  %ir_freecount = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec, i32 0, i32 3
  %13 = ptrtoint ptr %ir_freecount to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ir_freecount, align 1
  %ir_freecount9 = getelementptr inbounds %struct.anon.92, ptr %ir_u, i32 0, i32 2
  %15 = ptrtoint ptr %ir_freecount9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ir_freecount9, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ir_freecount11 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %bc_rec, i32 0, i32 3
  %16 = ptrtoint ptr %ir_freecount11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ir_freecount11, align 1
  %conv = zext i8 %17 to i32
  %ir_u12 = getelementptr inbounds %struct.xfs_inobt_rec, ptr %rec, i32 0, i32 1
  %18 = ptrtoint ptr %ir_u12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %ir_u12, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ir_free = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 1
  %19 = ptrtoint ptr %ir_free to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ir_free, align 8
  %ir_free15 = getelementptr inbounds %struct.xfs_inobt_rec, ptr %rec, i32 0, i32 2
  %21 = ptrtoint ptr %ir_free15 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %ir_free15, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_inobt_init_ptr_from_cur(ptr nocapture noundef readonly %cur, ptr nocapture noundef writeonly %ptr) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %1 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_addr, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pag_agno, align 4
  %agi_seqno = getelementptr inbounds %struct.xfs_agi, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %agi_seqno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %agi_seqno, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !52

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, i32 noundef 240) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %agi_root = getelementptr inbounds %struct.xfs_agi, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %agi_root to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %agi_root, align 4
  %14 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ptr, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_inobt_init_high_key_from_rec(ptr nocapture noundef writeonly %key, ptr nocapture noundef readonly %rec) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rec, align 8
  %add = add i32 %1, 63
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %key, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @xfs_inobt_key_diff(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %key) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 8
  %conv = zext i32 %1 to i64
  %bc_rec = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %2 = ptrtoint ptr %bc_rec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bc_rec, align 8
  %conv2 = zext i32 %3 to i64
  %sub = sub nsw i64 %conv, %conv2
  ret i64 %sub
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @xfs_inobt_diff_two_keys(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %k1, ptr nocapture noundef readonly %k2) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %k1, align 8
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %k2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %k2, align 8
  %conv2 = zext i32 %3 to i64
  %sub = sub nsw i64 %conv, %conv2
  ret i64 %sub
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_inobt_keys_inorder(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %k1, ptr nocapture noundef readonly %k2) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %k1, align 8
  %2 = ptrtoint ptr %k2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %k2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_inobt_recs_inorder(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %r1, ptr nocapture noundef readonly %r2) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %r1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r1, align 8
  %add = add i32 %1, 64
  %2 = ptrtoint ptr %r2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ule i32 %add, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xfs_inobt_alloc_block(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %start, ptr nocapture noundef writeonly %new, ptr nocapture noundef writeonly %stat, i32 noundef %resv) unnamed_addr #9 align 64 {
entry:
  %args = alloca %struct.xfs_alloc_arg, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %args) #15
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start, align 8
  %2 = getelementptr inbounds i8, ptr %args, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 120)
  %4 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur, align 8
  %6 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %args, align 8
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %7 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bc_mp, align 4
  %mp = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 1
  %9 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %mp, align 4
  %oinfo = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 23
  %10 = call ptr @memcpy(ptr %oinfo, ptr @XFS_RMAP_OINFO_INOBT, i32 24)
  %11 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pag_agno, align 4
  %conv = zext i32 %15 to i64
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %8, i32 0, i32 24
  %16 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %17 to i64
  %shl = shl i64 %conv, %sh_prom
  %conv3 = zext i32 %1 to i64
  %or = or i64 %shl, %conv3
  %fsbno = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 4
  %18 = ptrtoint ptr %fsbno to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %or, ptr %fsbno, align 8
  %minlen = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 7
  %19 = ptrtoint ptr %minlen to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %minlen, align 8
  %maxlen = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 8
  %20 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %maxlen, align 4
  %prod = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 10
  %21 = ptrtoint ptr %prod to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %prod, align 4
  %type = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 18
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %type, align 4
  %resv4 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 24
  %23 = ptrtoint ptr %resv4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %resv, ptr %resv4, align 8
  %call = call i32 @xfs_alloc_vextent(ptr noundef nonnull %args) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = ptrtoint ptr %fsbno to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %fsbno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %25)
  %cmp = icmp eq i64 %25, -1
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %stat, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 17
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp9 = icmp eq i32 %28, 1
  br i1 %cmp9, label %if.end8.cond.end_crit_edge, label %cond.false, !prof !52

if.end8.cond.end_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 122) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end8.cond.end_crit_edge
  %29 = ptrtoint ptr %fsbno to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %fsbno, align 8
  %31 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mp, align 4
  %sb_agblklog16 = getelementptr inbounds %struct.xfs_sb, ptr %32, i32 0, i32 24
  %33 = ptrtoint ptr %sb_agblklog16 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sb_agblklog16, align 4
  %conv17 = zext i8 %34 to i32
  %notmask.i = shl nsw i32 -1, %conv17
  %sub.i = xor i32 %notmask.i, -1
  %35 = trunc i64 %30 to i32
  %conv20 = and i32 %sub.i, %35
  %36 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv20, ptr %new, align 8
  %37 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %stat, align 4
  %38 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_addr.i, align 4
  %43 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bc_mp, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %44, i32 0, i32 61
  %45 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %46, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %cond.end.cleanup_crit_edge, label %if.end.i

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %cond.end
  %bc_btnum.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 5
  %47 = ptrtoint ptr %bc_btnum.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bc_btnum.i, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i32 %48, label %if.end.i.if.end6.i_crit_edge [
    i32 5, label %if.then1.i
    i32 4, label %if.then4.i
  ]

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %agi_fblocks.i = getelementptr inbounds %struct.xfs_agi, ptr %42, i32 0, i32 18
  br label %if.end6.sink.split.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %agi_iblocks.i = getelementptr inbounds %struct.xfs_agi, ptr %42, i32 0, i32 17
  br label %if.end6.sink.split.i

if.end6.sink.split.i:                             ; preds = %if.then4.i, %if.then1.i
  %agi_iblocks.sink16.i = phi ptr [ %agi_iblocks.i, %if.then4.i ], [ %agi_fblocks.i, %if.then1.i ]
  %50 = ptrtoint ptr %agi_iblocks.sink16.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %agi_iblocks.sink16.i, align 4
  %add.i15.i = add i32 %51, 1
  store i32 %add.i15.i, ptr %agi_iblocks.sink16.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end6.sink.split.i, %if.end.i.if.end6.i_crit_edge
  %52 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cur, align 8
  call void @xfs_ialloc_log_agi(ptr noundef %53, ptr noundef %40, i32 noundef 8192) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %cond.end.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %args) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_vextent(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xfs_inobt_free_block(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %bp, i32 noundef %resv) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_addr.i, align 4
  %bc_mp.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %5 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bc_mp.i, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 61
  %7 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %8, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.xfs_inobt_mod_blockcount.exit_crit_edge, label %if.end.i

entry.xfs_inobt_mod_blockcount.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfs_inobt_mod_blockcount.exit

if.end.i:                                         ; preds = %entry
  %bc_btnum.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 5
  %9 = ptrtoint ptr %bc_btnum.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bc_btnum.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %10, label %if.end.i.if.end6.i_crit_edge [
    i32 5, label %if.then1.i
    i32 4, label %if.then4.i
  ]

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %agi_fblocks.i = getelementptr inbounds %struct.xfs_agi, ptr %4, i32 0, i32 18
  br label %if.end6.sink.split.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %agi_iblocks.i = getelementptr inbounds %struct.xfs_agi, ptr %4, i32 0, i32 17
  br label %if.end6.sink.split.i

if.end6.sink.split.i:                             ; preds = %if.then4.i, %if.then1.i
  %agi_iblocks.sink16.i = phi ptr [ %agi_iblocks.i, %if.then4.i ], [ %agi_fblocks.i, %if.then1.i ]
  %12 = ptrtoint ptr %agi_iblocks.sink16.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %agi_iblocks.sink16.i, align 4
  %add.i15.i = add i32 %13, -1
  store i32 %add.i15.i, ptr %agi_iblocks.sink16.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end6.sink.split.i, %if.end.i.if.end6.i_crit_edge
  %14 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur, align 8
  tail call void @xfs_ialloc_log_agi(ptr noundef %15, ptr noundef %2, i32 noundef 8192) #15
  br label %xfs_inobt_mod_blockcount.exit

xfs_inobt_mod_blockcount.exit:                    ; preds = %if.end6.i, %entry.xfs_inobt_mod_blockcount.exit_crit_edge
  %16 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur, align 8
  %18 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bc_mp.i, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %20 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_maps.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %21, align 8
  %m_blkbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %19, i32 0, i32 28
  %24 = ptrtoint ptr %m_blkbb_log.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %m_blkbb_log.i, align 1
  %sh_prom.i = zext i8 %25 to i64
  %shr.i = ashr i64 %23, %sh_prom.i
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %19, i32 0, i32 11
  %26 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sb_agblocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr.i)
  %cmp168.i = icmp ult i64 %shr.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i117, label %if.else178.i118, !prof !52

if.then172.i117:                                  ; preds = %xfs_inobt_mod_blockcount.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv173.i = trunc i64 %shr.i to i32
  %conv173.i.frozen = freeze i32 %conv173.i
  %.frozen = freeze i32 %27
  %div176.i = udiv i32 %conv173.i.frozen, %.frozen
  %conv120127 = zext i32 %div176.i to i64
  %sb_agblklog121128 = getelementptr inbounds %struct.xfs_sb, ptr %19, i32 0, i32 24
  %28 = ptrtoint ptr %sb_agblklog121128 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sb_agblklog121128, align 4
  %sh_prom122129 = zext i8 %29 to i64
  %shl123130 = shl i64 %conv120127, %sh_prom122129
  %30 = mul i32 %div176.i, %.frozen
  %rem174.i.decomposed = sub i32 %conv173.i.frozen, %30
  br label %xfs_daddr_to_agbno.exit

if.else178.i118:                                  ; preds = %xfs_inobt_mod_blockcount.exit
  call void @__sanitizer_cov_trace_pc() #17
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %27, i64 %shr.i) #18
  %asmresult1.i.i = extractvalue { i64, i64 } %31, 1
  %conv120 = and i64 %asmresult1.i.i, 4294967295
  %sb_agblklog121 = getelementptr inbounds %struct.xfs_sb, ptr %19, i32 0, i32 24
  %32 = ptrtoint ptr %sb_agblklog121 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sb_agblklog121, align 4
  %sh_prom122 = zext i8 %33 to i64
  %shl123 = shl i64 %conv120, %sh_prom122
  %asmresult.i266.i = extractvalue { i64, i64 } %31, 0
  %shr.i.i = lshr i64 %asmresult.i266.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %xfs_daddr_to_agbno.exit

xfs_daddr_to_agbno.exit:                          ; preds = %if.else178.i118, %if.then172.i117
  %shl124 = phi i64 [ %shl123130, %if.then172.i117 ], [ %shl123, %if.else178.i118 ]
  %__rem.0.i = phi i32 [ %rem174.i.decomposed, %if.then172.i117 ], [ %conv.i.i, %if.else178.i118 ]
  %conv7 = zext i32 %__rem.0.i to i64
  %or = or i64 %shl124, %conv7
  %call.i = tail call i32 @__xfs_free_extent(ptr noundef %17, i64 noundef %or, i32 noundef 1, ptr noundef nonnull @XFS_RMAP_OINFO_INOBT, i32 noundef %resv, i1 noundef zeroext false) #15
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfs_free_extent(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_finobt_set_root(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %nptr, i32 noundef %inc) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_addr, align 4
  %5 = ptrtoint ptr %nptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nptr, align 8
  %agi_free_root = getelementptr inbounds %struct.xfs_agi, ptr %4, i32 0, i32 15
  %7 = ptrtoint ptr %agi_free_root to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %agi_free_root, align 8
  %agi_free_level = getelementptr inbounds %struct.xfs_agi, ptr %4, i32 0, i32 16
  %8 = ptrtoint ptr %agi_free_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %agi_free_level, align 4
  %add.i = add i32 %9, %inc
  store i32 %add.i, ptr %agi_free_level, align 4
  %10 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur, align 8
  tail call void @xfs_ialloc_log_agi(ptr noundef %11, ptr noundef %2, i32 noundef 6144) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_finobt_alloc_block(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %start, ptr nocapture noundef writeonly %new, ptr nocapture noundef writeonly %stat) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  %m_finobt_nores = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 69
  %2 = ptrtoint ptr %m_finobt_nores to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %m_finobt_nores, align 2, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @xfs_inobt_alloc_block(ptr noundef %cur, ptr noundef %start, ptr noundef %new, ptr noundef %stat)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call fastcc i32 @__xfs_inobt_alloc_block(ptr noundef %cur, ptr noundef %start, ptr noundef %new, ptr noundef %stat, i32 noundef 2)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_finobt_free_block(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %bp) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  %m_finobt_nores = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 69
  %2 = ptrtoint ptr %m_finobt_nores to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %m_finobt_nores, align 2, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @xfs_inobt_free_block(ptr noundef %cur, ptr noundef %bp)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call fastcc i32 @__xfs_inobt_free_block(ptr noundef %cur, ptr noundef %bp, i32 noundef 2)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_finobt_init_ptr_from_cur(ptr nocapture noundef readonly %cur, ptr nocapture noundef writeonly %ptr) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %1 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_addr, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pag_agno, align 4
  %agi_seqno = getelementptr inbounds %struct.xfs_agi, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %agi_seqno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %agi_seqno, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !52

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, i32 noundef 252) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %agi_free_root = getelementptr inbounds %struct.xfs_agi, ptr %5, i32 0, i32 15
  %12 = ptrtoint ptr %agi_free_root to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %agi_free_root, align 8
  %14 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ptr, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_compute_maxlevels(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_count_blocks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_del_cursor(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ag_block_count(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !28, !29, !31, !33, !35}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_ialloc_btree.c", i32 347, i32 10}
!2 = !{ptr @xfs_inobt_buf_ops, !3, !"xfs_inobt_buf_ops", i1 false, i1 false}
!3 = !{!"../fs/xfs/libxfs/xfs_ialloc_btree.c", i32 346, i32 26}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/libxfs/xfs_ialloc_btree.c", i32 355, i32 10}
!6 = !{ptr @xfs_finobt_buf_ops, !7, !"xfs_finobt_buf_ops", i1 false, i1 false}
!7 = !{!"../fs/xfs/libxfs/xfs_ialloc_btree.c", i32 354, i32 26}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/libxfs/xfs_ialloc_btree.c", i32 506, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_ialloc_btree.c", i32 642, i32 3}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_ialloc_btree.c", i32 722, i32 2}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_ialloc_btree.c", i32 723, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_ialloc_btree.c", i32 821, i32 42}
!19 = !{ptr @xfs_inobt_cur_cache, !20, !"xfs_inobt_cur_cache", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_ialloc_btree.c", i32 25, i32 27}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_trace.h", i32 473, i32 1}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!25 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @xfs_inobt_ops, !30, !"xfs_inobt_ops", i1 false, i1 false}
!30 = !{!"../fs/xfs/libxfs/xfs_ialloc_btree.c", i32 383, i32 35}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/libxfs/xfs_ialloc_btree.c", i32 122, i32 2}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/libxfs/xfs_ialloc_btree.c", i32 240, i32 2}
!35 = !{ptr @xfs_finobt_ops, !36, !"xfs_finobt_ops", i1 false, i1 false}
!36 = !{!"../fs/xfs/libxfs/xfs_ialloc_btree.c", i32 404, i32 35}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2166283551}
!48 = !{i64 2166283255}
!49 = !{i64 2166283427}
!50 = !{i64 2148635902, i64 2148635928, i64 2148635957, i64 2148635991, i64 2148636022, i64 2148636045}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{!"auto-init"}
!54 = !{i64 2148263890, i64 2148263895, i64 2148263908, i64 2148263952, i64 2148263986, i64 2148264007}
!55 = !{i64 2157012480}
!56 = !{i64 2157012703}
!57 = !{i64 2149965983}
!58 = !{i64 2149967019}
!59 = !{i8 0, i8 2}
