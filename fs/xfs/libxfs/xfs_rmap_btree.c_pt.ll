; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_rmap_btree.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_rmap_btree.c"
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
%struct.xfs_btree_cur = type { ptr, ptr, ptr, ptr, i32, i32, %union.xfs_btree_irec, i8, i8, i32, %union.anon.93, [0 x %struct.xfs_btree_level] }
%union.xfs_btree_irec = type { %struct.xfs_bmbt_irec }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%union.anon.93 = type { %struct.xfs_btree_cur_ag }
%struct.xfs_btree_cur_ag = type { ptr, %union.anon.94, %union.anon.95 }
%union.anon.94 = type { ptr }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { i32, i32 }
%struct.xfs_btree_level = type { ptr, i16, i16 }
%struct.xfs_agf = type { i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, %struct.uuid_t, i32, i32, i32, i32, [14 x i64], i64, i32, i32 }
%struct.xbtree_afakeroot = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_alloc_arg = type { ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %struct.xfs_owner_info, i32, i8 }
%struct.xfs_owner_info = type { i64, i64, i32 }
%struct.xfs_rmap_rec = type { i32, i32, i64, i64 }
%struct.xfs_rmap_key = type <{ i32, i64, i64 }>
%struct.xfs_rmap_irec = type { i32, i32, i64, i64, i32 }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xfs_rmapbt\00", [21 x i8] zeroinitializer }, align 32
@xfs_rmapbt_buf_ops = dso_local constant { %struct.xfs_buf_ops, [40 x i8] } { %struct.xfs_buf_ops { ptr @.str, %union.anon { [2 x i32] [i32 0, i32 1380794931] }, ptr @xfs_rmapbt_read_verify, ptr @xfs_rmapbt_write_verify, ptr @xfs_rmapbt_verify }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cur->bc_flags & XFS_BTREE_STAGING\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fs/xfs/libxfs/xfs_rmap_btree.c\00", [33 x i8] zeroinitializer }, align 32
@xfs_rmapbt_ops = internal constant { %struct.xfs_btree_ops, [48 x i8] } { %struct.xfs_btree_ops { i32 40, i32 24, ptr @xfs_rmapbt_dup_cursor, ptr null, ptr @xfs_rmapbt_set_root, ptr @xfs_rmapbt_alloc_block, ptr @xfs_rmapbt_free_block, ptr null, ptr @xfs_rmapbt_get_minrecs, ptr @xfs_rmapbt_get_maxrecs, ptr null, ptr @xfs_rmapbt_init_key_from_rec, ptr @xfs_rmapbt_init_rec_from_cur, ptr @xfs_rmapbt_init_ptr_from_cur, ptr @xfs_rmapbt_init_high_key_from_rec, ptr @xfs_rmapbt_key_diff, ptr @xfs_rmapbt_diff_two_keys, ptr @xfs_rmapbt_buf_ops, ptr @xfs_rmapbt_keys_inorder, ptr @xfs_rmapbt_recs_inorder }, [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"mp->m_rmap_maxlevels <= xfs_rmapbt_maxlevels_ondisk()\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xfs_rmapbt_cur\00", [17 x i8] zeroinitializer }, align 32
@xfs_rmapbt_cur_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__tracepoint_xfs_btree_corrupt = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_btree_corrupt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ptr->s != 0\00", [20 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_rmapbt_alloc_block = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmapbt_alloc_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmapbt_free_block = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmapbt_free_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"cur->bc_ag.pag->pag_agno == be32_to_cpu(agf->agf_seqno)\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 360, i32 12 }
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"xfs_rmapbt_buf_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 359, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 514, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"xfs_rmapbt_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 427, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 608, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 683, i32 43 }
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"xfs_rmapbt_cur_cache\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 25, i32 27 }
@___asan_gen_.38 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 473, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 108, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 70, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [34 x i8] c"../fs/xfs/libxfs/xfs_rmap_btree.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 217, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @xfs_rmapbt_buf_ops, ptr @.str.1, ptr @.str.2, ptr @xfs_rmapbt_ops, ptr @.str.3, ptr @.str.4, ptr @xfs_rmapbt_cur_cache, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_rmapbt_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_rmapbt_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_rmapbt_cur_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_rmapbt_read_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @xfs_btree_sblock_verify_crc(ptr noundef %bp) #14
  br i1 %call, label %if.else, label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !43
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -74, ptr noundef blockaddress(@xfs_rmapbt_read_verify, %__here)) #14
  br label %if.end3

if.else:                                          ; preds = %entry
  %call1 = tail call ptr @xfs_rmapbt_verify(ptr noundef %bp)
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
define internal void @xfs_rmapbt_write_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xfs_rmapbt_verify(ptr noundef %bp)
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
define internal ptr @xfs_rmapbt_verify(ptr noundef %bp) #0 align 64 {
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !44
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %__here3, label %if.end5

__here3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !45
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @xfs_btree_sblock_v5hdr_verify(ptr noundef %bp) #14
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %bb_level = getelementptr inbounds %struct.xfs_btree_block, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %bb_level to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bb_level, align 4
  %conv = zext i16 %11 to i32
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end8.if.else_crit_edge, label %land.lhs.true

if.end8.if.else_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end8
  %pagf_init = getelementptr inbounds %struct.xfs_perag, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %pagf_init to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pagf_init, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %land.lhs.true.if.else_crit_edge, label %if.then12

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then12:                                        ; preds = %land.lhs.true
  %arrayidx = getelementptr %struct.xfs_perag, ptr %5, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 2
  %16 = zext i8 %15 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %16)
  %cmp.not = icmp ult i16 %11, %16
  br i1 %cmp.not, label %if.then12.if.end25_crit_edge, label %__here16

if.then12.if.end25_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

__here16:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !46
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end8.if.else_crit_edge
  %m_rmap_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 44
  %17 = ptrtoint ptr %m_rmap_maxlevels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m_rmap_maxlevels, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp19.not = icmp ugt i32 %18, %conv
  br i1 %cmp19.not, label %if.else.if.end25_crit_edge, label %__here22

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

__here22:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !47
  br label %cleanup

if.end25:                                         ; preds = %if.else.if.end25_crit_edge, %if.then12.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp26 = icmp ne i16 %11, 0
  %conv27 = zext i1 %cmp26 to i32
  %arrayidx28 = getelementptr %struct.xfs_mount, ptr %1, i32 0, i32 38, i32 %conv27
  %19 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx28, align 4
  %call29 = tail call ptr @xfs_btree_sblock_verify(ptr noundef %bp, i32 noundef %20) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %__here22, %__here16, %if.end5.cleanup_crit_edge, %__here3, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_rmapbt_verify, %__here16), %__here16 ], [ %call29, %if.end25 ], [ blockaddress(@xfs_rmapbt_verify, %__here22), %__here22 ], [ blockaddress(@xfs_rmapbt_verify, %__here3), %__here3 ], [ blockaddress(@xfs_rmapbt_verify, %__here), %__here ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_rmapbt_init_cursor(ptr noundef %mp, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agbp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %m_rmap_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %2 = ptrtoint ptr %m_rmap_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_rmap_maxlevels.i, align 16
  %conv.i = trunc i32 %3 to i8
  %4 = load ptr, ptr @xfs_rmapbt_cur_cache, align 4
  %call.i.i8.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 36160) #14
  %5 = ptrtoint ptr %call.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tp, ptr %call.i.i8.i, align 8
  %bc_mp.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 1
  %6 = ptrtoint ptr %bc_mp.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mp, ptr %bc_mp.i.i, align 4
  %bc_btnum.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 5
  %7 = ptrtoint ptr %bc_btnum.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %bc_btnum.i.i, align 4
  %bc_maxlevels.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 8
  %8 = ptrtoint ptr %bc_maxlevels.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %bc_maxlevels.i.i, align 1
  %bc_cache.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 3
  %9 = ptrtoint ptr %bc_cache.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %4, ptr %bc_cache.i.i, align 4
  %bc_flags.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 4
  %10 = ptrtoint ptr %bc_flags.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 24, ptr %bc_flags.i, align 8
  %bc_statoff.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 9
  %11 = ptrtoint ptr %bc_statoff.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 151, ptr %bc_statoff.i, align 4
  %bc_ops.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 2
  %12 = ptrtoint ptr %bc_ops.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @xfs_rmapbt_ops, ptr %bc_ops.i, align 8
  %pag_ref.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pag_ref.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pag_ref.i, i32 1, i32 3, i32 1) #14
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pag_ref.i, ptr %pag_ref.i, i32 1, ptr elementtype(i32) %pag_ref.i) #14, !srcloc !48
  %14 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 10
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pag, ptr %14, align 8
  %arrayidx = getelementptr %struct.xfs_agf, ptr %1, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %17 to i8
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 7
  %18 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %bc_nlevels, align 8
  %19 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 10, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %agbp, ptr %19, align 4
  ret ptr %call.i.i8.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_rmapbt_stage_cursor(ptr noundef %mp, ptr noundef %afake, ptr noundef %pag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %m_rmap_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %0 = ptrtoint ptr %m_rmap_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_rmap_maxlevels.i, align 16
  %conv.i = trunc i32 %1 to i8
  %2 = load ptr, ptr @xfs_rmapbt_cur_cache, align 4
  %call.i.i8.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 36160) #14
  %3 = ptrtoint ptr %call.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call.i.i8.i, align 8
  %bc_mp.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 1
  %4 = ptrtoint ptr %bc_mp.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mp, ptr %bc_mp.i.i, align 4
  %bc_btnum.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 5
  %5 = ptrtoint ptr %bc_btnum.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %bc_btnum.i.i, align 4
  %bc_maxlevels.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 8
  %6 = ptrtoint ptr %bc_maxlevels.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %bc_maxlevels.i.i, align 1
  %bc_cache.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 3
  %7 = ptrtoint ptr %bc_cache.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %2, ptr %bc_cache.i.i, align 4
  %bc_flags.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 4
  %8 = ptrtoint ptr %bc_flags.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 24, ptr %bc_flags.i, align 8
  %bc_statoff.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 9
  %9 = ptrtoint ptr %bc_statoff.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 151, ptr %bc_statoff.i, align 4
  %bc_ops.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 2
  %10 = ptrtoint ptr %bc_ops.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xfs_rmapbt_ops, ptr %bc_ops.i, align 8
  %pag_ref.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pag_ref.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pag_ref.i, i32 1, i32 3, i32 1) #14
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pag_ref.i, ptr %pag_ref.i, i32 1, ptr elementtype(i32) %pag_ref.i) #14, !srcloc !48
  %12 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i, i32 0, i32 10
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pag, ptr %12, align 8
  tail call void @xfs_btree_stage_afakeroot(ptr noundef %call.i.i8.i, ptr noundef %afake) #14
  ret ptr %call.i.i8.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_stage_afakeroot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_rmapbt_commit_staged_btree(ptr noundef %cur, ptr noundef %tp, ptr noundef %agbp) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !49

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 514) #14
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
  %af_blocks = getelementptr inbounds %struct.xbtree_afakeroot, ptr %4, i32 0, i32 2
  %16 = ptrtoint ptr %af_blocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %af_blocks, align 4
  %agf_rmap_blocks = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %agf_rmap_blocks to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %agf_rmap_blocks, align 8
  tail call void @xfs_alloc_log_agf(ptr noundef %tp, ptr noundef %agbp, i32 noundef 8240) #14
  tail call void @xfs_btree_commit_afakeroot(ptr noundef %cur, ptr noundef %tp, ptr noundef %agbp, ptr noundef nonnull @xfs_rmapbt_ops) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alloc_log_agf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_commit_afakeroot(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_rmapbt_maxrecs(i32 noundef %blocklen, i32 noundef %leaf) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %blocklen, -56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %leaf)
  %tobool.not = icmp eq i32 %leaf, 0
  %retval.0.v.i = select i1 %tobool.not, i32 44, i32 24
  %retval.0.i = udiv i32 %sub, %retval.0.v.i
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmapbt_maxlevels_ondisk() local_unnamed_addr #0 align 64 {
entry:
  %minrecs = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %minrecs) #14
  %0 = getelementptr inbounds [2 x i32], ptr %minrecs, i32 0, i32 1
  %1 = ptrtoint ptr %minrecs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 20, ptr %minrecs, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 11, ptr %0, align 4
  %call4 = call i32 @xfs_btree_space_to_height(ptr noundef nonnull %minrecs, i64 noundef 1073741824) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %minrecs) #14
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_space_to_height(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_rmapbt_compute_maxlevels(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  %minrecs.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %m_rmap_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %2 = ptrtoint ptr %m_rmap_maxlevels to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %m_rmap_maxlevels, align 16
  br label %cond.end

if.end:                                           ; preds = %entry
  %and.i27 = and i64 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i27)
  %tobool.i28.not = icmp eq i64 %and.i27, 0
  %m_rmap_mnr5 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 39
  %sb_agblocks8 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %3 = ptrtoint ptr %sb_agblocks8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_agblocks8, align 4
  %conv9 = zext i32 %4 to i64
  br i1 %tobool.i28.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 @xfs_btree_space_to_height(ptr noundef %m_rmap_mnr5, i64 noundef %conv9) #14
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = tail call i32 @xfs_btree_compute_maxlevels(ptr noundef %m_rmap_mnr5, i64 noundef %conv9) #14
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then2
  %call3.sink = phi i32 [ %call10, %if.else ], [ %call3, %if.then2 ]
  %5 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call3.sink, ptr %5, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %minrecs.i) #14
  %7 = getelementptr inbounds [2 x i32], ptr %minrecs.i, i32 0, i32 1
  %8 = ptrtoint ptr %minrecs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 20, ptr %minrecs.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 11, ptr %7, align 4
  %call4.i = call i32 @xfs_btree_space_to_height(ptr noundef nonnull %minrecs.i, i64 noundef 1073741824) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %minrecs.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.sink, i32 %call4.i)
  %cmp.not = icmp ugt i32 %call3.sink, %call4.i
  br i1 %cmp.not, label %cond.false, label %if.end12.cond.end_crit_edge, !prof !49

if.end12.cond.end_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 608) #14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end12.cond.end_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_compute_maxlevels(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmapbt_calc_size(ptr noundef %mp, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %m_rmap_mnr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 39
  %call = tail call i64 @xfs_btree_calc_size(ptr noundef %m_rmap_mnr, i64 noundef %len) #14
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_btree_calc_size(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmapbt_max_size(ptr noundef %mp, i32 noundef %agblocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %m_rmap_mxr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 38
  %0 = ptrtoint ptr %m_rmap_mxr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_rmap_mxr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i32 %agblocks to i64
  %m_rmap_mnr.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 39
  %call.i = tail call i64 @xfs_btree_calc_size(ptr noundef %m_rmap_mnr.i, i64 noundef %conv) #14
  %conv.i = trunc i64 %call.i to i32
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv.i, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmapbt_calc_reserves(ptr noundef %mp, ptr noundef %tp, ptr nocapture noundef readonly %pag, ptr nocapture noundef %ask, ptr nocapture noundef %used) local_unnamed_addr #0 align 64 {
entry:
  %agbp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agbp) #14
  %0 = ptrtoint ptr %agbp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %agbp, align 4, !annotation !50
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %1 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %2, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %3 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pag_agno, align 4
  %call1 = call i32 @xfs_alloc_read_agf(ptr noundef %mp, ptr noundef %tp, i32 noundef %4, i32 noundef 0, ptr noundef nonnull %agbp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %agbp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %agbp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_addr, align 4
  %agf_length = getelementptr inbounds %struct.xfs_agf, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %agf_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %agf_length, align 4
  %agf_rmap_blocks = getelementptr inbounds %struct.xfs_agf, ptr %8, i32 0, i32 13
  %11 = ptrtoint ptr %agf_rmap_blocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %agf_rmap_blocks, align 8
  call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %6) #14
  %sb_logstart = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 6
  %13 = ptrtoint ptr %sb_logstart to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sb_logstart, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool4.not = icmp eq i64 %14, 0
  br i1 %tobool4.not, label %if.end3.if.end13_crit_edge, label %land.lhs.true

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end3
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  %15 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %16 to i64
  %shr = lshr i64 %14, %sh_prom
  %conv8 = trunc i64 %shr to i32
  %17 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pag_agno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv8)
  %cmp = icmp eq i32 %18, %conv8
  br i1 %cmp, label %if.then11, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %sb_logblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 14
  %19 = ptrtoint ptr %sb_logblocks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sb_logblocks, align 32
  %sub = sub i32 %10, %20
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true.if.end13_crit_edge, %if.end3.if.end13_crit_edge
  %agblocks.0 = phi i32 [ %sub, %if.then11 ], [ %10, %land.lhs.true.if.end13_crit_edge ], [ %10, %if.end3.if.end13_crit_edge ]
  %div = udiv i32 %agblocks.0, 100
  %m_rmap_mxr.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 38
  %21 = ptrtoint ptr %m_rmap_mxr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %m_rmap_mxr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %if.end13.xfs_rmapbt_max_size.exit_crit_edge, label %if.end.i

if.end13.xfs_rmapbt_max_size.exit_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %xfs_rmapbt_max_size.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = zext i32 %agblocks.0 to i64
  %m_rmap_mnr.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 39
  %call.i.i = call i64 @xfs_btree_calc_size(ptr noundef %m_rmap_mnr.i.i, i64 noundef %conv.i) #14
  %conv.i.i = trunc i64 %call.i.i to i32
  br label %xfs_rmapbt_max_size.exit

xfs_rmapbt_max_size.exit:                         ; preds = %if.end.i, %if.end13.xfs_rmapbt_max_size.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i.i, %if.end.i ], [ 0, %if.end13.xfs_rmapbt_max_size.exit_crit_edge ]
  %23 = call i32 @llvm.umax.i32(i32 %div, i32 %retval.0.i)
  %24 = ptrtoint ptr %ask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ask, align 4
  %add = add i32 %25, %23
  store i32 %add, ptr %ask, align 4
  %26 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %used, align 4
  %add17 = add i32 %27, %12
  store i32 %add17, ptr %used, align 4
  br label %cleanup

cleanup:                                          ; preds = %xfs_rmapbt_max_size.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %xfs_rmapbt_max_size.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agbp) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_read_agf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmapbt_init_cur_cache() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  %minrecs.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %minrecs.i) #14
  %0 = getelementptr inbounds [2 x i32], ptr %minrecs.i, i32 0, i32 1
  %1 = ptrtoint ptr %minrecs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 20, ptr %minrecs.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 11, ptr %0, align 4
  %call4.i = call i32 @xfs_btree_space_to_height(ptr noundef nonnull %minrecs.i, i64 noundef 1073741824) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %minrecs.i) #14
  %3 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4.i, i32 8) #14
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %spec.select.i.i = call i32 @llvm.uadd.sat.i32(i32 %5, i32 80) #14
  %retval.0.i.i = select i1 %4, i32 -1, i32 %spec.select.i.i
  %call2 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef %retval.0.i.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  store ptr %call2, ptr @xfs_rmapbt_cur_cache, align 4
  %tobool.not = icmp eq ptr %call2, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_rmapbt_destroy_cur_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xfs_rmapbt_cur_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #14
  store ptr null, ptr @xfs_rmapbt_cur_cache, align 4
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
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_corrupt, i32 0, i32 1), ptr blockaddress(@trace_xfs_btree_corrupt, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !51

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #14
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

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
  %9 = tail call i32 @llvm.read_register.i32(metadata !33) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !53
  %call42 = tail call i32 @__traceiter_xfs_btree_corrupt(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !54
  %13 = tail call i32 @llvm.read_register.i32(metadata !33) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !33) #14
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

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
  %26 = tail call i32 @llvm.read_register.i32(metadata !33) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !55
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !56
  %31 = tail call i32 @llvm.read_register.i32(metadata !33) #14
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_rmapbt_dup_cursor(ptr nocapture noundef readonly %cur) #0 align 64 {
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
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %7, i32 0, i32 16
  %10 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_addr.i, align 4
  %m_rmap_maxlevels.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 44
  %12 = ptrtoint ptr %m_rmap_maxlevels.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_rmap_maxlevels.i.i, align 16
  %conv.i.i = trunc i32 %13 to i8
  %14 = load ptr, ptr @xfs_rmapbt_cur_cache, align 4
  %call.i.i8.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %14, i32 noundef 36160) #14
  %15 = ptrtoint ptr %call.i.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %call.i.i8.i.i, align 8
  %bc_mp.i.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %bc_mp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %bc_mp.i.i.i, align 4
  %bc_btnum.i.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %bc_btnum.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %bc_btnum.i.i.i, align 4
  %bc_maxlevels.i.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %bc_maxlevels.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i.i, ptr %bc_maxlevels.i.i.i, align 1
  %bc_cache.i.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %bc_cache.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %14, ptr %bc_cache.i.i.i, align 4
  %bc_flags.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %bc_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 24, ptr %bc_flags.i.i, align 8
  %bc_statoff.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i.i, i32 0, i32 9
  %21 = ptrtoint ptr %bc_statoff.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 151, ptr %bc_statoff.i.i, align 4
  %bc_ops.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %bc_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @xfs_rmapbt_ops, ptr %bc_ops.i.i, align 8
  %pag_ref.i.i = getelementptr inbounds %struct.xfs_perag, ptr %9, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pag_ref.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pag_ref.i.i, i32 1, i32 3, i32 1) #14
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pag_ref.i.i, ptr %pag_ref.i.i, i32 1, ptr elementtype(i32) %pag_ref.i.i) #14, !srcloc !48
  %24 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %9, ptr %24, align 8
  %arrayidx.i = getelementptr %struct.xfs_agf, ptr %11, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %conv.i = trunc i32 %27 to i8
  %bc_nlevels.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %bc_nlevels.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %bc_nlevels.i, align 8
  %29 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i8.i.i, i32 0, i32 10, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %7, ptr %29, align 4
  ret ptr %call.i.i8.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_rmapbt_set_root(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %ptr, i32 noundef %inc) #9 align 64 {
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
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !49

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 70) #14
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
define internal i32 @xfs_rmapbt_alloc_block(ptr nocapture noundef readonly %cur, ptr nocapture noundef readnone %start, ptr nocapture noundef writeonly %new, ptr nocapture noundef writeonly %stat) #9 align 64 {
entry:
  %args.i = alloca %struct.xfs_alloc_arg, align 8
  %bno = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bno) #14
  %8 = ptrtoint ptr %bno to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %bno, align 4, !annotation !50
  %9 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur, align 8
  %call = call i32 @xfs_alloc_get_freelist(ptr noundef %10, ptr noundef %3, ptr noundef nonnull %bno, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %11 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bc_mp, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pag_agno, align 4
  %15 = ptrtoint ptr %bno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bno, align 4
  call fastcc void @trace_xfs_rmapbt_alloc_block(ptr noundef %12, i32 noundef %14, i32 noundef %16)
  %17 = ptrtoint ptr %bno to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp = icmp eq i32 %18, -1
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end3

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bc_mp, align 4
  call void @xfs_extent_busy_reuse(ptr noundef %20, ptr noundef %7, i32 noundef %18, i32 noundef 1, i1 noundef zeroext false) #14
  %21 = ptrtoint ptr %bno to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bno, align 4
  %23 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %new, align 8
  %agf_rmap_blocks = getelementptr inbounds %struct.xfs_agf, ptr %5, i32 0, i32 13
  %24 = ptrtoint ptr %agf_rmap_blocks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %agf_rmap_blocks, align 4
  %add.i = add i32 %25, 1
  store i32 %add.i, ptr %agf_rmap_blocks, align 4
  %26 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cur, align 8
  call void @xfs_alloc_log_agf(ptr noundef %27, ptr noundef %3, i32 noundef 8192) #14
  %28 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bc_mp, align 4
  %30 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pag_agno, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %args.i) #14
  %32 = call ptr @memset(ptr %args.i, i32 0, i32 128)
  %len.i = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args.i, i32 0, i32 17
  %33 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %len.i, align 8
  %call.i = call ptr @xfs_perag_get(ptr noundef %29, i32 noundef %31) #14
  call void @xfs_ag_resv_alloc_extent(ptr noundef %call.i, i32 noundef 3, ptr noundef nonnull %args.i) #14
  call void @xfs_perag_put(ptr noundef %call.i) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %args.i) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end3, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end3 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  %34 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %stat, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bno) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_rmapbt_free_block(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %bp) #9 align 64 {
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
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %8 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bc_mp, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %10 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_maps.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %11, align 8
  %m_blkbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %9, i32 0, i32 28
  %14 = ptrtoint ptr %m_blkbb_log.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %m_blkbb_log.i, align 1
  %sh_prom.i = zext i8 %15 to i64
  %shr.i = ashr i64 %13, %sh_prom.i
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %9, i32 0, i32 11
  %16 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sb_agblocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr.i)
  %cmp168.i = icmp ult i64 %shr.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !52

if.then172.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv173.i = trunc i64 %shr.i to i32
  %rem174.i = urem i32 %conv173.i, %17
  br label %xfs_daddr_to_agbno.exit

if.else178.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 %shr.i) #17, !srcloc !57
  %asmresult.i266.i = extractvalue { i64, i64 } %18, 0
  %shr.i.i = lshr i64 %asmresult.i266.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %xfs_daddr_to_agbno.exit

xfs_daddr_to_agbno.exit:                          ; preds = %if.else178.i, %if.then172.i
  %__rem.0.i = phi i32 [ %rem174.i, %if.then172.i ], [ %conv.i.i, %if.else178.i ]
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %7, i32 0, i32 1
  %19 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_rmapbt_free_block(ptr noundef %9, i32 noundef %20, i32 noundef %__rem.0.i)
  %agf_rmap_blocks = getelementptr inbounds %struct.xfs_agf, ptr %5, i32 0, i32 13
  %21 = ptrtoint ptr %agf_rmap_blocks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %agf_rmap_blocks, align 4
  %add.i24 = add i32 %22, -1
  store i32 %add.i24, ptr %agf_rmap_blocks, align 4
  %23 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur, align 8
  tail call void @xfs_alloc_log_agf(ptr noundef %24, ptr noundef %3, i32 noundef 8192) #14
  %25 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur, align 8
  %call5 = tail call i32 @xfs_alloc_put_freelist(ptr noundef %26, ptr noundef %3, ptr noundef null, i32 noundef %__rem.0.i, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %xfs_daddr_to_agbno.exit.cleanup_crit_edge

xfs_daddr_to_agbno.exit.cleanup_crit_edge:        ; preds = %xfs_daddr_to_agbno.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %xfs_daddr_to_agbno.exit
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cur, align 8
  tail call void @xfs_extent_busy_insert(ptr noundef %28, ptr noundef %7, i32 noundef %__rem.0.i, i32 noundef 1, i32 noundef 2) #14
  tail call void @xfs_ag_resv_free_extent(ptr noundef %7, i32 noundef 3, ptr noundef null, i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xfs_daddr_to_agbno.exit.cleanup_crit_edge
  ret i32 %call5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_rmapbt_get_minrecs(ptr nocapture noundef readonly %cur, i32 noundef %level) #10 align 64 {
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
  %arrayidx = getelementptr %struct.xfs_mount, ptr %1, i32 0, i32 39, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_rmapbt_get_maxrecs(ptr nocapture noundef readonly %cur, i32 noundef %level) #10 align 64 {
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
  %arrayidx = getelementptr %struct.xfs_mount, ptr %1, i32 0, i32 38, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_rmapbt_init_key_from_rec(ptr nocapture noundef writeonly %key, ptr nocapture noundef readonly %rec) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rec, align 8
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %key, align 8
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 2
  %3 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rm_owner, align 8
  %rm_owner2 = getelementptr inbounds %struct.xfs_rmap_key, ptr %key, i32 0, i32 1
  %5 = ptrtoint ptr %rm_owner2 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %4, ptr %rm_owner2, align 4
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 3
  %6 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rm_offset, align 8
  %rm_offset3 = getelementptr inbounds %struct.xfs_rmap_key, ptr %key, i32 0, i32 2
  %8 = ptrtoint ptr %rm_offset3 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %rm_offset3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_rmapbt_init_rec_from_cur(ptr nocapture noundef readonly %cur, ptr nocapture noundef writeonly %rec) #11 align 64 {
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
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %bc_rec, i32 0, i32 1
  %3 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rm_blockcount, align 4
  %rm_blockcount3 = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 1
  %5 = ptrtoint ptr %rm_blockcount3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rm_blockcount3, align 4
  %rm_owner = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 1
  %6 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rm_owner, align 8
  %rm_owner5 = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 2
  %8 = ptrtoint ptr %rm_owner5 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %rm_owner5, align 8
  %rm_offset.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 2
  %9 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rm_offset.i, align 8
  %and.i = and i64 %10, 18014398509481983
  %rm_flags.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 3
  %11 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rm_flags.i, align 8
  %13 = zext i32 %12 to i64
  %14 = shl i64 %13, 63
  %15 = or i64 %14, %and.i
  %and3.i = and i32 %12, 2
  %16 = zext i32 %and3.i to i64
  %17 = shl nuw nsw i64 %16, 61
  %18 = or i64 %17, %15
  %and9.i = and i32 %12, 4
  %19 = zext i32 %and9.i to i64
  %20 = shl nuw nsw i64 %19, 59
  %21 = or i64 %18, %20
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 3
  %22 = ptrtoint ptr %rm_offset to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %rm_offset, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_rmapbt_init_ptr_from_cur(ptr nocapture noundef readonly %cur, ptr nocapture noundef writeonly %ptr) #9 align 64 {
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
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !52

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 217) #14
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
define internal void @xfs_rmapbt_init_high_key_from_rec(ptr nocapture noundef %key, ptr nocapture noundef readonly %rec) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 1
  %0 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rm_blockcount, align 4
  %sub = add i32 %1, -1
  %2 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rec, align 8
  %add.i = add i32 %3, %sub
  %4 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add.i, ptr %key, align 4
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 2
  %5 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rm_owner, align 8
  %rm_owner3 = getelementptr inbounds %struct.xfs_rmap_key, ptr %key, i32 0, i32 1
  %7 = ptrtoint ptr %rm_owner3 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %rm_owner3, align 4
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 3
  %8 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rm_offset, align 8
  %rm_offset4 = getelementptr inbounds %struct.xfs_rmap_key, ptr %key, i32 0, i32 2
  %10 = ptrtoint ptr %rm_offset4 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %rm_offset4, align 4
  %11 = load i64, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %11)
  %tobool.not = icmp sgt i64 %11, -1
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %12 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rm_offset, align 8
  %and7 = and i64 %13, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %and10 = and i64 %9, 18014398509481983
  %conv = sext i32 %sub to i64
  %add = add nsw i64 %and10, %conv
  %and11 = and i64 %9, -18014398509481984
  %or = or i64 %add, %and11
  %14 = ptrtoint ptr %rm_offset4 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %or, ptr %rm_offset4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @xfs_rmapbt_key_diff(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %key) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_rec = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %0 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %key, align 1
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %bc_rec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bc_rec, align 8
  %conv2 = zext i32 %3 to i64
  %sub = sub nsw i64 %conv, %conv2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_key, ptr %key, i32 0, i32 1
  %4 = ptrtoint ptr %rm_owner to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %rm_owner, align 1
  %rm_owner3 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 1
  %6 = ptrtoint ptr %rm_owner3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rm_owner3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp = icmp ugt i64 %5, %7
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %5)
  %cmp6 = icmp ugt i64 %7, %5
  br i1 %cmp6, label %if.else.cleanup_crit_edge, label %if.end10

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.else
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_key, ptr %key, i32 0, i32 2
  %8 = ptrtoint ptr %rm_offset to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %rm_offset, align 1
  %and = and i64 %9, 18014398509481983
  %rm_offset11 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 2
  %10 = ptrtoint ptr %rm_offset11 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rm_offset11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %11)
  %cmp12 = icmp ugt i64 %and, %11
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.else15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %and)
  %cmp16 = icmp ugt i64 %11, %and
  %. = sext i1 %cmp16 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.else15, %if.end10.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %sub, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ], [ 1, %if.end10.cleanup_crit_edge ], [ %., %if.else15 ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @xfs_rmapbt_diff_two_keys(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %k1, ptr nocapture noundef readonly %k2) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %k1, align 1
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %k2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %k2, align 1
  %conv2 = zext i32 %3 to i64
  %sub = sub nsw i64 %conv, %conv2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_key, ptr %k1, i32 0, i32 1
  %4 = ptrtoint ptr %rm_owner to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %rm_owner, align 1
  %rm_owner3 = getelementptr inbounds %struct.xfs_rmap_key, ptr %k2, i32 0, i32 1
  %6 = ptrtoint ptr %rm_owner3 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %rm_owner3, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp = icmp ugt i64 %5, %7
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %5)
  %cmp6 = icmp ugt i64 %7, %5
  br i1 %cmp6, label %if.else.cleanup_crit_edge, label %if.end10

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.else
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_key, ptr %k1, i32 0, i32 2
  %8 = ptrtoint ptr %rm_offset to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %rm_offset, align 1
  %and = and i64 %9, 18014398509481983
  %rm_offset11 = getelementptr inbounds %struct.xfs_rmap_key, ptr %k2, i32 0, i32 2
  %10 = ptrtoint ptr %rm_offset11 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %rm_offset11, align 1
  %and12 = and i64 %11, 18014398509481983
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %and12)
  %cmp13 = icmp ugt i64 %and, %and12
  br i1 %cmp13, label %if.end10.cleanup_crit_edge, label %if.else16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_cmp8(i64 %and12, i64 %and)
  %cmp17 = icmp ugt i64 %and12, %and
  %. = sext i1 %cmp17 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.else16, %if.end10.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %sub, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ], [ 1, %if.end10.cleanup_crit_edge ], [ %., %if.else16 ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_rmapbt_keys_inorder(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %k1, ptr nocapture noundef readonly %k2) #12 align 64 {
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
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2 = icmp ugt i32 %1, %3
  br i1 %cmp2, label %if.else.cleanup_crit_edge, label %if.end4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.else
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_key, ptr %k1, i32 0, i32 1
  %4 = ptrtoint ptr %rm_owner to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %rm_owner, align 4
  %rm_owner5 = getelementptr inbounds %struct.xfs_rmap_key, ptr %k2, i32 0, i32 1
  %6 = ptrtoint ptr %rm_owner5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %rm_owner5, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp6 = icmp ult i64 %5, %7
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.else8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp9 = icmp ugt i64 %5, %7
  br i1 %cmp9, label %if.else8.cleanup_crit_edge, label %if.end12

if.else8.cleanup_crit_edge:                       ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #16
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_key, ptr %k1, i32 0, i32 2
  %8 = ptrtoint ptr %rm_offset to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %rm_offset, align 4
  %and = and i64 %9, 18014398509481983
  %rm_offset13 = getelementptr inbounds %struct.xfs_rmap_key, ptr %k2, i32 0, i32 2
  %10 = ptrtoint ptr %rm_offset13 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %rm_offset13, align 4
  %and14 = and i64 %11, 18014398509481983
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %and14)
  %cmp15.not = icmp ule i64 %and, %and14
  %. = zext i1 %cmp15.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.else8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 1, %if.end4.cleanup_crit_edge ], [ 0, %if.else8.cleanup_crit_edge ], [ %., %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_rmapbt_recs_inorder(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %r1, ptr nocapture noundef readonly %r2) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %r1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r1, align 8
  %2 = ptrtoint ptr %r2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2 = icmp ugt i32 %1, %3
  br i1 %cmp2, label %if.else.cleanup_crit_edge, label %if.end4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.else
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_rec, ptr %r1, i32 0, i32 2
  %4 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rm_owner, align 8
  %rm_owner5 = getelementptr inbounds %struct.xfs_rmap_rec, ptr %r2, i32 0, i32 2
  %6 = ptrtoint ptr %rm_owner5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rm_owner5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp6 = icmp ult i64 %5, %7
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.else8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp9 = icmp ugt i64 %5, %7
  br i1 %cmp9, label %if.else8.cleanup_crit_edge, label %if.end12

if.else8.cleanup_crit_edge:                       ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #16
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_rec, ptr %r1, i32 0, i32 3
  %8 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rm_offset, align 8
  %and = and i64 %9, 18014398509481983
  %rm_offset13 = getelementptr inbounds %struct.xfs_rmap_rec, ptr %r2, i32 0, i32 3
  %10 = ptrtoint ptr %rm_offset13 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rm_offset13, align 8
  %and14 = and i64 %11, 18014398509481983
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %and14)
  %cmp15.not = icmp ule i64 %and, %and14
  %. = zext i1 %cmp15.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.else8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 1, %if.end4.cleanup_crit_edge ], [ 0, %if.else8.cleanup_crit_edge ], [ %., %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_get_freelist(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmapbt_alloc_block(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmapbt_alloc_block, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmapbt_alloc_block, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !51

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #14
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

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
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !33) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !58
  %call42 = tail call i32 @__traceiter_xfs_rmapbt_alloc_block(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef 1) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !59
  %13 = tail call i32 @llvm.read_register.i32(metadata !33) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !33) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !52

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !33) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmapbt_alloc_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmapbt_alloc_block, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_xfs_rmapbt_alloc_block.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_xfs_rmapbt_alloc_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2813, ptr noundef nonnull @.str.6) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !56
  %31 = tail call i32 @llvm.read_register.i32(metadata !33) #14
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
declare dso_local void @xfs_extent_busy_reuse(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmapbt_alloc_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ag_resv_alloc_extent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmapbt_free_block(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmapbt_free_block, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmapbt_free_block, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !51

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #14
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

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
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !33) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !60
  %call42 = tail call i32 @__traceiter_xfs_rmapbt_free_block(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef 1) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !61
  %13 = tail call i32 @llvm.read_register.i32(metadata !33) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !33) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !52

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !33) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmapbt_free_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmapbt_free_block, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_xfs_rmapbt_free_block.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_xfs_rmapbt_free_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2814, ptr noundef nonnull @.str.6) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !56
  %31 = tail call i32 @llvm.read_register.i32(metadata !33) #14
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
declare dso_local i32 @xfs_alloc_put_freelist(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_extent_busy_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ag_resv_free_extent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmapbt_free_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !20, !21, !23, !25, !27, !28, !30, !31}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_rmap_btree.c", i32 360, i32 12}
!2 = !{ptr @xfs_rmapbt_buf_ops, !3, !"xfs_rmapbt_buf_ops", i1 false, i1 false}
!3 = !{!"../fs/xfs/libxfs/xfs_rmap_btree.c", i32 359, i32 26}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/libxfs/xfs_rmap_btree.c", i32 514, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_rmap_btree.c", i32 608, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_rmap_btree.c", i32 683, i32 43}
!11 = !{ptr @xfs_rmapbt_cur_cache, !12, !"xfs_rmapbt_cur_cache", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_rmap_btree.c", i32 25, i32 27}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_trace.h", i32 473, i32 1}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!17 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @xfs_rmapbt_ops, !22, !"xfs_rmapbt_ops", i1 false, i1 false}
!22 = !{!"../fs/xfs/libxfs/xfs_rmap_btree.c", i32 427, i32 35}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/libxfs/xfs_rmap_btree.c", i32 70, i32 2}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_trace.h", i32 2813, i32 1}
!27 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../fs/xfs/xfs_trace.h", i32 2814, i32 1}
!30 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/libxfs/xfs_rmap_btree.c", i32 217, i32 2}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2166277363}
!44 = !{i64 2166276929}
!45 = !{i64 2166277020}
!46 = !{i64 2166277170}
!47 = !{i64 2166277261}
!48 = !{i64 2148633335, i64 2148633361, i64 2148633390, i64 2148633424, i64 2148633455, i64 2148633478}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{!"auto-init"}
!51 = !{i64 2148261323, i64 2148261328, i64 2148261341, i64 2148261385, i64 2148261419, i64 2148261440}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2157020528}
!54 = !{i64 2157020751}
!55 = !{i64 2149963416}
!56 = !{i64 2149964452}
!57 = !{i64 2148483120, i64 2148483400, i64 2148483734, i64 2148484068}
!58 = !{i64 2163205632}
!59 = !{i64 2163205879}
!60 = !{i64 2163227816}
!61 = !{i64 2163228061}
