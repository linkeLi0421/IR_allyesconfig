; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_alloc_btree.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_alloc_btree.c"
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
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.xfs_agf = type { i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, %struct.uuid_t, i32, i32, i32, i32, [14 x i64], i64, i32, i32 }
%struct.xfs_btree_cur = type { ptr, ptr, ptr, ptr, i32, i32, %union.xfs_btree_irec, i8, i8, i32, %union.anon.93, [0 x %struct.xfs_btree_level] }
%union.xfs_btree_irec = type { %struct.xfs_bmbt_irec }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%union.anon.93 = type { %struct.xfs_btree_cur_ag }
%struct.xfs_btree_cur_ag = type { ptr, %union.anon.94, %union.anon.95 }
%union.anon.94 = type { ptr }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { i32, i32 }
%struct.xfs_btree_level = type { ptr, i16, i16 }
%struct.xbtree_afakeroot = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_alloc_rec = type { i32, i32 }
%struct.xfs_alloc_rec_incore = type { i32, i32 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xfs_bnobt\00", [22 x i8] zeroinitializer }, align 32
@xfs_bnobt_buf_ops = dso_local constant { %struct.xfs_buf_ops, [40 x i8] } { %struct.xfs_buf_ops { ptr @.str, %union.anon { [2 x i32] [i32 1094865986, i32 1094857538] }, ptr @xfs_allocbt_read_verify, ptr @xfs_allocbt_write_verify, ptr @xfs_allocbt_verify }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xfs_cntbt\00", [22 x i8] zeroinitializer }, align 32
@xfs_cntbt_buf_ops = dso_local constant { %struct.xfs_buf_ops, [40 x i8] } { %struct.xfs_buf_ops { ptr @.str.1, %union.anon { [2 x i32] [i32 1094865987, i32 1094857539] }, ptr @xfs_allocbt_read_verify, ptr @xfs_allocbt_write_verify, ptr @xfs_allocbt_verify }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cur->bc_flags & XFS_BTREE_STAGING\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fs/xfs/libxfs/xfs_alloc_btree.c\00", [32 x i8] zeroinitializer }, align 32
@xfs_bnobt_ops = internal constant { %struct.xfs_btree_ops, [48 x i8] } { %struct.xfs_btree_ops { i32 8, i32 8, ptr @xfs_allocbt_dup_cursor, ptr null, ptr @xfs_allocbt_set_root, ptr @xfs_allocbt_alloc_block, ptr @xfs_allocbt_free_block, ptr @xfs_allocbt_update_lastrec, ptr @xfs_allocbt_get_minrecs, ptr @xfs_allocbt_get_maxrecs, ptr null, ptr @xfs_allocbt_init_key_from_rec, ptr @xfs_allocbt_init_rec_from_cur, ptr @xfs_allocbt_init_ptr_from_cur, ptr @xfs_bnobt_init_high_key_from_rec, ptr @xfs_bnobt_key_diff, ptr @xfs_bnobt_diff_two_keys, ptr @xfs_bnobt_buf_ops, ptr @xfs_bnobt_keys_inorder, ptr @xfs_bnobt_recs_inorder }, [48 x i8] zeroinitializer }, align 32
@xfs_cntbt_ops = internal constant { %struct.xfs_btree_ops, [48 x i8] } { %struct.xfs_btree_ops { i32 8, i32 8, ptr @xfs_allocbt_dup_cursor, ptr null, ptr @xfs_allocbt_set_root, ptr @xfs_allocbt_alloc_block, ptr @xfs_allocbt_free_block, ptr @xfs_allocbt_update_lastrec, ptr @xfs_allocbt_get_minrecs, ptr @xfs_allocbt_get_maxrecs, ptr null, ptr @xfs_allocbt_init_key_from_rec, ptr @xfs_allocbt_init_rec_from_cur, ptr @xfs_allocbt_init_ptr_from_cur, ptr @xfs_cntbt_init_high_key_from_rec, ptr @xfs_cntbt_key_diff, ptr @xfs_cntbt_diff_two_keys, ptr @xfs_cntbt_buf_ops, ptr @xfs_cntbt_keys_inorder, ptr @xfs_cntbt_recs_inorder }, [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xfs_bnobt_cur\00", [18 x i8] zeroinitializer }, align 32
@xfs_allocbt_cur_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__tracepoint_xfs_btree_corrupt = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_btree_corrupt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"btnum == XFS_BTNUM_BNO || btnum == XFS_BTNUM_CNT\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ptr->s != 0\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cur->bc_btnum == XFS_BTNUM_CNT\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ptr == numrecs + 1\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"cur->bc_ag.pag->pag_agno == be32_to_cpu(agf->agf_seqno)\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 361, i32 10 }
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"xfs_bnobt_buf_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 360, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 370, i32 10 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"xfs_cntbt_buf_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 369, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 557, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"xfs_bnobt_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 425, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"xfs_cntbt_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 447, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 626, i32 44 }
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"xfs_allocbt_cur_cache\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 23, i32 27 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 473, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 108, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 479, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 43, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 118, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 140, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 153, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [35 x i8] c"../fs/xfs/libxfs/xfs_alloc_btree.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 226, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @.str, ptr @xfs_bnobt_buf_ops, ptr @.str.1, ptr @xfs_cntbt_buf_ops, ptr @.str.2, ptr @.str.3, ptr @xfs_bnobt_ops, ptr @xfs_cntbt_ops, ptr @.str.4, ptr @xfs_allocbt_cur_cache, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_bnobt_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_cntbt_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_bnobt_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_cntbt_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_allocbt_cur_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_allocbt_read_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @xfs_btree_sblock_verify_crc(ptr noundef %bp) #14
  br i1 %call, label %if.else, label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !49
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -74, ptr noundef blockaddress(@xfs_allocbt_read_verify, %__here)) #14
  br label %if.end3

if.else:                                          ; preds = %entry
  %call1 = tail call ptr @xfs_allocbt_verify(ptr noundef %bp)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.else.if.end3_crit_edge, label %if.then2

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call1) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %3 = ptrtoint ptr %2 to i32
  tail call fastcc void @trace_xfs_btree_corrupt(ptr noundef %bp, i32 noundef %3)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_allocbt_write_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xfs_allocbt_verify(ptr noundef %bp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_xfs_btree_corrupt(ptr noundef %bp, i32 noundef %1)
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @xfs_btree_sblock_calc_crc(ptr noundef %bp) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_allocbt_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %b_pag = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 13
  %4 = ptrtoint ptr %b_pag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_pag, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  %call = tail call zeroext i1 @xfs_verify_magic(ptr noundef %bp, i32 noundef %7) #14
  br i1 %call, label %if.end, label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !50
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @xfs_btree_sblock_v5hdr_verify(ptr noundef %bp) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then2.if.end6_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end6:                                          ; preds = %if.then2.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %bb_level = getelementptr inbounds %struct.xfs_btree_block, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %bb_level to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bb_level, align 4
  %conv = zext i16 %11 to i32
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %12 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_ops, align 4
  %14 = getelementptr inbounds %struct.xfs_buf_ops, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1094865987, i32 %16)
  %cmp = icmp eq i32 %16, 1094865987
  %spec.select = zext i1 %cmp to i32
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.end6.if.else_crit_edge, label %land.lhs.true

if.end6.if.else_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end6
  %pagf_init = getelementptr inbounds %struct.xfs_perag, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %pagf_init to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pagf_init, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool12.not = icmp eq i8 %18, 0
  br i1 %tobool12.not, label %land.lhs.true.if.else_crit_edge, label %if.then13

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then13:                                        ; preds = %land.lhs.true
  %arrayidx14 = getelementptr %struct.xfs_perag, ptr %5, i32 0, i32 7, i32 %spec.select
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx14, align 1
  %21 = zext i8 %20 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %21)
  %cmp16.not = icmp ult i16 %11, %21
  br i1 %cmp16.not, label %if.then13.if.end28_crit_edge, label %__here19

if.then13.if.end28_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

__here19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !51
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end6.if.else_crit_edge
  %m_alloc_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 42
  %22 = ptrtoint ptr %m_alloc_maxlevels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m_alloc_maxlevels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv)
  %cmp22.not = icmp ugt i32 %23, %conv
  br i1 %cmp22.not, label %if.else.if.end28_crit_edge, label %__here25

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

__here25:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !52
  br label %cleanup

if.end28:                                         ; preds = %if.else.if.end28_crit_edge, %if.then13.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp29 = icmp ne i16 %11, 0
  %conv30 = zext i1 %cmp29 to i32
  %arrayidx31 = getelementptr %struct.xfs_mount, ptr %1, i32 0, i32 34, i32 %conv30
  %24 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx31, align 4
  %call32 = tail call ptr @xfs_btree_sblock_verify(ptr noundef %bp, i32 noundef %25) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %__here25, %__here19, %if.then2.cleanup_crit_edge, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_allocbt_verify, %__here19), %__here19 ], [ %call32, %if.end28 ], [ blockaddress(@xfs_allocbt_verify, %__here25), %__here25 ], [ blockaddress(@xfs_allocbt_verify, %__here), %__here ], [ %call3, %if.then2.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_allocbt_init_cursor(ptr noundef %mp, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i32 noundef %btnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agbp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %call = tail call fastcc ptr @xfs_allocbt_init_common(ptr noundef %mp, ptr noundef %tp, ptr noundef %pag, i32 noundef %btnum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %btnum)
  %cmp = icmp eq i32 %btnum, 1
  %arrayidx = getelementptr %struct.xfs_agf, ptr %1, i32 0, i32 5, i32 1
  %agf_levels1 = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 5
  %conv3.sink.in.in = select i1 %cmp, ptr %arrayidx, ptr %agf_levels1
  %2 = ptrtoint ptr %conv3.sink.in.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %conv3.sink.in = load i32, ptr %conv3.sink.in.in, align 4
  %conv3.sink = trunc i32 %conv3.sink.in to i8
  %3 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3.sink, ptr %3, align 8
  %5 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call, i32 0, i32 10, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %agbp, ptr %5, align 4
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_allocbt_init_common(ptr noundef %mp, ptr noundef %tp, ptr noundef %pag, i32 noundef %btnum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %btnum)
  %switch = icmp ult i32 %btnum, 2
  br i1 %switch, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 479) #14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %m_alloc_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 42
  %0 = ptrtoint ptr %m_alloc_maxlevels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_alloc_maxlevels, align 4
  %conv = trunc i32 %1 to i8
  %2 = load ptr, ptr @xfs_allocbt_cur_cache, align 4
  %call.i.i26 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 36160) #14
  %3 = ptrtoint ptr %call.i.i26 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tp, ptr %call.i.i26, align 8
  %bc_mp.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i26, i32 0, i32 1
  %4 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mp, ptr %bc_mp.i, align 4
  %bc_btnum.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i26, i32 0, i32 5
  %5 = ptrtoint ptr %bc_btnum.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %btnum, ptr %bc_btnum.i, align 4
  %bc_maxlevels.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i26, i32 0, i32 8
  %6 = ptrtoint ptr %bc_maxlevels.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %bc_maxlevels.i, align 1
  %bc_cache.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i26, i32 0, i32 3
  %7 = ptrtoint ptr %bc_cache.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %2, ptr %bc_cache.i, align 4
  %8 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i26, i32 0, i32 10
  %9 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i26, i32 0, i32 10, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %btnum)
  %cmp3 = icmp eq i32 %btnum, 1
  br i1 %cmp3, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i26, i32 0, i32 4
  %11 = ptrtoint ptr %bc_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %bc_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %xfs_bnobt_ops.sink = phi ptr [ @xfs_cntbt_ops, %if.then ], [ @xfs_bnobt_ops, %cond.end.if.end_crit_edge ]
  %.sink = phi i32 [ 91, %if.then ], [ 76, %cond.end.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i26, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %xfs_bnobt_ops.sink, ptr %12, align 8
  %14 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i26, i32 0, i32 9
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %14, align 4
  %pag_ref = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pag_ref, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pag_ref, i32 1, i32 3, i32 1) #14
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pag_ref, ptr %pag_ref, i32 1, ptr elementtype(i32) %pag_ref) #14, !srcloc !53
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pag, ptr %8, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %18 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %bc_flags10 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i26, i32 0, i32 4
  %20 = ptrtoint ptr %bc_flags10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bc_flags10, align 8
  %or = or i32 %21, 8
  store i32 %or, ptr %bc_flags10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  ret ptr %call.i.i26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_allocbt_stage_cursor(ptr noundef %mp, ptr noundef %afake, ptr noundef %pag, i32 noundef %btnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @xfs_allocbt_init_common(ptr noundef %mp, ptr noundef null, ptr noundef %pag, i32 noundef %btnum)
  tail call void @xfs_btree_stage_afakeroot(ptr noundef %call, ptr noundef %afake) #14
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_stage_afakeroot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_allocbt_commit_staged_btree(ptr noundef %cur, ptr noundef %tp, ptr noundef %agbp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !54

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 557) #14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %bc_btnum = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 5
  %9 = ptrtoint ptr %bc_btnum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bc_btnum, align 4
  %arrayidx = getelementptr %struct.xfs_agf, ptr %1, i32 0, i32 4, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %arrayidx, align 4
  %af_levels = getelementptr inbounds %struct.xbtree_afakeroot, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %af_levels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %af_levels, align 4
  %14 = load i32, ptr %bc_btnum, align 4
  %arrayidx4 = getelementptr %struct.xfs_agf, ptr %1, i32 0, i32 5, i32 %14
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %arrayidx4, align 4
  tail call void @xfs_alloc_log_agf(ptr noundef %tp, ptr noundef %agbp, i32 noundef 48) #14
  %16 = ptrtoint ptr %bc_btnum to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bc_btnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %cond.end.if.end_crit_edge, label %if.else

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bc_flags, align 8
  %or = or i32 %19, 4
  store i32 %or, ptr %bc_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.if.end_crit_edge
  %xfs_cntbt_ops.sink = phi ptr [ @xfs_cntbt_ops, %if.else ], [ @xfs_bnobt_ops, %cond.end.if.end_crit_edge ]
  tail call void @xfs_btree_commit_afakeroot(ptr noundef %cur, ptr noundef %tp, ptr noundef %agbp, ptr noundef nonnull %xfs_cntbt_ops.sink) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alloc_log_agf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_commit_afakeroot(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_allocbt_maxrecs(ptr nocapture noundef readonly %mp, i32 noundef %blocklen, i32 noundef %leaf) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %div3.i = lshr i32 %sub, 3
  %div1.i = udiv i32 %sub, 12
  %retval.0.i = select i1 %tobool.not, i32 %div1.i, i32 %div3.i
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_allocbt_maxlevels_ondisk() local_unnamed_addr #0 align 64 {
entry:
  %minrecs = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %minrecs) #14
  %0 = getelementptr inbounds [2 x i32], ptr %minrecs, i32 0, i32 1
  %1 = ptrtoint ptr %minrecs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 31, ptr %minrecs, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %0, align 4
  %call4 = call i32 @xfs_btree_compute_maxlevels(ptr noundef nonnull %minrecs, i64 noundef 1073741824) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %minrecs) #14
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_compute_maxlevels(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_allocbt_calc_size(ptr noundef %mp, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %m_alloc_mnr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 35
  %call = tail call i64 @xfs_btree_calc_size(ptr noundef %m_alloc_mnr, i64 noundef %len) #14
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_btree_calc_size(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_allocbt_init_cur_cache() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  %minrecs.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %minrecs.i) #14
  %0 = getelementptr inbounds [2 x i32], ptr %minrecs.i, i32 0, i32 1
  %1 = ptrtoint ptr %minrecs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 31, ptr %minrecs.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %0, align 4
  %call4.i = call i32 @xfs_btree_compute_maxlevels(ptr noundef nonnull %minrecs.i, i64 noundef 1073741824) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %minrecs.i) #14
  %3 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4.i, i32 8) #14
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %spec.select.i.i = call i32 @llvm.uadd.sat.i32(i32 %5, i32 80) #14
  %retval.0.i.i = select i1 %4, i32 -1, i32 %spec.select.i.i
  %call2 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef %retval.0.i.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  store ptr %call2, ptr @xfs_allocbt_cur_cache, align 4
  %tobool.not = icmp eq ptr %call2, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_allocbt_destroy_cur_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xfs_allocbt_cur_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #14
  store ptr null, ptr @xfs_allocbt_cur_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_btree_sblock_verify_crc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_verifier_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_btree_corrupt(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_corrupt, i32 0, i32 1), ptr blockaddress(@trace_xfs_btree_corrupt, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !55

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !56

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !39) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !57
  %call42 = tail call i32 @__traceiter_xfs_btree_corrupt(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !58
  %13 = tail call i32 @llvm.read_register.i32(metadata !39) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !39) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !56

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !39) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_corrupt, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_corrupt, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_btree_corrupt.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_xfs_btree_corrupt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 473, ptr noundef nonnull @.str.6) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !60
  %31 = tail call i32 @llvm.read_register.i32(metadata !39) #14
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
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_btree_corrupt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_sblock_calc_crc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_magic(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_sblock_v5hdr_verify(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_sblock_verify(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_allocbt_dup_cursor(ptr nocapture noundef readonly %cur) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %call.i = tail call fastcc ptr @xfs_allocbt_init_common(ptr noundef %1, ptr noundef %3, ptr noundef %9, i32 noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  %arrayidx.i = getelementptr %struct.xfs_agf, ptr %13, i32 0, i32 5, i32 1
  %agf_levels1.i = getelementptr inbounds %struct.xfs_agf, ptr %13, i32 0, i32 5
  %conv3.sink.in.in.i = select i1 %cmp.i, ptr %arrayidx.i, ptr %agf_levels1.i
  %14 = ptrtoint ptr %conv3.sink.in.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %conv3.sink.in.i = load i32, ptr %conv3.sink.in.in.i, align 4
  %conv3.sink.i = trunc i32 %conv3.sink.in.i to i8
  %15 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3.sink.i, ptr %15, align 8
  %17 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i, i32 0, i32 10, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %7, ptr %17, align 4
  ret ptr %call.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_allocbt_set_root(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %ptr, i32 noundef %inc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_addr, align 4
  %bc_btnum = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 5
  %5 = ptrtoint ptr %bc_btnum to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bc_btnum, align 4
  %7 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !54

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef 43) #14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %9 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %10 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ptr, align 8
  %arrayidx = getelementptr %struct.xfs_agf, ptr %4, i32 0, i32 4, i32 %6
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.xfs_agf, ptr %4, i32 0, i32 5, i32 %6
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2, align 4
  %add.i = add i32 %14, %inc
  store i32 %add.i, ptr %arrayidx2, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %9, align 8
  %arrayidx3 = getelementptr %struct.xfs_perag, ptr %16, i32 0, i32 7, i32 %6
  %17 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx3, align 1
  %19 = trunc i32 %inc to i8
  %conv4 = add i8 %18, %19
  store i8 %conv4, ptr %arrayidx3, align 1
  %20 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur, align 8
  tail call void @xfs_alloc_log_agf(ptr noundef %21, ptr noundef %2, i32 noundef 48) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_allocbt_alloc_block(ptr nocapture noundef readonly %cur, ptr nocapture noundef readnone %start, ptr nocapture noundef writeonly %new, ptr nocapture noundef writeonly %stat) #2 align 64 {
entry:
  %bno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bno) #14
  %0 = ptrtoint ptr %bno to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bno, align 4, !annotation !61
  %1 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cur, align 8
  %3 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = call i32 @xfs_alloc_get_freelist(ptr noundef %2, ptr noundef %5, ptr noundef nonnull %bno, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %bno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp eq i32 %7, -1
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end2

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %8 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bc_mp, align 4
  %m_allocbt_blks = getelementptr inbounds %struct.xfs_mount, ptr %9, i32 0, i32 81
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %m_allocbt_blks, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %m_allocbt_blks) #14
  %10 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bc_mp, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %b_pag = getelementptr inbounds %struct.xfs_buf, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %b_pag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_pag, align 8
  %16 = ptrtoint ptr %bno to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bno, align 4
  call void @xfs_extent_busy_reuse(ptr noundef %11, ptr noundef %15, i32 noundef %17, i32 noundef 1, i1 noundef zeroext false) #14
  %18 = ptrtoint ptr %bno to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bno, align 4
  %20 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %new, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end2, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end2 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  %21 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %stat, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bno) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_allocbt_free_block(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %bp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %3 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bc_mp, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %5 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_maps.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  %m_blkbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 28
  %9 = ptrtoint ptr %m_blkbb_log.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %m_blkbb_log.i, align 1
  %sh_prom.i = zext i8 %10 to i64
  %shr.i = ashr i64 %8, %sh_prom.i
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %4, i32 0, i32 11
  %11 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sb_agblocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr.i)
  %cmp168.i = icmp ult i64 %shr.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !56

if.then172.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv173.i = trunc i64 %shr.i to i32
  %rem174.i = urem i32 %conv173.i, %12
  br label %xfs_daddr_to_agbno.exit

if.else178.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %shr.i) #17, !srcloc !62
  %asmresult.i266.i = extractvalue { i64, i64 } %13, 0
  %shr.i.i = lshr i64 %asmresult.i266.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %xfs_daddr_to_agbno.exit

xfs_daddr_to_agbno.exit:                          ; preds = %if.else178.i, %if.then172.i
  %__rem.0.i = phi i32 [ %rem174.i, %if.then172.i ], [ %conv.i.i, %if.else178.i ]
  %14 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur, align 8
  %call2 = tail call i32 @xfs_alloc_put_freelist(ptr noundef %15, ptr noundef %2, ptr noundef null, i32 noundef %__rem.0.i, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %xfs_daddr_to_agbno.exit.cleanup_crit_edge

xfs_daddr_to_agbno.exit.cleanup_crit_edge:        ; preds = %xfs_daddr_to_agbno.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %xfs_daddr_to_agbno.exit
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bc_mp, align 4
  %m_allocbt_blks = getelementptr inbounds %struct.xfs_mount, ptr %17, i32 0, i32 81
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %m_allocbt_blks, i32 noundef 8) #14
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %m_allocbt_blks) #14
  %18 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur, align 8
  %b_pag = getelementptr inbounds %struct.xfs_buf, ptr %2, i32 0, i32 13
  %20 = ptrtoint ptr %b_pag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_pag, align 8
  tail call void @xfs_extent_busy_insert(ptr noundef %19, ptr noundef %21, i32 noundef %__rem.0.i, i32 noundef 1, i32 noundef 2) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xfs_daddr_to_agbno.exit.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_allocbt_update_lastrec(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %rec, i32 noundef %ptr, i32 noundef %reason) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_addr, align 4
  %bc_btnum = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 5
  %5 = ptrtoint ptr %bc_btnum to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bc_btnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !56

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 118) #14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %7 = zext i32 %reason to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reason, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %cond.end
  %bb_numrecs.i = getelementptr inbounds %struct.xfs_btree_block, ptr %block, i32 0, i32 2
  %8 = ptrtoint ptr %bb_numrecs.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bb_numrecs.i, align 2
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %ptr)
  %cmp2.not = icmp eq i32 %conv.i, %ptr
  br i1 %cmp2.not, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %cond.end
  %ar_blockcount4 = getelementptr inbounds %struct.xfs_alloc_rec, ptr %rec, i32 0, i32 1
  %10 = ptrtoint ptr %ar_blockcount4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ar_blockcount4, align 4
  %agf_longest = getelementptr inbounds %struct.xfs_agf, ptr %4, i32 0, i32 10
  %12 = ptrtoint ptr %agf_longest to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %agf_longest, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp5.not = icmp ugt i32 %11, %13
  br i1 %cmp5.not, label %sw.bb3.sw.epilog_crit_edge, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb9:                                           ; preds = %cond.end
  %bb_numrecs.i50 = getelementptr inbounds %struct.xfs_btree_block, ptr %block, i32 0, i32 2
  %14 = ptrtoint ptr %bb_numrecs.i50 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bb_numrecs.i50, align 2
  %conv.i51 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i51, i32 %ptr)
  %cmp11.not = icmp slt i32 %conv.i51, %ptr
  br i1 %cmp11.not, label %if.end13, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %sw.bb9
  %add = add nuw nsw i32 %conv.i51, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %ptr)
  %cmp14 = icmp eq i32 %add, %ptr
  br i1 %cmp14, label %if.end13.cond.end23_crit_edge, label %cond.false22, !prof !56

if.end13.cond.end23_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end23

cond.false22:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 140) #14
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %if.end13.cond.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool24.not = icmp eq i16 %15, 0
  br i1 %tobool24.not, label %cond.end23.sw.epilog_crit_edge, label %if.then25

cond.end23.sw.epilog_crit_edge:                   ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then25:                                        ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #16
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %16 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bc_mp, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %17, i32 0, i32 61
  %18 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond = select i1 %tobool.i.not, i32 16, i32 56
  %add.ptr = getelementptr i8, ptr %block, i32 %cond
  %sub = shl nuw nsw i32 %conv.i51, 3
  %mul = add nsw i32 %sub, -8
  %add.ptr27 = getelementptr i8, ptr %add.ptr, i32 %mul
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, i32 noundef 153) #14
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %if.then25, %sw.bb.sw.epilog.sink.split_crit_edge
  %add.ptr27.sink = phi ptr [ %add.ptr27, %if.then25 ], [ %rec, %sw.bb.sw.epilog.sink.split_crit_edge ]
  %ar_blockcount28 = getelementptr inbounds %struct.xfs_alloc_rec, ptr %add.ptr27.sink, i32 0, i32 1
  %20 = ptrtoint ptr %ar_blockcount28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ar_blockcount28, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %cond.end23.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge
  %len.0 = phi i32 [ %11, %sw.bb3.sw.epilog_crit_edge ], [ 0, %cond.end23.sw.epilog_crit_edge ], [ %21, %sw.epilog.sink.split ]
  %agf_longest30 = getelementptr inbounds %struct.xfs_agf, ptr %4, i32 0, i32 10
  %22 = ptrtoint ptr %agf_longest30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %len.0, ptr %agf_longest30, align 8
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %0, align 4
  %b_pag = getelementptr inbounds %struct.xfs_buf, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %b_pag to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_pag, align 8
  %pagf_longest = getelementptr inbounds %struct.xfs_perag, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %pagf_longest to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %len.0, ptr %pagf_longest, align 4
  %28 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur, align 8
  %30 = load ptr, ptr %0, align 4
  tail call void @xfs_alloc_log_agf(ptr noundef %29, ptr noundef %30, i32 noundef 1024) #14
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %sw.bb9.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_allocbt_get_minrecs(ptr nocapture noundef readonly %cur, i32 noundef %level) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp = icmp ne i32 %level, 0
  %conv = zext i1 %cmp to i32
  %arrayidx = getelementptr %struct.xfs_mount, ptr %1, i32 0, i32 35, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_allocbt_get_maxrecs(ptr nocapture noundef readonly %cur, i32 noundef %level) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp = icmp ne i32 %level, 0
  %conv = zext i1 %cmp to i32
  %arrayidx = getelementptr %struct.xfs_mount, ptr %1, i32 0, i32 34, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_allocbt_init_key_from_rec(ptr nocapture noundef writeonly %key, ptr nocapture noundef readonly %rec) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rec, align 8
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %key, align 8
  %ar_blockcount = getelementptr inbounds %struct.xfs_alloc_rec, ptr %rec, i32 0, i32 1
  %3 = ptrtoint ptr %ar_blockcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ar_blockcount, align 4
  %ar_blockcount2 = getelementptr inbounds %struct.xfs_alloc_rec, ptr %key, i32 0, i32 1
  %5 = ptrtoint ptr %ar_blockcount2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ar_blockcount2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_allocbt_init_rec_from_cur(ptr nocapture noundef readonly %cur, ptr nocapture noundef writeonly %rec) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_rec = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %0 = ptrtoint ptr %bc_rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bc_rec, align 8
  %2 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %rec, align 8
  %ar_blockcount = getelementptr inbounds %struct.xfs_alloc_rec_incore, ptr %bc_rec, i32 0, i32 1
  %3 = ptrtoint ptr %ar_blockcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ar_blockcount, align 4
  %ar_blockcount3 = getelementptr inbounds %struct.xfs_alloc_rec, ptr %rec, i32 0, i32 1
  %5 = ptrtoint ptr %ar_blockcount3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ar_blockcount3, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_allocbt_init_ptr_from_cur(ptr nocapture noundef readonly %cur, ptr nocapture noundef writeonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %agf_seqno = getelementptr inbounds %struct.xfs_agf, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %agf_seqno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %agf_seqno, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !56

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, i32 noundef 226) #14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %bc_btnum = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 5
  %12 = ptrtoint ptr %bc_btnum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bc_btnum, align 4
  %arrayidx = getelementptr %struct.xfs_agf, ptr %5, i32 0, i32 4, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ptr, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_bnobt_init_high_key_from_rec(ptr nocapture noundef writeonly %key, ptr nocapture noundef readonly %rec) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rec, align 8
  %ar_blockcount = getelementptr inbounds %struct.xfs_alloc_rec, ptr %rec, i32 0, i32 1
  %2 = ptrtoint ptr %ar_blockcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ar_blockcount, align 4
  %sub = add i32 %1, -1
  %add = add i32 %sub, %3
  %4 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %key, align 8
  %ar_blockcount2 = getelementptr inbounds %struct.xfs_alloc_rec, ptr %key, i32 0, i32 1
  %5 = ptrtoint ptr %ar_blockcount2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ar_blockcount2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @xfs_bnobt_key_diff(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %key) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_rec = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %bc_rec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bc_rec, align 4
  %conv2 = zext i32 %3 to i64
  %sub = sub nsw i64 %conv, %conv2
  ret i64 %sub
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @xfs_bnobt_diff_two_keys(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %k1, ptr nocapture noundef readonly %k2) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
define internal i32 @xfs_bnobt_keys_inorder(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %k1, ptr nocapture noundef readonly %k2) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
define internal i32 @xfs_bnobt_recs_inorder(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %r1, ptr nocapture noundef readonly %r2) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %r1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r1, align 8
  %ar_blockcount = getelementptr inbounds %struct.xfs_alloc_rec, ptr %r1, i32 0, i32 1
  %2 = ptrtoint ptr %ar_blockcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ar_blockcount, align 4
  %add = add i32 %3, %1
  %4 = ptrtoint ptr %r2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp = icmp ule i32 %add, %5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_get_freelist(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_extent_busy_reuse(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_put_freelist(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_extent_busy_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_cntbt_init_high_key_from_rec(ptr nocapture noundef writeonly %key, ptr nocapture noundef readonly %rec) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ar_blockcount = getelementptr inbounds %struct.xfs_alloc_rec, ptr %rec, i32 0, i32 1
  %0 = ptrtoint ptr %ar_blockcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ar_blockcount, align 4
  %ar_blockcount1 = getelementptr inbounds %struct.xfs_alloc_rec, ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %ar_blockcount1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %ar_blockcount1, align 4
  %3 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %key, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @xfs_cntbt_key_diff(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %key) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_rec = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %ar_blockcount = getelementptr inbounds %struct.xfs_alloc_rec, ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %ar_blockcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ar_blockcount, align 4
  %conv = zext i32 %1 to i64
  %ar_blockcount1 = getelementptr inbounds %struct.xfs_alloc_rec_incore, ptr %bc_rec, i32 0, i32 1
  %2 = ptrtoint ptr %ar_blockcount1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ar_blockcount1, align 4
  %conv2 = zext i32 %3 to i64
  %sub = sub nsw i64 %conv, %conv2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key, align 4
  %conv3 = zext i32 %5 to i64
  %6 = ptrtoint ptr %bc_rec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bc_rec, align 4
  %conv5 = zext i32 %7 to i64
  %sub6 = sub nsw i64 %conv3, %conv5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %sub6, %if.end ], [ %sub, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @xfs_cntbt_diff_two_keys(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %k1, ptr nocapture noundef readonly %k2) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ar_blockcount = getelementptr inbounds %struct.xfs_alloc_rec, ptr %k1, i32 0, i32 1
  %0 = ptrtoint ptr %ar_blockcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ar_blockcount, align 4
  %ar_blockcount1 = getelementptr inbounds %struct.xfs_alloc_rec, ptr %k2, i32 0, i32 1
  %2 = ptrtoint ptr %ar_blockcount1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ar_blockcount1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %tobool.not = icmp eq i32 %1, %3
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i32 %1, %3
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %k1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %k1, align 8
  %6 = ptrtoint ptr %k2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %k2, align 8
  %sub3 = sub i32 %5, %7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0.in = phi i32 [ %sub, %if.then ], [ %sub3, %if.end ]
  %retval.0 = zext i32 %retval.0.in to i64
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_cntbt_keys_inorder(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %k1, ptr nocapture noundef readonly %k2) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ar_blockcount = getelementptr inbounds %struct.xfs_alloc_rec, ptr %k1, i32 0, i32 1
  %0 = ptrtoint ptr %ar_blockcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ar_blockcount, align 4
  %ar_blockcount1 = getelementptr inbounds %struct.xfs_alloc_rec, ptr %k2, i32 0, i32 1
  %2 = ptrtoint ptr %ar_blockcount1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ar_blockcount1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp4 = icmp eq i32 %1, %3
  br i1 %cmp4, label %land.rhs, label %lor.rhs.lor.end_crit_edge

lor.rhs.lor.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %k1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %k1, align 8
  %6 = ptrtoint ptr %k2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %k2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp6 = icmp ult i32 %5, %7
  %phi.cast = zext i1 %cmp6 to i32
  br label %lor.end

lor.end:                                          ; preds = %land.rhs, %lor.rhs.lor.end_crit_edge, %entry.lor.end_crit_edge
  %8 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ 0, %lor.rhs.lor.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_cntbt_recs_inorder(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %r1, ptr nocapture noundef readonly %r2) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ar_blockcount = getelementptr inbounds %struct.xfs_alloc_rec, ptr %r1, i32 0, i32 1
  %0 = ptrtoint ptr %ar_blockcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ar_blockcount, align 4
  %ar_blockcount1 = getelementptr inbounds %struct.xfs_alloc_rec, ptr %r2, i32 0, i32 1
  %2 = ptrtoint ptr %ar_blockcount1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ar_blockcount1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp4 = icmp eq i32 %1, %3
  br i1 %cmp4, label %land.rhs, label %lor.rhs.lor.end_crit_edge

lor.rhs.lor.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %r1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r1, align 8
  %6 = ptrtoint ptr %r2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp6 = icmp ult i32 %5, %7
  %phi.cast = zext i1 %cmp6 to i32
  br label %lor.end

lor.end:                                          ; preds = %land.rhs, %lor.rhs.lor.end_crit_edge, %entry.lor.end_crit_edge
  %8 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ 0, %lor.rhs.lor.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %8
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_alloc_btree.c", i32 361, i32 10}
!2 = !{ptr @xfs_bnobt_buf_ops, !3, !"xfs_bnobt_buf_ops", i1 false, i1 false}
!3 = !{!"../fs/xfs/libxfs/xfs_alloc_btree.c", i32 360, i32 26}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/libxfs/xfs_alloc_btree.c", i32 370, i32 10}
!6 = !{ptr @xfs_cntbt_buf_ops, !7, !"xfs_cntbt_buf_ops", i1 false, i1 false}
!7 = !{!"../fs/xfs/libxfs/xfs_alloc_btree.c", i32 369, i32 26}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/libxfs/xfs_alloc_btree.c", i32 557, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_alloc_btree.c", i32 626, i32 44}
!13 = !{ptr @xfs_allocbt_cur_cache, !14, !"xfs_allocbt_cur_cache", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_alloc_btree.c", i32 23, i32 27}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_trace.h", i32 473, i32 1}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!19 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/libxfs/xfs_alloc_btree.c", i32 479, i32 2}
!25 = !{ptr @xfs_bnobt_ops, !26, !"xfs_bnobt_ops", i1 false, i1 false}
!26 = !{!"../fs/xfs/libxfs/xfs_alloc_btree.c", i32 425, i32 35}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/libxfs/xfs_alloc_btree.c", i32 43, i32 2}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/libxfs/xfs_alloc_btree.c", i32 118, i32 2}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/libxfs/xfs_alloc_btree.c", i32 140, i32 3}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/libxfs/xfs_alloc_btree.c", i32 153, i32 3}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/libxfs/xfs_alloc_btree.c", i32 226, i32 2}
!37 = !{ptr @xfs_cntbt_ops, !38, !"xfs_cntbt_ops", i1 false, i1 false}
!38 = !{!"../fs/xfs/libxfs/xfs_alloc_btree.c", i32 447, i32 35}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2166264850}
!50 = !{i64 2166264442}
!51 = !{i64 2166264657}
!52 = !{i64 2166264748}
!53 = !{i64 2148631028, i64 2148631054, i64 2148631083, i64 2148631117, i64 2148631148, i64 2148631171}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 2148259016, i64 2148259021, i64 2148259034, i64 2148259078, i64 2148259112, i64 2148259133}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 2157002251}
!58 = !{i64 2157002474}
!59 = !{i64 2149961109}
!60 = !{i64 2149962145}
!61 = !{!"auto-init"}
!62 = !{i64 2148480813, i64 2148481093, i64 2148481427, i64 2148481761}
