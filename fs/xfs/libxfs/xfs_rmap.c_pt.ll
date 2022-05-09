; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_rmap.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_rmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.xfs_rmap_irec = type { i32, i32, i64, i64, i32 }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_rmap_rec = type { i32, i32, i64, i64 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_rmap_query_range_info = type { ptr, ptr }
%struct.xfs_find_left_neighbor_info = type { %struct.xfs_rmap_irec, ptr, ptr }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.78 = type { ptr }
%struct.xfs_rmap_intent = type { %struct.list_head, i32, i32, i64, %struct.xfs_bmbt_irec }
%struct.xfs_rmap_key_state = type { i64, i64, i32 }
%union.xfs_btree_rec = type { %struct.xfs_rmap_rec }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i != 0\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/xfs/libxfs/xfs_rmap.c\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i != 1\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Reverse Mapping BTree record corruption in AG %d detected!\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Owner 0x%llx, flags 0x%x, start block 0x%x block count 0x%x\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"!agbp\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"XFS_RMAP_NON_INODE_OWNER(owner) || (flags & XFS_RMAP_BMBT_BLOCK)\00", [63 x i8] zeroinitializer }, align 32
@XFS_RMAP_OINFO_SKIP_UPDATE = dso_local constant { %struct.xfs_owner_info, [40 x i8] } { %struct.xfs_owner_info { i64 -1, i64 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@XFS_RMAP_OINFO_ANY_OWNER = dso_local constant { %struct.xfs_owner_info, [40 x i8] } { %struct.xfs_owner_info { i64 -2, i64 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@XFS_RMAP_OINFO_FS = dso_local constant { %struct.xfs_owner_info, [40 x i8] } { %struct.xfs_owner_info { i64 -3, i64 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@XFS_RMAP_OINFO_LOG = dso_local constant { %struct.xfs_owner_info, [40 x i8] } { %struct.xfs_owner_info { i64 -4, i64 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@XFS_RMAP_OINFO_AG = dso_local constant { %struct.xfs_owner_info, [40 x i8] } { %struct.xfs_owner_info { i64 -5, i64 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@XFS_RMAP_OINFO_INOBT = dso_local constant { %struct.xfs_owner_info, [40 x i8] } { %struct.xfs_owner_info { i64 -6, i64 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@XFS_RMAP_OINFO_INODES = dso_local constant { %struct.xfs_owner_info, [40 x i8] } { %struct.xfs_owner_info { i64 -7, i64 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@XFS_RMAP_OINFO_REFC = dso_local constant { %struct.xfs_owner_info, [40 x i8] } { %struct.xfs_owner_info { i64 -8, i64 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@XFS_RMAP_OINFO_COW = dso_local constant { %struct.xfs_owner_info, [40 x i8] } { %struct.xfs_owner_info { i64 -9, i64 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xfs_rmap_intent\00", [16 x i8] zeroinitializer }, align 32
@xfs_rmap_intent_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__tracepoint_xfs_rmap_insert = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_rmap_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_rmap_insert_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_insert_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_find_left_neighbor_query = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_find_left_neighbor_query.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_find_left_neighbor_candidate = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_find_left_neighbor_candidate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_find_left_neighbor_result = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_find_left_neighbor_result.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_lookup_le_range = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_lookup_le_range.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_lookup_le_range_candidate = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_lookup_le_range_candidate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_lookup_le_range_result = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_lookup_le_range_result.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"bno < ltrec.rm_startblock + ltrec.rm_blockcount\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"ltrec.rm_startblock > bno || ltrec.rm_startblock + ltrec.rm_blockcount < bno + len\00", [45 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_rmap_unmap = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_unmap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"(flags & XFS_RMAP_UNWRITTEN) != (rec->rm_flags & XFS_RMAP_UNWRITTEN)\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"owner != rec->rm_owner\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"!(rec->rm_flags & XFS_RMAP_BMBT_BLOCK)\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rec->rm_offset > offset\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"offset + len > ltoff + rec->rm_blockcount\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_rmap_delete = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_update = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_update_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_update_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_unmap_done = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_unmap_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_unmap_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_unmap_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"owner != 0\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"!xfs_rmap_should_skip_owner_update(oinfo)\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"have_lt != 1\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"have_lt != 0 && ltrec.rm_startblock + ltrec.rm_blockcount > bno\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"have_gt != 1\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bno + len > gtrec.rm_startblock\00", [32 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_rmap_map = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_map.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_find_right_neighbor_result = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_find_right_neighbor_result.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_map_done = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_map_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_map_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_map_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_delete_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_delete_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_deferred = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_deferred.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"owner != ltrec.rm_owner\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"(flags & XFS_RMAP_UNWRITTEN) != (ltrec.rm_flags & XFS_RMAP_UNWRITTEN)\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ltrec.rm_offset > offset\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"offset > ltoff + ltrec.rm_blockcount\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"!(XFS_RMAP_NON_INODE_OWNER(owner) || (flags & (XFS_RMAP_ATTR_FORK | XFS_RMAP_BMBT_BLOCK)))\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PREV.rm_offset <= offset\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"PREV.rm_offset + PREV.rm_blockcount >= new_endoff\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(PREV.rm_flags & XFS_RMAP_UNWRITTEN) == oldext\00", [49 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"LEFT.rm_startblock + LEFT.rm_blockcount > bno\00", [50 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bno + len > RIGHT.rm_startblock\00", [32 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_rmap_convert = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_convert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_convert_state = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_convert_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_convert_done = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_convert_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_convert_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_convert_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_rmap_defer = external dso_local global %struct.tracepoint, align 4
@trace_xfs_rmap_defer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 -2, i64 -1]
@__sancov_gen_cov_switch_values.36 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.37 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.38 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 120, i32 6 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 133, i32 6 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 242, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 245, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2383, i32 6 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2408, i32 7 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2448, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2677, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [27 x i8] c"XFS_RMAP_OINFO_SKIP_UPDATE\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2757, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant [25 x i8] c"XFS_RMAP_OINFO_ANY_OWNER\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2760, i32 29 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"XFS_RMAP_OINFO_FS\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2763, i32 29 }
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"XFS_RMAP_OINFO_LOG\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2766, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"XFS_RMAP_OINFO_AG\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2769, i32 29 }
@___asan_gen_.81 = private unnamed_addr constant [21 x i8] c"XFS_RMAP_OINFO_INOBT\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2772, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant [22 x i8] c"XFS_RMAP_OINFO_INODES\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2775, i32 29 }
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c"XFS_RMAP_OINFO_REFC\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2778, i32 29 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"XFS_RMAP_OINFO_COW\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2781, i32 29 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2788, i32 44 }
@___asan_gen_.96 = private unnamed_addr constant [22 x i8] c"xfs_rmap_intent_cache\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 27, i32 20 }
@___asan_gen_.103 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 2816, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 108, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 542, i32 7 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 579, i32 6 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 425, i32 6 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 433, i32 6 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 443, i32 7 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 449, i32 7 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 453, i32 7 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 775, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 782, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 797, i32 7 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 810, i32 6 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 829, i32 7 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 833, i32 7 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1958, i32 6 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1964, i32 6 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1972, i32 6 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1976, i32 6 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1013, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1045, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1046, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1047, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1076, i32 7 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [28 x i8] c"../fs/xfs/libxfs/xfs_rmap.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1116, i32 7 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @XFS_RMAP_OINFO_SKIP_UPDATE, ptr @XFS_RMAP_OINFO_ANY_OWNER, ptr @XFS_RMAP_OINFO_FS, ptr @XFS_RMAP_OINFO_LOG, ptr @XFS_RMAP_OINFO_AG, ptr @XFS_RMAP_OINFO_INOBT, ptr @XFS_RMAP_OINFO_INODES, ptr @XFS_RMAP_OINFO_REFC, ptr @XFS_RMAP_OINFO_COW, ptr @.str.9, ptr @xfs_rmap_intent_cache, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @XFS_RMAP_OINFO_SKIP_UPDATE to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @XFS_RMAP_OINFO_ANY_OWNER to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @XFS_RMAP_OINFO_FS to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @XFS_RMAP_OINFO_LOG to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @XFS_RMAP_OINFO_AG to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @XFS_RMAP_OINFO_INOBT to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @XFS_RMAP_OINFO_INODES to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @XFS_RMAP_OINFO_REFC to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @XFS_RMAP_OINFO_COW to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_rmap_intent_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmap_lookup_le(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags, ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_rec = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %0 = ptrtoint ptr %bc_rec to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %bno, ptr %bc_rec, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %bc_rec, i32 0, i32 1
  %1 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %len, ptr %rm_blockcount, align 4
  %rm_owner = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 1
  %2 = ptrtoint ptr %rm_owner to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %owner, ptr %rm_owner, align 8
  %rm_offset = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 2
  %3 = ptrtoint ptr %rm_offset to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %offset, ptr %rm_offset, align 8
  %rm_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 3
  %4 = ptrtoint ptr %rm_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags, ptr %rm_flags, align 8
  %call = tail call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 1, ptr noundef %stat) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_lookup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmap_lookup_eq(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags, ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_rec = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %0 = ptrtoint ptr %bc_rec to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %bno, ptr %bc_rec, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %bc_rec, i32 0, i32 1
  %1 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %len, ptr %rm_blockcount, align 4
  %rm_owner = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 1
  %2 = ptrtoint ptr %rm_owner to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %owner, ptr %rm_owner, align 8
  %rm_offset = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 2
  %3 = ptrtoint ptr %rm_offset to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %offset, ptr %rm_offset, align 8
  %rm_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 3
  %4 = ptrtoint ptr %rm_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags, ptr %rm_flags, align 8
  %call = tail call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef %stat) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmap_insert(ptr noundef %rcur, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) #0 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #11
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %i, align 4, !annotation !175
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 1
  %1 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bc_mp, align 4
  %3 = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_rmap_insert(ptr noundef %2, i32 noundef %7, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags)
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 6
  %8 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %agbno, ptr %bc_rec.i, align 8
  %rm_blockcount.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %bc_rec.i, i32 0, i32 1
  %9 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %len, ptr %rm_blockcount.i, align 4
  %rm_owner.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 6, i32 0, i32 1
  %10 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %owner, ptr %rm_owner.i, align 8
  %rm_offset.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 6, i32 0, i32 2
  %11 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %offset, ptr %rm_offset.i, align 8
  %rm_flags.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 6, i32 0, i32 3
  %12 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %flags, ptr %rm_flags.i, align 8
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %rcur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then29_crit_edge

entry.if.then29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %if.end5, label %__here, !prof !176

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !177
  call void @xfs_corruption_error(ptr noundef nonnull @.str, i32 noundef 1, ptr noundef %16, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 120, ptr noundef blockaddress(@xfs_rmap_insert, %__here)) #11
  br label %if.then29

if.end5:                                          ; preds = %if.end
  %17 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %agbno, ptr %bc_rec.i, align 8
  %18 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %len, ptr %rm_blockcount.i, align 4
  %19 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %owner, ptr %rm_owner.i, align 8
  %20 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %offset, ptr %rm_offset.i, align 8
  %21 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %flags, ptr %rm_flags.i, align 8
  %call10 = call i32 @xfs_btree_insert(ptr noundef %rcur, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end5.if.then29_crit_edge

if.end5.if.then29_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.end13:                                         ; preds = %if.end5
  %22 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp14.not = icmp eq i32 %23, 1
  br i1 %cmp14.not, label %if.end13.if.end33_crit_edge, label %__here23, !prof !176

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

__here23:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !178
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %25, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 133, ptr noundef blockaddress(@xfs_rmap_insert, %__here23)) #11
  br label %if.then29

if.then29:                                        ; preds = %__here23, %if.end5.if.then29_crit_edge, %__here, %entry.if.then29_crit_edge
  %error.0.ph = phi i32 [ -117, %__here23 ], [ %call10, %if.end5.if.then29_crit_edge ], [ -117, %__here ], [ %call.i, %entry.if.then29_crit_edge ]
  %26 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bc_mp, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 8
  %pag_agno32 = getelementptr inbounds %struct.xfs_perag, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %pag_agno32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pag_agno32, align 4
  %32 = call ptr @llvm.returnaddress(i32 0)
  %33 = ptrtoint ptr %32 to i32
  call fastcc void @trace_xfs_rmap_insert_error(ptr noundef %27, i32 noundef %31, i32 noundef %error.0.ph, i32 noundef %33)
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end13.if.end33_crit_edge
  %error.063 = phi i32 [ %error.0.ph, %if.then29 ], [ 0, %if.end13.if.end33_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #11
  ret i32 %error.063
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_insert(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_insert, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_insert, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !180
  %call42 = tail call i32 @__traceiter_xfs_rmap_insert(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !181
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_insert, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_insert, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_rmap_insert.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2816, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_insert_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_insert_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_insert_error, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !184
  %call42 = tail call i32 @__traceiter_xfs_rmap_insert_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !185
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_insert_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_insert_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_rmap_insert_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_insert_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2818, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_rmap_btrec_to_irec(ptr nocapture noundef readonly %rec, ptr nocapture noundef %irec) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rec, align 8
  %2 = ptrtoint ptr %irec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %irec, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 1
  %3 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rm_blockcount, align 4
  %rm_blockcount2 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 1
  %5 = ptrtoint ptr %rm_blockcount2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rm_blockcount2, align 4
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 2
  %6 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rm_owner, align 8
  %rm_owner3 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 2
  %8 = ptrtoint ptr %rm_owner3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %rm_owner3, align 8
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 3
  %9 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rm_offset, align 8
  %and.i = and i64 %10, 2287828610704211968
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.xfs_rmap_irec_offset_unpack.exit_crit_edge

entry.xfs_rmap_irec_offset_unpack.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_rmap_irec_offset_unpack.exit

if.end.i:                                         ; preds = %entry
  %and1.i = and i64 %10, 18014398509481983
  %rm_offset.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 3
  %11 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %and1.i, ptr %rm_offset.i, align 8
  %rm_flags.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 4
  %offset.lobit.i = lshr i64 %10, 63
  %12 = trunc i64 %offset.lobit.i to i32
  %and7.i = lshr i64 %10, 61
  %13 = trunc i64 %and7.i to i32
  %14 = and i32 %13, 2
  %15 = or i32 %14, %12
  %16 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rm_flags.i, align 8
  %and13.i = and i64 %10, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13.i)
  %tobool14.not.i = icmp eq i64 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end.i.xfs_rmap_irec_offset_unpack.exit_crit_edge, label %if.then15.i

if.end.i.xfs_rmap_irec_offset_unpack.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_rmap_irec_offset_unpack.exit

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %or17.i = or i32 %15, 4
  %17 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or17.i, ptr %rm_flags.i, align 8
  br label %xfs_rmap_irec_offset_unpack.exit

xfs_rmap_irec_offset_unpack.exit:                 ; preds = %if.then15.i, %if.end.i.xfs_rmap_irec_offset_unpack.exit_crit_edge, %entry.xfs_rmap_irec_offset_unpack.exit_crit_edge
  %retval.0.i = phi i32 [ -117, %entry.xfs_rmap_irec_offset_unpack.exit_crit_edge ], [ 0, %if.then15.i ], [ 0, %if.end.i.xfs_rmap_irec_offset_unpack.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmap_get_rec(ptr noundef %cur, ptr nocapture noundef %irec, ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  %rec = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rec) #11
  %7 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %rec, align 4, !annotation !175
  %call = call i32 @xfs_btree_get_rec(ptr noundef %cur, ptr noundef nonnull %rec, ptr noundef %stat) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
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
  %rm_blockcount.i = getelementptr inbounds %struct.xfs_rmap_rec, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rm_blockcount.i, align 4
  %rm_blockcount2.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 1
  %17 = ptrtoint ptr %rm_blockcount2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rm_blockcount2.i, align 4
  %rm_owner.i = getelementptr inbounds %struct.xfs_rmap_rec, ptr %11, i32 0, i32 2
  %18 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rm_owner.i, align 8
  %rm_owner3.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 2
  %20 = ptrtoint ptr %rm_owner3.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %rm_owner3.i, align 8
  %rm_offset.i = getelementptr inbounds %struct.xfs_rmap_rec, ptr %11, i32 0, i32 3
  %21 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %rm_offset.i, align 8
  %and.i.i = and i64 %22, 2287828610704211968
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.out_bad_rec_crit_edge

if.end.out_bad_rec_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_bad_rec

if.end.i.i:                                       ; preds = %if.end
  %and1.i.i = and i64 %22, 18014398509481983
  %rm_offset.i.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 3
  %23 = ptrtoint ptr %rm_offset.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %and1.i.i, ptr %rm_offset.i.i, align 8
  %rm_flags.i.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 4
  %offset.lobit.i.i = lshr i64 %22, 63
  %24 = trunc i64 %offset.lobit.i.i to i32
  %and7.i.i = lshr i64 %22, 61
  %25 = trunc i64 %and7.i.i to i32
  %26 = and i32 %25, 2
  %27 = or i32 %26, %24
  %and13.i.i = lshr i64 %22, 59
  %28 = trunc i64 %and13.i.i to i32
  %29 = and i32 %28, 4
  %30 = or i32 %29, %27
  %31 = ptrtoint ptr %rm_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rm_flags.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.end.i.i.out_bad_rec_crit_edge, label %if.end7

if.end.i.i.out_bad_rec_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_bad_rec

if.end7:                                          ; preds = %if.end.i.i
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 30
  %32 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %m_sectbb_log, align 1
  %conv = zext i8 %33 to i32
  %shl = shl i32 3, %conv
  %conv8 = sext i32 %shl to i64
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %34 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %35 to i64
  %shr = ashr i64 %conv8, %sh_prom
  %conv10 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv10)
  %cmp11.not = icmp ugt i32 %13, %conv10
  br i1 %cmp11.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %19)
  %cmp14.not = icmp eq i64 %19, -3
  %add = add i32 %conv10, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add)
  %cmp28.not = icmp eq i32 %16, %add
  %or.cond = select i1 %cmp14.not, i1 %cmp28.not, i1 false
  br i1 %or.cond, label %if.then13.if.end50_crit_edge, label %if.then13.out_bad_rec_crit_edge

if.then13.out_bad_rec_crit_edge:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_bad_rec

if.then13.if.end50_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.else:                                          ; preds = %if.end7
  %call33 = call zeroext i1 @xfs_verify_agbno(ptr noundef %1, i32 noundef %6, i32 noundef %13) #11
  br i1 %call33, label %if.end35, label %if.else.out_bad_rec_crit_edge

if.else.out_bad_rec_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_bad_rec

if.end35:                                         ; preds = %if.else
  %36 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irec, align 8
  %38 = ptrtoint ptr %rm_blockcount2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rm_blockcount2.i, align 4
  %add39 = add i32 %39, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %add39)
  %cmp40 = icmp ugt i32 %37, %add39
  br i1 %cmp40, label %if.end35.out_bad_rec_crit_edge, label %if.end43

if.end35.out_bad_rec_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_bad_rec

if.end43:                                         ; preds = %if.end35
  %sub = add i32 %add39, -1
  %call47 = call zeroext i1 @xfs_verify_agbno(ptr noundef %1, i32 noundef %6, i32 noundef %sub) #11
  br i1 %call47, label %if.end43.if.end50_crit_edge, label %if.end43.out_bad_rec_crit_edge

if.end43.out_bad_rec_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_bad_rec

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.end50:                                         ; preds = %if.end43.if.end50_crit_edge, %if.then13.if.end50_crit_edge
  %40 = ptrtoint ptr %rm_owner3.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rm_owner3.i, align 8
  %call52 = call zeroext i1 @xfs_verify_ino(ptr noundef %1, i64 noundef %41) #11
  br i1 %call52, label %if.end50.cleanup_crit_edge, label %lor.lhs.false54

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false54:                                  ; preds = %if.end50
  %42 = ptrtoint ptr %rm_owner3.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rm_owner3.i, align 8
  %44 = add i64 %43, 10
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %44)
  %45 = icmp ult i64 %44, 8
  br i1 %45, label %lor.lhs.false54.cleanup_crit_edge, label %lor.lhs.false54.out_bad_rec_crit_edge

lor.lhs.false54.out_bad_rec_crit_edge:            ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_bad_rec

lor.lhs.false54.cleanup_crit_edge:                ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_bad_rec:                                      ; preds = %lor.lhs.false54.out_bad_rec_crit_edge, %if.end43.out_bad_rec_crit_edge, %if.end35.out_bad_rec_crit_edge, %if.else.out_bad_rec_crit_edge, %if.then13.out_bad_rec_crit_edge, %if.end.i.i.out_bad_rec_crit_edge, %if.end.out_bad_rec_crit_edge
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %6) #11
  %46 = ptrtoint ptr %rm_owner3.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %rm_owner3.i, align 8
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 4
  %48 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rm_flags, align 8
  %50 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irec, align 8
  %52 = ptrtoint ptr %rm_blockcount2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rm_blockcount2.i, align 4
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.4, i64 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53) #11
  br label %cleanup

cleanup:                                          ; preds = %out_bad_rec, %lor.lhs.false54.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %out_bad_rec ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false54.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rec) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_get_rec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_agbno(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_ino(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmap_find_left_neighbor(ptr noundef %cur, i32 noundef %bno, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags, ptr noundef %irec, ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  %low_brec.i = alloca %union.xfs_btree_irec, align 8
  %high_brec.i = alloca %union.xfs_btree_irec, align 8
  %query.i = alloca %struct.xfs_rmap_query_range_info, align 4
  %info = alloca %struct.xfs_find_left_neighbor_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info) #11
  %0 = getelementptr inbounds i8, ptr %info, i32 16
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bno)
  %cmp = icmp eq i32 %bno, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %bno, -1
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub, ptr %info, align 8
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %rm_owner to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %owner, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %owner)
  %tobool.not = icmp sgt i64 %owner, -1
  %and2 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = and i1 %tobool.not, %tobool3.not
  br i1 %or.cond, label %if.then4, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset)
  %cmp5 = icmp eq i64 %offset, 0
  br i1 %cmp5, label %if.then4.cleanup_crit_edge, label %if.end7

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %sub8 = add i64 %offset, -1
  br label %if.end12

if.end12:                                         ; preds = %if.end7, %if.end.if.end12_crit_edge
  %.sink = phi i64 [ %sub8, %if.end7 ], [ 0, %if.end.if.end12_crit_edge ]
  %rm_offset11 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %info, i32 0, i32 3
  %5 = ptrtoint ptr %rm_offset11 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %.sink, ptr %rm_offset11, align 8
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %info, i32 0, i32 4
  %6 = ptrtoint ptr %rm_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %flags, ptr %rm_flags, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rm_blockcount, align 4
  %irec15 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %irec15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %irec, ptr %irec15, align 8
  %stat16 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, ptr %info, i32 0, i32 2
  %9 = ptrtoint ptr %stat16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %stat, ptr %stat16, align 4
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %10 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bc_mp, align 4
  %12 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_rmap_find_left_neighbor_query(ptr noundef %11, i32 noundef %16, i32 noundef %bno, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %low_brec.i) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %high_brec.i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %query.i) #11
  %17 = getelementptr inbounds %struct.xfs_rmap_query_range_info, ptr %query.i, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %low_brec.i, ptr %info, i32 32)
  %19 = call ptr @memcpy(ptr %high_brec.i, ptr %info, i32 32)
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %info, ptr %17, align 4
  %21 = ptrtoint ptr %query.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @xfs_rmap_find_left_neighbor_helper, ptr %query.i, align 4
  %call.i = call i32 @xfs_btree_query_range(ptr noundef %cur, ptr noundef nonnull %low_brec.i, ptr noundef nonnull %high_brec.i, ptr noundef nonnull @xfs_rmap_query_range_helper, ptr noundef nonnull %query.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %query.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %high_brec.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %low_brec.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %call.i)
  %cmp19 = icmp eq i32 %call.i, -125
  %spec.store.select = select i1 %cmp19, i32 0, i32 %call.i
  %22 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool22.not = icmp eq i32 %23, 0
  br i1 %tobool22.not, label %if.end12.cleanup_crit_edge, label %if.then23

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then23:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bc_mp, align 4
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %12, align 8
  %pag_agno26 = getelementptr inbounds %struct.xfs_perag, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %pag_agno26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pag_agno26, align 4
  %30 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irec, align 8
  %rm_blockcount28 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 1
  %32 = ptrtoint ptr %rm_blockcount28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rm_blockcount28, align 4
  %rm_owner29 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 2
  %34 = ptrtoint ptr %rm_owner29 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %rm_owner29, align 8
  %rm_offset30 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 3
  %36 = ptrtoint ptr %rm_offset30 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %rm_offset30, align 8
  %rm_flags31 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 4
  %38 = ptrtoint ptr %rm_flags31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rm_flags31, align 8
  call fastcc void @trace_xfs_rmap_find_left_neighbor_result(ptr noundef %25, i32 noundef %29, i32 noundef %31, i32 noundef %33, i64 noundef %35, i64 noundef %37, i32 noundef %39)
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end12.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then4.cleanup_crit_edge ], [ %spec.store.select, %if.then23 ], [ %spec.store.select, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info) #11
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_find_left_neighbor_query(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_find_left_neighbor_query, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_find_left_neighbor_query, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !186
  %call42 = tail call i32 @__traceiter_xfs_rmap_find_left_neighbor_query(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef 0, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !187
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !176

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_find_left_neighbor_query, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_find_left_neighbor_query, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_xfs_rmap_find_left_neighbor_query.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_find_left_neighbor_query.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2823, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmap_query_range(ptr noundef %cur, ptr nocapture noundef readonly %low_rec, ptr nocapture noundef readonly %high_rec, ptr noundef %fn, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %low_brec = alloca %union.xfs_btree_irec, align 8
  %high_brec = alloca %union.xfs_btree_irec, align 8
  %query = alloca %struct.xfs_rmap_query_range_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %low_brec) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %high_brec) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %query) #11
  %0 = getelementptr inbounds %struct.xfs_rmap_query_range_info, ptr %query, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %low_brec, ptr %low_rec, i32 32)
  %2 = call ptr @memcpy(ptr %high_brec, ptr %high_rec, i32 32)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %priv, ptr %0, align 4
  %4 = ptrtoint ptr %query to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fn, ptr %query, align 4
  %call = call i32 @xfs_btree_query_range(ptr noundef %cur, ptr noundef nonnull %low_brec, ptr noundef nonnull %high_brec, ptr noundef nonnull @xfs_rmap_query_range_helper, ptr noundef nonnull %query) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %query) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %high_brec) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %low_brec) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_rmap_find_left_neighbor_helper(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %rec, ptr nocapture noundef readonly %priv) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %7 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rec, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 1
  %9 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rm_blockcount, align 4
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 2
  %11 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rm_owner, align 8
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 3
  %13 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rm_offset, align 8
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 4
  %15 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rm_flags, align 8
  tail call fastcc void @trace_xfs_rmap_find_left_neighbor_candidate(ptr noundef %1, i32 noundef %6, i32 noundef %8, i32 noundef %10, i64 noundef %12, i64 noundef %14, i32 noundef %16)
  %17 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %rm_owner, align 8
  %rm_owner2 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %priv, i32 0, i32 2
  %19 = ptrtoint ptr %rm_owner2 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rm_owner2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %20)
  %cmp.not = icmp eq i64 %18, %20
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %18)
  %tobool.not = icmp sgt i64 %18, -1
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %21 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rm_flags, align 8
  %and5 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true7:                                   ; preds = %land.lhs.true
  %23 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rm_offset, align 8
  %25 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rm_blockcount, align 4
  %conv = zext i32 %26 to i64
  %add = add i64 %24, -1
  %sub = add i64 %add, %conv
  %rm_offset11 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %priv, i32 0, i32 3
  %27 = ptrtoint ptr %rm_offset11 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rm_offset11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %28)
  %cmp12.not = icmp eq i64 %sub, %28
  br i1 %cmp12.not, label %land.lhs.true7.if.end15_crit_edge, label %land.lhs.true7.cleanup_crit_edge

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true7.if.end15_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true7.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %irec = getelementptr inbounds %struct.xfs_find_left_neighbor_info, ptr %priv, i32 0, i32 1
  %29 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irec, align 8
  %31 = call ptr @memcpy(ptr %30, ptr %rec, i32 32)
  %stat = getelementptr inbounds %struct.xfs_find_left_neighbor_info, ptr %priv, i32 0, i32 2
  %32 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stat, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %land.lhs.true7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -125, %if.end15 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_find_left_neighbor_result(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_find_left_neighbor_result, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_find_left_neighbor_result, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !188
  %call42 = tail call i32 @__traceiter_xfs_rmap_find_left_neighbor_result(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !189
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_find_left_neighbor_result, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_find_left_neighbor_result, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_rmap_find_left_neighbor_result.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_find_left_neighbor_result.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2828, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
define dso_local i32 @xfs_rmap_lookup_le_range(ptr noundef %cur, i32 noundef %bno, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags, ptr noundef %irec, ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  %low_brec.i = alloca %union.xfs_btree_irec, align 8
  %high_brec.i = alloca %union.xfs_btree_irec, align 8
  %query.i = alloca %struct.xfs_rmap_query_range_info, align 4
  %info = alloca %struct.xfs_find_left_neighbor_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info) #11
  %0 = getelementptr inbounds i8, ptr %info, i32 24
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8, !annotation !175
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %bno, ptr %info, align 8
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %rm_owner to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %owner, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %owner)
  %tobool.not = icmp sgt i64 %owner, -1
  %and2 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = and i1 %tobool.not, %tobool3.not
  %spec.select = select i1 %or.cond, i64 %offset, i64 0
  %4 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %info, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %spec.select, ptr %4, align 8
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %info, i32 0, i32 4
  %6 = ptrtoint ptr %rm_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %flags, ptr %rm_flags, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rm_blockcount, align 4
  %8 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %stat, align 4
  %irec9 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, ptr %info, i32 0, i32 1
  %9 = ptrtoint ptr %irec9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %irec, ptr %irec9, align 8
  %stat10 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %stat10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %stat, ptr %stat10, align 4
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %11 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bc_mp, align 4
  %13 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_rmap_lookup_le_range(ptr noundef %12, i32 noundef %17, i32 noundef %bno, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %low_brec.i) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %high_brec.i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %query.i) #11
  %18 = getelementptr inbounds %struct.xfs_rmap_query_range_info, ptr %query.i, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %low_brec.i, ptr %info, i32 32)
  %20 = call ptr @memcpy(ptr %high_brec.i, ptr %info, i32 32)
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %info, ptr %18, align 4
  %22 = ptrtoint ptr %query.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @xfs_rmap_lookup_le_range_helper, ptr %query.i, align 4
  %call.i = call i32 @xfs_btree_query_range(ptr noundef %cur, ptr noundef nonnull %low_brec.i, ptr noundef nonnull %high_brec.i, ptr noundef nonnull @xfs_rmap_query_range_helper, ptr noundef nonnull %query.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %query.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %high_brec.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %low_brec.i) #11
  %23 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool15.not = icmp eq i32 %24, 0
  br i1 %tobool15.not, label %entry.if.end25_crit_edge, label %if.then16

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bc_mp, align 4
  %27 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %13, align 8
  %pag_agno19 = getelementptr inbounds %struct.xfs_perag, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pag_agno19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pag_agno19, align 4
  %31 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irec, align 8
  %rm_blockcount21 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 1
  %33 = ptrtoint ptr %rm_blockcount21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rm_blockcount21, align 4
  %rm_owner22 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 2
  %35 = ptrtoint ptr %rm_owner22 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %rm_owner22, align 8
  %rm_offset23 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 3
  %37 = ptrtoint ptr %rm_offset23 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %rm_offset23, align 8
  %rm_flags24 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 4
  %39 = ptrtoint ptr %rm_flags24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rm_flags24, align 8
  call fastcc void @trace_xfs_rmap_lookup_le_range_result(ptr noundef %26, i32 noundef %30, i32 noundef %32, i32 noundef %34, i64 noundef %36, i64 noundef %38, i32 noundef %40)
  br label %if.end25

if.end25:                                         ; preds = %if.then16, %entry.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %call.i)
  %cmp = icmp eq i32 %call.i, -125
  %spec.store.select = select i1 %cmp, i32 0, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info) #11
  ret i32 %spec.store.select
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_lookup_le_range(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_lookup_le_range, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_lookup_le_range, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !190
  %call42 = tail call i32 @__traceiter_xfs_rmap_lookup_le_range(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef 0, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !176

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_lookup_le_range, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_lookup_le_range, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_xfs_rmap_lookup_le_range.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_lookup_le_range.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2825, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_rmap_lookup_le_range_helper(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %rec, ptr nocapture noundef readonly %priv) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %7 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rec, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 1
  %9 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rm_blockcount, align 4
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 2
  %11 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rm_owner, align 8
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 3
  %13 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rm_offset, align 8
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 4
  %15 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rm_flags, align 8
  tail call fastcc void @trace_xfs_rmap_lookup_le_range_candidate(ptr noundef %1, i32 noundef %6, i32 noundef %8, i32 noundef %10, i64 noundef %12, i64 noundef %14, i32 noundef %16)
  %17 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %rm_owner, align 8
  %rm_owner2 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %priv, i32 0, i32 2
  %19 = ptrtoint ptr %rm_owner2 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rm_owner2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %20)
  %cmp.not = icmp eq i64 %18, %20
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %18)
  %tobool.not = icmp sgt i64 %18, -1
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %21 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rm_flags, align 8
  %and5 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true7:                                   ; preds = %land.lhs.true
  %23 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rm_offset, align 8
  %rm_offset10 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %priv, i32 0, i32 3
  %25 = ptrtoint ptr %rm_offset10 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %rm_offset10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %26)
  %cmp11 = icmp ugt i64 %24, %26
  br i1 %cmp11, label %land.lhs.true7.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true7
  %27 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rm_blockcount, align 4
  %conv = zext i32 %28 to i64
  %add = add i64 %24, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %26)
  %cmp16.not = icmp ugt i64 %add, %26
  br i1 %cmp16.not, label %lor.lhs.false.if.end19_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %lor.lhs.false.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %irec = getelementptr inbounds %struct.xfs_find_left_neighbor_info, ptr %priv, i32 0, i32 1
  %29 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irec, align 8
  %31 = call ptr @memcpy(ptr %30, ptr %rec, i32 32)
  %stat = getelementptr inbounds %struct.xfs_find_left_neighbor_info, ptr %priv, i32 0, i32 2
  %32 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stat, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -125, %if.end19 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_lookup_le_range_result(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_lookup_le_range_result, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_lookup_le_range_result, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  %call42 = tail call i32 @__traceiter_xfs_rmap_lookup_le_range_result(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !193
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_lookup_le_range_result, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_lookup_le_range_result, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_rmap_lookup_le_range_result.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_lookup_le_range_result.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2826, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
define dso_local i32 @xfs_rmap_free(ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i32 noundef %bno, i32 noundef %len, ptr noundef %oinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call ptr @xfs_rmapbt_init_cursor(ptr noundef %1, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag) #11
  %call2 = tail call fastcc i32 @xfs_rmap_unmap(ptr noundef %call1, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext false, ptr noundef %oinfo)
  tail call void @xfs_btree_del_cursor(ptr noundef %call1, i32 noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_rmapbt_init_cursor(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rmap_unmap(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) #6 align 64 {
entry:
  %ltrec = alloca %struct.xfs_rmap_irec, align 8
  %i = alloca i32, align 4
  %rtrec = alloca %struct.xfs_rmap_irec, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ltrec) #11
  %2 = call ptr @memset(ptr %ltrec, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #11
  %3 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %i, align 4, !annotation !175
  %4 = ptrtoint ptr %oinfo to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %oinfo, align 8
  %oi_offset.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 1
  %6 = ptrtoint ptr %oi_offset.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %oi_offset.i, align 8
  %oi_flags.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 2
  %8 = ptrtoint ptr %oi_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oi_flags.i, align 8
  %10 = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp slt i64 %5, 0
  %and1 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2 = icmp ne i32 %and1, 0
  %11 = select i1 %tobool.not, i1 true, i1 %tobool2
  %or = or i32 %10, 4
  %flags.0 = select i1 %unwritten, i32 %or, i32 %10
  %12 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_rmap_unmap(ptr noundef %1, i32 noundef %16, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo)
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %17 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %bno, ptr %bc_rec.i, align 8
  %rm_blockcount.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %bc_rec.i, i32 0, i32 1
  %18 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %len, ptr %rm_blockcount.i, align 4
  %rm_owner.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 1
  %19 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %5, ptr %rm_owner.i, align 8
  %rm_offset.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 2
  %20 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %7, ptr %rm_offset.i, align 8
  %rm_flags.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 3
  %21 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %flags.0, ptr %rm_flags.i, align 8
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 1, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %entry.if.then238_crit_edge

entry.if.then238_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then238

if.end8:                                          ; preds = %entry
  %22 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.not = icmp eq i32 %23, 1
  br i1 %cmp.not, label %if.end12, label %__here, !prof !176

__here:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !194
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 516, ptr noundef blockaddress(@xfs_rmap_unmap, %__here)) #11
  br label %if.then238

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @xfs_rmap_get_rec(ptr noundef %cur, ptr noundef nonnull %ltrec, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.if.then238_crit_edge

if.end12.if.then238_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then238

if.end16:                                         ; preds = %if.end12
  %24 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp17.not = icmp eq i32 %25, 1
  br i1 %cmp17.not, label %if.end29, label %__here25, !prof !176

__here25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !195
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 524, ptr noundef blockaddress(@xfs_rmap_unmap, %__here25)) #11
  br label %if.then238

if.end29:                                         ; preds = %if.end16
  %26 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bc_mp, align 4
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %12, align 8
  %pag_agno32 = getelementptr inbounds %struct.xfs_perag, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %pag_agno32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pag_agno32, align 4
  %32 = ptrtoint ptr %ltrec to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ltrec, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 1
  %34 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rm_blockcount, align 4
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 2
  %36 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %rm_owner, align 8
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 3
  %38 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %rm_offset, align 8
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 4
  %40 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rm_flags, align 8
  call fastcc void @trace_xfs_rmap_lookup_le_range_result(ptr noundef %27, i32 noundef %31, i32 noundef %33, i32 noundef %35, i64 noundef %37, i64 noundef %39, i32 noundef %41)
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i64 %5, label %if.end29.if.end87_crit_edge [
    i64 -1, label %if.then35
    i64 -2, label %land.lhs.true
  ]

if.end29.if.end87_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then35:                                        ; preds = %if.end29
  %add = add i32 %35, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %bno)
  %cmp38 = icmp ugt i32 %add, %bno
  br i1 %cmp38, label %__here46, label %if.then35.out_error_crit_edge, !prof !196

if.then35.out_error_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_error

__here46:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !197
  call void @xfs_corruption_error(ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 544, ptr noundef blockaddress(@xfs_rmap_unmap, %__here46)) #11
  br label %if.then238

land.lhs.true:                                    ; preds = %if.end29
  %add55 = add i32 %35, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %add55, i32 %bno)
  %cmp56.not = icmp ugt i32 %add55, %bno
  br i1 %cmp56.not, label %land.lhs.true.if.end87_crit_edge, label %if.then57

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then57:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rtrec) #11
  %42 = call ptr @memset(ptr %rtrec, i32 255, i32 32)
  %call58 = call i32 @xfs_btree_increment(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.then57.cleanup.thread_crit_edge

if.then57.cleanup.thread_crit_edge:               ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end61:                                         ; preds = %if.then57
  %43 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp62 = icmp eq i32 %44, 0
  br i1 %cmp62, label %if.end61.cleanup.thread353_crit_edge, label %if.end64

if.end61.cleanup.thread353_crit_edge:             ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread353

if.end64:                                         ; preds = %if.end61
  %call65 = call i32 @xfs_rmap_get_rec(ptr noundef %cur, ptr noundef nonnull %rtrec, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.cleanup.thread_crit_edge

if.end64.cleanup.thread_crit_edge:                ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end68:                                         ; preds = %if.end64
  %45 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp69.not = icmp eq i32 %46, 1
  br i1 %cmp69.not, label %if.end81, label %__here77, !prof !176

__here77:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !198
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 570, ptr noundef blockaddress(@xfs_rmap_unmap, %__here77)) #11
  br label %cleanup.thread

if.end81:                                         ; preds = %if.end68
  %47 = ptrtoint ptr %rtrec to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rtrec, align 8
  %add83 = add i32 %len, %bno
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %add83)
  %cmp84.not = icmp ult i32 %48, %add83
  br i1 %cmp84.not, label %cleanup, label %if.end81.cleanup.thread353_crit_edge

if.end81.cleanup.thread353_crit_edge:             ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread353

cleanup.thread:                                   ; preds = %__here77, %if.end64.cleanup.thread_crit_edge, %if.then57.cleanup.thread_crit_edge
  %error.0.ph = phi i32 [ %call65, %if.end64.cleanup.thread_crit_edge ], [ %call58, %if.then57.cleanup.thread_crit_edge ], [ -117, %__here77 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rtrec) #11
  br label %if.then238

cleanup.thread353:                                ; preds = %if.end81.cleanup.thread353_crit_edge, %if.end61.cleanup.thread353_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rtrec) #11
  br label %out_error

cleanup:                                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rtrec) #11
  br label %if.end87

if.end87:                                         ; preds = %cleanup, %land.lhs.true.if.end87_crit_edge, %if.end29.if.end87_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %bno)
  %cmp89 = icmp ugt i32 %33, %bno
  br i1 %cmp89, label %if.end87.__here104_crit_edge, label %lor.rhs90, !prof !196

if.end87.__here104_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here104

lor.rhs90:                                        ; preds = %if.end87
  %add93 = add i32 %35, %33
  %add94 = add i32 %len, %bno
  call void @__sanitizer_cov_trace_cmp4(i32 %add93, i32 %add94)
  %cmp95 = icmp ult i32 %add93, %add94
  br i1 %cmp95, label %lor.rhs90.__here104_crit_edge, label %if.end108, !prof !196

lor.rhs90.__here104_crit_edge:                    ; preds = %lor.rhs90
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here104

__here104:                                        ; preds = %lor.rhs90.__here104_crit_edge, %if.end87.__here104_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !199
  call void @xfs_corruption_error(ptr noundef nonnull @.str.14, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 582, ptr noundef blockaddress(@xfs_rmap_unmap, %__here104)) #11
  br label %if.then238

if.end108:                                        ; preds = %lor.rhs90
  %conv = zext i32 %len to i64
  %call109 = call fastcc i32 @xfs_rmap_free_check_owner(ptr noundef %1, i64 noundef %39, ptr noundef nonnull %ltrec, i64 noundef %conv, i64 noundef %5, i64 noundef %7, i32 noundef %flags.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %if.end108.if.then238_crit_edge

if.end108.if.then238_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then238

if.end112:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %bno)
  %cmp114 = icmp eq i32 %33, %bno
  br i1 %cmp114, label %land.lhs.true116, label %if.else163

land.lhs.true116:                                 ; preds = %if.end112
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %len)
  %cmp118 = icmp eq i32 %35, %len
  br i1 %cmp118, label %if.then120, label %if.then149

if.then120:                                       ; preds = %land.lhs.true116
  %49 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %12, align 8
  %pag_agno122 = getelementptr inbounds %struct.xfs_perag, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %pag_agno122 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pag_agno122, align 4
  call fastcc void @trace_xfs_rmap_delete(ptr noundef %1, i32 noundef %52, i32 noundef %bno, i32 noundef %len, i64 noundef %37, i64 noundef %39, i32 noundef %41)
  %call128 = call i32 @xfs_btree_delete(ptr noundef %cur, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.then120.if.then238_crit_edge

if.then120.if.then238_crit_edge:                  ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then238

if.end131:                                        ; preds = %if.then120
  %53 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp132.not = icmp eq i32 %54, 1
  br i1 %cmp132.not, label %if.end131.out_error_crit_edge, label %__here141, !prof !176

if.end131.out_error_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_error

__here141:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !200
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 602, ptr noundef blockaddress(@xfs_rmap_unmap, %__here141)) #11
  br label %if.then238

if.then149:                                       ; preds = %land.lhs.true116
  %55 = ptrtoint ptr %ltrec to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add94, ptr %ltrec, align 8
  %sub = sub i32 %35, %len
  %56 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub, ptr %rm_blockcount, align 4
  br i1 %11, label %if.then149.if.end158_crit_edge, label %if.then154

if.then149.if.end158_crit_edge:                   ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

if.then154:                                       ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #13
  %add157 = add i64 %39, %conv
  %57 = ptrtoint ptr %rm_offset to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %add157, ptr %rm_offset, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.then154, %if.then149.if.end158_crit_edge
  %call159 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef nonnull %ltrec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end158.out_error_crit_edge, label %if.end158.if.then238_crit_edge

if.end158.if.then238_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then238

if.end158.out_error_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_error

if.else163:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_cmp4(i32 %add93, i32 %add94)
  %cmp168 = icmp eq i32 %add93, %add94
  br i1 %cmp168, label %if.then170, label %if.else177

if.then170:                                       ; preds = %if.else163
  %sub172 = sub i32 %35, %len
  %58 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub172, ptr %rm_blockcount, align 4
  %call173 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef nonnull %ltrec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.then170.out_error_crit_edge, label %if.then170.if.then238_crit_edge

if.then170.if.then238_crit_edge:                  ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then238

if.then170.out_error_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_error

if.else177:                                       ; preds = %if.else163
  %sub180 = sub i32 %bno, %33
  %59 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub180, ptr %rm_blockcount, align 4
  %call182 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef nonnull %ltrec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.end185, label %if.else177.if.then238_crit_edge

if.else177.if.then238_crit_edge:                  ; preds = %if.else177
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then238

if.end185:                                        ; preds = %if.else177
  %call186 = call i32 @xfs_btree_increment(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.end189, label %if.end185.if.then238_crit_edge

if.end185.if.then238_crit_edge:                   ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then238

if.end189:                                        ; preds = %if.end185
  %60 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add94, ptr %bc_rec.i, align 8
  %61 = add i32 %sub180, %len
  %sub194 = sub i32 %35, %61
  %62 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub194, ptr %rm_blockcount.i, align 4
  %63 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %37, ptr %rm_owner.i, align 8
  %add206 = add i64 %7, %conv
  %storemerge = select i1 %11, i64 0, i64 %add206
  %64 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %storemerge, ptr %rm_offset.i, align 8
  %65 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %flags.0, ptr %rm_flags.i, align 8
  %66 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %12, align 8
  %pag_agno213 = getelementptr inbounds %struct.xfs_perag, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %pag_agno213 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pag_agno213, align 4
  call fastcc void @trace_xfs_rmap_insert(ptr noundef %1, i32 noundef %69, i32 noundef %add94, i32 noundef %sub194, i64 noundef %37, i64 noundef %storemerge, i32 noundef %flags.0)
  %call224 = call i32 @xfs_btree_insert(ptr noundef %cur, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.end189.out_error_crit_edge, label %if.end189.if.then238_crit_edge

if.end189.if.then238_crit_edge:                   ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then238

if.end189.out_error_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_error

out_error:                                        ; preds = %if.end189.out_error_crit_edge, %if.then170.out_error_crit_edge, %if.end158.out_error_crit_edge, %if.end131.out_error_crit_edge, %cleanup.thread353, %if.then35.out_error_crit_edge
  %70 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %12, align 8
  %pag_agno235 = getelementptr inbounds %struct.xfs_perag, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %pag_agno235 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pag_agno235, align 4
  call fastcc void @trace_xfs_rmap_unmap_done(ptr noundef %1, i32 noundef %73, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo)
  br label %cleanup242

if.then238:                                       ; preds = %if.end189.if.then238_crit_edge, %if.end185.if.then238_crit_edge, %if.else177.if.then238_crit_edge, %if.then170.if.then238_crit_edge, %if.end158.if.then238_crit_edge, %__here141, %if.then120.if.then238_crit_edge, %if.end108.if.then238_crit_edge, %__here104, %cleanup.thread, %__here46, %__here25, %if.end12.if.then238_crit_edge, %__here, %entry.if.then238_crit_edge
  %error.3.ph = phi i32 [ %error.0.ph, %cleanup.thread ], [ %call173, %if.then170.if.then238_crit_edge ], [ %call159, %if.end158.if.then238_crit_edge ], [ -117, %__here141 ], [ %call128, %if.then120.if.then238_crit_edge ], [ %call109, %if.end108.if.then238_crit_edge ], [ -117, %__here104 ], [ -117, %__here46 ], [ -117, %__here25 ], [ %call13, %if.end12.if.then238_crit_edge ], [ -117, %__here ], [ %call.i, %entry.if.then238_crit_edge ], [ %call224, %if.end189.if.then238_crit_edge ], [ %call186, %if.end185.if.then238_crit_edge ], [ %call182, %if.else177.if.then238_crit_edge ]
  %74 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %12, align 8
  %pag_agno240 = getelementptr inbounds %struct.xfs_perag, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %pag_agno240 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pag_agno240, align 4
  %78 = call ptr @llvm.returnaddress(i32 0)
  %79 = ptrtoint ptr %78 to i32
  call fastcc void @trace_xfs_rmap_unmap_error(ptr noundef %1, i32 noundef %77, i32 noundef %error.3.ph, i32 noundef %79)
  br label %cleanup242

cleanup242:                                       ; preds = %if.then238, %out_error
  %error.3363 = phi i32 [ 0, %out_error ], [ %error.3.ph, %if.then238 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ltrec) #11
  ret i32 %error.3363
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_del_cursor(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmap_alloc(ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag, i32 noundef %bno, i32 noundef %len, ptr noundef %oinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call ptr @xfs_rmapbt_init_cursor(ptr noundef %1, ptr noundef %tp, ptr noundef %agbp, ptr noundef %pag) #11
  %call2 = tail call fastcc i32 @xfs_rmap_map(ptr noundef %call1, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext false, ptr noundef %oinfo)
  tail call void @xfs_btree_del_cursor(ptr noundef %call1, i32 noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rmap_map(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) #6 align 64 {
entry:
  %ltrec = alloca %struct.xfs_rmap_irec, align 8
  %gtrec = alloca %struct.xfs_rmap_irec, align 8
  %have_gt = alloca i32, align 4
  %have_lt = alloca i32, align 4
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ltrec) #11
  %2 = call ptr @memset(ptr %ltrec, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gtrec) #11
  %3 = call ptr @memset(ptr %gtrec, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %have_gt) #11
  %4 = ptrtoint ptr %have_gt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %have_gt, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %have_lt) #11
  %5 = ptrtoint ptr %have_lt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %have_lt, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #11
  %6 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %i, align 4, !annotation !175
  %7 = ptrtoint ptr %oinfo to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %oinfo, align 8
  %oi_offset.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 1
  %9 = ptrtoint ptr %oi_offset.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %oi_offset.i, align 8
  %oi_flags.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 2
  %11 = ptrtoint ptr %oi_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oi_flags.i, align 8
  %13 = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp.not = icmp eq i64 %8, 0
  br i1 %cmp.not, label %cond.end.thread, label %cond.end, !prof !196

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 775) #11
  br label %lor.rhs

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %8)
  %tobool2.not = icmp sgt i64 %8, -1
  br i1 %tobool2.not, label %cond.end.lor.rhs_crit_edge, label %cond.end.lor.end_crit_edge

cond.end.lor.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

cond.end.lor.rhs_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs

lor.rhs:                                          ; preds = %cond.end.lor.rhs_crit_edge, %cond.end.thread
  %and3 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4 = icmp ne i32 %and3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end.lor.end_crit_edge
  %14 = phi i1 [ true, %cond.end.lor.end_crit_edge ], [ %tobool4, %lor.rhs ]
  %or = or i32 %13, 4
  %spec.select = select i1 %unwritten, i32 %or, i32 %13
  %15 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_rmap_map(ptr noundef %1, i32 noundef %19, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo)
  %20 = ptrtoint ptr %oinfo to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %oinfo, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %21)
  %cmp.i = icmp eq i64 %21, -1
  br i1 %cmp.i, label %cond.false17, label %lor.end.cond.end18_crit_edge, !prof !196

lor.end.cond.end18_crit_edge:                     ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end18

cond.false17:                                     ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 782) #11
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %lor.end.cond.end18_crit_edge
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %22 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %bno, ptr %bc_rec.i, align 8
  %rm_blockcount.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %bc_rec.i, i32 0, i32 1
  %23 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %len, ptr %rm_blockcount.i, align 4
  %rm_owner.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 1
  %24 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %8, ptr %rm_owner.i, align 8
  %rm_offset.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 2
  %25 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %10, ptr %rm_offset.i, align 8
  %rm_flags.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 3
  %26 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select, ptr %rm_flags.i, align 8
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 1, ptr noundef nonnull %have_lt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %if.end22, label %cond.end18.if.then251_crit_edge

cond.end18.if.then251_crit_edge:                  ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then251

if.end22:                                         ; preds = %cond.end18
  %27 = ptrtoint ptr %have_lt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %have_lt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool23.not = icmp eq i32 %28, 0
  br i1 %tobool23.not, label %if.end22.if.end62_crit_edge, label %if.then24

if.end22.if.end62_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then24:                                        ; preds = %if.end22
  %call25 = call i32 @xfs_rmap_get_rec(ptr noundef %cur, ptr noundef nonnull %ltrec, ptr noundef nonnull %have_lt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then24.if.then251_crit_edge

if.then24.if.then251_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then251

if.end28:                                         ; preds = %if.then24
  %29 = ptrtoint ptr %have_lt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %have_lt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp29.not = icmp eq i32 %30, 1
  br i1 %cmp29.not, label %if.end39, label %__here, !prof !176

__here:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !201
  call void @xfs_corruption_error(ptr noundef nonnull @.str.22, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 797, ptr noundef blockaddress(@xfs_rmap_map, %__here)) #11
  br label %if.then251

if.end39:                                         ; preds = %if.end28
  %31 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bc_mp, align 4
  %33 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %15, align 8
  %pag_agno42 = getelementptr inbounds %struct.xfs_perag, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %pag_agno42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pag_agno42, align 4
  %37 = ptrtoint ptr %ltrec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ltrec, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 1
  %39 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rm_blockcount, align 4
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 2
  %41 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %rm_owner, align 8
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 3
  %43 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %rm_offset, align 8
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 4
  %45 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rm_flags, align 8
  call fastcc void @trace_xfs_rmap_lookup_le_range_result(ptr noundef %32, i32 noundef %36, i32 noundef %38, i32 noundef %40, i64 noundef %42, i64 noundef %44, i32 noundef %46)
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %42)
  %cmp.i332 = icmp ne i64 %42, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %8)
  %cmp2.not.i = icmp eq i64 %42, %8
  %or.cond.i = and i1 %cmp.i332, %cmp2.not.i
  %.masked373 = and i32 %46, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %.masked373, i32 %spec.select)
  %47 = icmp eq i32 %.masked373, %spec.select
  %or.cond = select i1 %or.cond.i, i1 %47, i1 false
  br i1 %or.cond, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %have_lt to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %have_lt, align 4
  br label %if.end62

if.end46:                                         ; preds = %if.end39
  %49 = ptrtoint ptr %have_lt to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load i32, ptr %have_lt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp47.not = icmp eq i32 %.pr, 0
  br i1 %cmp47.not, label %if.end46.if.end62_crit_edge, label %land.rhs

if.end46.if.end62_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

land.rhs:                                         ; preds = %if.end46
  %50 = ptrtoint ptr %ltrec to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ltrec, align 8
  %52 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rm_blockcount, align 4
  %add = add i32 %53, %51
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %bno)
  %cmp50 = icmp ugt i32 %add, %bno
  br i1 %cmp50, label %__here58, label %land.rhs.if.end62_crit_edge, !prof !196

land.rhs.if.end62_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

__here58:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  call void @xfs_corruption_error(ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 812, ptr noundef blockaddress(@xfs_rmap_map, %__here58)) #11
  br label %if.then251

if.end62:                                         ; preds = %land.rhs.if.end62_crit_edge, %if.end46.if.end62_crit_edge, %if.then44, %if.end22.if.end62_crit_edge
  %call63 = call i32 @xfs_btree_increment(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %have_gt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end62.if.then251_crit_edge

if.end62.if.then251_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then251

if.end66:                                         ; preds = %if.end62
  %54 = ptrtoint ptr %have_gt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %have_gt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool67.not = icmp eq i32 %55, 0
  br i1 %tobool67.not, label %if.end66.if.end112_crit_edge, label %if.then68

if.end66.if.end112_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.then68:                                        ; preds = %if.end66
  %call69 = call i32 @xfs_rmap_get_rec(ptr noundef %cur, ptr noundef nonnull %gtrec, ptr noundef nonnull %have_gt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.then68.if.then251_crit_edge

if.then68.if.then251_crit_edge:                   ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then251

if.end72:                                         ; preds = %if.then68
  %56 = ptrtoint ptr %have_gt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %have_gt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp73.not = icmp eq i32 %57, 1
  br i1 %cmp73.not, label %if.end85, label %__here81, !prof !176

__here81:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !203
  call void @xfs_corruption_error(ptr noundef nonnull @.str.24, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 829, ptr noundef blockaddress(@xfs_rmap_map, %__here81)) #11
  br label %if.then251

if.end85:                                         ; preds = %if.end72
  %add86 = add i32 %len, %bno
  %58 = ptrtoint ptr %gtrec to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %gtrec, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add86, i32 %59)
  %cmp88 = icmp ugt i32 %add86, %59
  br i1 %cmp88, label %__here96, label %if.end100, !prof !196

__here96:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !204
  call void @xfs_corruption_error(ptr noundef nonnull @.str.25, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 833, ptr noundef blockaddress(@xfs_rmap_map, %__here96)) #11
  br label %if.then251

if.end100:                                        ; preds = %if.end85
  %60 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bc_mp, align 4
  %62 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %15, align 8
  %pag_agno103 = getelementptr inbounds %struct.xfs_perag, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %pag_agno103 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pag_agno103, align 4
  %rm_blockcount105 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 1
  %66 = ptrtoint ptr %rm_blockcount105 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rm_blockcount105, align 4
  %rm_owner106 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 2
  %68 = ptrtoint ptr %rm_owner106 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %rm_owner106, align 8
  %rm_offset107 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 3
  %70 = ptrtoint ptr %rm_offset107 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %rm_offset107, align 8
  %rm_flags108 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 4
  %72 = ptrtoint ptr %rm_flags108 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rm_flags108, align 8
  call fastcc void @trace_xfs_rmap_find_right_neighbor_result(ptr noundef %61, i32 noundef %65, i32 noundef %59, i32 noundef %67, i64 noundef %69, i64 noundef %71, i32 noundef %73)
  %74 = ptrtoint ptr %rm_owner106 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %rm_owner106, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %75)
  %cmp.i335 = icmp ne i64 %75, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %8)
  %cmp2.not.i336 = icmp eq i64 %75, %8
  %or.cond.i337 = and i1 %cmp.i335, %cmp2.not.i336
  br i1 %or.cond.i337, label %if.end4.i340, label %if.end100.if.then110_crit_edge

if.end100.if.then110_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then110

if.end4.i340:                                     ; preds = %if.end100
  %76 = ptrtoint ptr %rm_flags108 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rm_flags108, align 8
  %.masked = and i32 %77, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %.masked, i32 %spec.select)
  %78 = icmp eq i32 %.masked, %spec.select
  br i1 %78, label %if.end4.i340.if.end112_crit_edge, label %if.end4.i340.if.then110_crit_edge

if.end4.i340.if.then110_crit_edge:                ; preds = %if.end4.i340
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then110

if.end4.i340.if.end112_crit_edge:                 ; preds = %if.end4.i340
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.then110:                                       ; preds = %if.end4.i340.if.then110_crit_edge, %if.end100.if.then110_crit_edge
  %79 = ptrtoint ptr %have_gt to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %have_gt, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end4.i340.if.end112_crit_edge, %if.end66.if.end112_crit_edge
  %80 = ptrtoint ptr %have_lt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %have_lt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool113.not = icmp eq i32 %81, 0
  br i1 %tobool113.not, label %if.end112.if.else_crit_edge, label %land.lhs.true

if.end112.if.else_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end112
  %82 = ptrtoint ptr %ltrec to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ltrec, align 8
  %rm_blockcount115 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 1
  %84 = ptrtoint ptr %rm_blockcount115 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rm_blockcount115, align 4
  %add116 = add i32 %85, %83
  call void @__sanitizer_cov_trace_cmp4(i32 %add116, i32 %bno)
  %cmp117 = icmp eq i32 %add116, %bno
  br i1 %cmp117, label %land.lhs.true118, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true118:                                 ; preds = %land.lhs.true
  br i1 %14, label %land.lhs.true118.if.then125_crit_edge, label %lor.lhs.false

land.lhs.true118.if.then125_crit_edge:            ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then125

lor.lhs.false:                                    ; preds = %land.lhs.true118
  %rm_offset120 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 3
  %86 = ptrtoint ptr %rm_offset120 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %rm_offset120, align 8
  %conv = zext i32 %85 to i64
  %add122 = add i64 %87, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add122, i64 %10)
  %cmp123 = icmp eq i64 %add122, %10
  br i1 %cmp123, label %lor.lhs.false.if.then125_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

lor.lhs.false.if.then125_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then125

if.then125:                                       ; preds = %lor.lhs.false.if.then125_crit_edge, %land.lhs.true118.if.then125_crit_edge
  %add127 = add i32 %85, %len
  %88 = ptrtoint ptr %rm_blockcount115 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add127, ptr %rm_blockcount115, align 4
  %89 = ptrtoint ptr %have_gt to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %have_gt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool128.not = icmp eq i32 %90, 0
  br i1 %tobool128.not, label %if.then125.if.end179_crit_edge, label %land.lhs.true129

if.then125.if.end179_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179

land.lhs.true129:                                 ; preds = %if.then125
  %add130 = add i32 %len, %bno
  %91 = ptrtoint ptr %gtrec to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %gtrec, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add130, i32 %92)
  %cmp132 = icmp eq i32 %add130, %92
  br i1 %cmp132, label %land.lhs.true134, label %land.lhs.true129.if.end179_crit_edge

land.lhs.true129.if.end179_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179

land.lhs.true134:                                 ; preds = %land.lhs.true129
  br i1 %14, label %land.lhs.true134.if.then150_crit_edge, label %lor.lhs.false137

land.lhs.true134.if.then150_crit_edge:            ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then150

lor.lhs.false137:                                 ; preds = %land.lhs.true134
  %conv138 = zext i32 %len to i64
  %add139 = add i64 %10, %conv138
  %rm_offset140 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 3
  %93 = ptrtoint ptr %rm_offset140 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %rm_offset140, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add139, i64 %94)
  %cmp141 = icmp eq i64 %add139, %94
  br i1 %cmp141, label %lor.lhs.false137.if.then150_crit_edge, label %lor.lhs.false137.if.end179_crit_edge

lor.lhs.false137.if.end179_crit_edge:             ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179

lor.lhs.false137.if.then150_crit_edge:            ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then150

if.then150:                                       ; preds = %lor.lhs.false137.if.then150_crit_edge, %land.lhs.true134.if.then150_crit_edge
  %rm_blockcount146 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 1
  %95 = ptrtoint ptr %rm_blockcount146 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rm_blockcount146, align 4
  %add153 = add i32 %96, %add127
  %97 = ptrtoint ptr %rm_blockcount115 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add153, ptr %rm_blockcount115, align 4
  %98 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %15, align 8
  %pag_agno155 = getelementptr inbounds %struct.xfs_perag, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %pag_agno155 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pag_agno155, align 4
  %rm_owner158 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 2
  %102 = ptrtoint ptr %rm_owner158 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %rm_owner158, align 8
  %rm_offset159 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 3
  %104 = ptrtoint ptr %rm_offset159 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %rm_offset159, align 8
  %rm_flags160 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 4
  %106 = ptrtoint ptr %rm_flags160 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rm_flags160, align 8
  call fastcc void @trace_xfs_rmap_delete(ptr noundef %1, i32 noundef %101, i32 noundef %add130, i32 noundef %96, i64 noundef %103, i64 noundef %105, i32 noundef %107)
  %call161 = call i32 @xfs_btree_delete(ptr noundef %cur, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end164, label %if.then150.if.then251_crit_edge

if.then150.if.then251_crit_edge:                  ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then251

if.end164:                                        ; preds = %if.then150
  %108 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp165.not = icmp eq i32 %109, 1
  br i1 %cmp165.not, label %if.end164.if.end179_crit_edge, label %__here174, !prof !176

if.end164.if.end179_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179

__here174:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !205
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 886, ptr noundef blockaddress(@xfs_rmap_map, %__here174)) #11
  br label %if.then251

if.end179:                                        ; preds = %if.end164.if.end179_crit_edge, %lor.lhs.false137.if.end179_crit_edge, %land.lhs.true129.if.end179_crit_edge, %if.then125.if.end179_crit_edge
  %call180 = call i32 @xfs_btree_decrement(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %have_gt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end183, label %if.end179.if.then251_crit_edge

if.end179.if.then251_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then251

if.end183:                                        ; preds = %if.end179
  %call184 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef nonnull %ltrec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.end183.out_error_crit_edge, label %if.end183.if.then251_crit_edge

if.end183.if.then251_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then251

if.end183.out_error_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_error

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end112.if.else_crit_edge
  %110 = ptrtoint ptr %have_gt to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %have_gt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool188.not = icmp eq i32 %111, 0
  br i1 %tobool188.not, label %if.else.if.else215_crit_edge, label %land.lhs.true189

if.else.if.else215_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else215

land.lhs.true189:                                 ; preds = %if.else
  %add190 = add i32 %len, %bno
  %112 = ptrtoint ptr %gtrec to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %gtrec, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add190, i32 %113)
  %cmp192 = icmp eq i32 %add190, %113
  br i1 %cmp192, label %land.lhs.true194, label %land.lhs.true189.if.else215_crit_edge

land.lhs.true189.if.else215_crit_edge:            ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else215

land.lhs.true194:                                 ; preds = %land.lhs.true189
  br i1 %14, label %if.end210.critedge, label %lor.lhs.false197

lor.lhs.false197:                                 ; preds = %land.lhs.true194
  %conv198 = zext i32 %len to i64
  %add199 = add i64 %10, %conv198
  %rm_offset200 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 3
  %114 = ptrtoint ptr %rm_offset200 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %rm_offset200, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add199, i64 %115)
  %cmp201 = icmp eq i64 %add199, %115
  br i1 %cmp201, label %if.then208.critedge, label %lor.lhs.false197.if.else215_crit_edge

lor.lhs.false197.if.else215_crit_edge:            ; preds = %lor.lhs.false197
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else215

if.then208.critedge:                              ; preds = %lor.lhs.false197
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %gtrec to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %bno, ptr %gtrec, align 8
  %rm_blockcount205.c = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 1
  %117 = ptrtoint ptr %rm_blockcount205.c to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rm_blockcount205.c, align 4
  %add206.c = add i32 %118, %len
  store i32 %add206.c, ptr %rm_blockcount205.c, align 4
  %119 = ptrtoint ptr %rm_offset200 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %10, ptr %rm_offset200, align 8
  br label %if.end210

if.end210.critedge:                               ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %gtrec to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %bno, ptr %gtrec, align 8
  %rm_blockcount205.c329 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 1
  %121 = ptrtoint ptr %rm_blockcount205.c329 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rm_blockcount205.c329, align 4
  %add206.c330 = add i32 %122, %len
  store i32 %add206.c330, ptr %rm_blockcount205.c329, align 4
  br label %if.end210

if.end210:                                        ; preds = %if.end210.critedge, %if.then208.critedge
  %call211 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef nonnull %gtrec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.end210.out_error_crit_edge, label %if.end210.if.then251_crit_edge

if.end210.if.then251_crit_edge:                   ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then251

if.end210.out_error_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_error

if.else215:                                       ; preds = %lor.lhs.false197.if.else215_crit_edge, %land.lhs.true189.if.else215_crit_edge, %if.else.if.else215_crit_edge
  %123 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %bno, ptr %bc_rec.i, align 8
  %124 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %len, ptr %rm_blockcount.i, align 4
  %125 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %8, ptr %rm_owner.i, align 8
  %126 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %10, ptr %rm_offset.i, align 8
  %127 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %spec.select, ptr %rm_flags.i, align 8
  %128 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %15, align 8
  %pag_agno226 = getelementptr inbounds %struct.xfs_perag, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %pag_agno226 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pag_agno226, align 4
  call fastcc void @trace_xfs_rmap_insert(ptr noundef %1, i32 noundef %131, i32 noundef %bno, i32 noundef %len, i64 noundef %8, i64 noundef %10, i32 noundef %spec.select)
  %call227 = call i32 @xfs_btree_insert(ptr noundef %cur, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %if.end230, label %if.else215.if.then251_crit_edge

if.else215.if.then251_crit_edge:                  ; preds = %if.else215
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then251

if.end230:                                        ; preds = %if.else215
  %132 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %133)
  %cmp231.not = icmp eq i32 %133, 1
  br i1 %cmp231.not, label %if.end230.out_error_crit_edge, label %__here240, !prof !176

if.end230.out_error_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_error

__here240:                                        ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !206
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 933, ptr noundef blockaddress(@xfs_rmap_map, %__here240)) #11
  br label %if.then251

out_error:                                        ; preds = %if.end230.out_error_crit_edge, %if.end210.out_error_crit_edge, %if.end183.out_error_crit_edge
  %134 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %15, align 8
  %pag_agno248 = getelementptr inbounds %struct.xfs_perag, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %pag_agno248 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pag_agno248, align 4
  call fastcc void @trace_xfs_rmap_map_done(ptr noundef %1, i32 noundef %137, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo)
  br label %if.end254

if.then251:                                       ; preds = %__here240, %if.else215.if.then251_crit_edge, %if.end210.if.then251_crit_edge, %if.end183.if.then251_crit_edge, %if.end179.if.then251_crit_edge, %__here174, %if.then150.if.then251_crit_edge, %__here96, %__here81, %if.then68.if.then251_crit_edge, %if.end62.if.then251_crit_edge, %__here58, %__here, %if.then24.if.then251_crit_edge, %cond.end18.if.then251_crit_edge
  %error.1.ph = phi i32 [ -117, %__here240 ], [ %call227, %if.else215.if.then251_crit_edge ], [ %call211, %if.end210.if.then251_crit_edge ], [ %call184, %if.end183.if.then251_crit_edge ], [ %call180, %if.end179.if.then251_crit_edge ], [ -117, %__here174 ], [ %call161, %if.then150.if.then251_crit_edge ], [ -117, %__here96 ], [ -117, %__here81 ], [ %call69, %if.then68.if.then251_crit_edge ], [ %call63, %if.end62.if.then251_crit_edge ], [ -117, %__here58 ], [ -117, %__here ], [ %call25, %if.then24.if.then251_crit_edge ], [ %call.i, %cond.end18.if.then251_crit_edge ]
  %138 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %15, align 8
  %pag_agno253 = getelementptr inbounds %struct.xfs_perag, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %pag_agno253 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %pag_agno253, align 4
  %142 = call ptr @llvm.returnaddress(i32 0)
  %143 = ptrtoint ptr %142 to i32
  call fastcc void @trace_xfs_rmap_map_error(ptr noundef %1, i32 noundef %141, i32 noundef %error.1.ph, i32 noundef %143)
  br label %if.end254

if.end254:                                        ; preds = %if.then251, %out_error
  %error.1371 = phi i32 [ %error.1.ph, %if.then251 ], [ 0, %out_error ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %have_lt) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %have_gt) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gtrec) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ltrec) #11
  ret i32 %error.1371
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmap_map_raw(ptr noundef %cur, ptr nocapture noundef readonly %rmap) local_unnamed_addr #0 align 64 {
entry:
  %oinfo = alloca %struct.xfs_owner_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %oinfo) #11
  %0 = getelementptr inbounds i8, ptr %oinfo, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rmap, i32 0, i32 2
  %2 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rm_owner, align 8
  %4 = ptrtoint ptr %oinfo to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %oinfo, align 8
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rmap, i32 0, i32 3
  %5 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rm_offset, align 8
  %oi_offset = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 1
  %7 = ptrtoint ptr %oi_offset to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %oi_offset, align 8
  %oi_flags = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 2
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rmap, i32 0, i32 4
  %8 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rm_flags, align 8
  %and = and i32 %9, 1
  %10 = ptrtoint ptr %oi_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %oi_flags, align 8
  %and3 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end8, label %if.end8.thread

if.end8.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or7 = or i32 %and, 2
  %11 = ptrtoint ptr %oi_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or7, ptr %oi_flags, align 8
  br label %if.then14

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %3)
  %tobool13.not = icmp sgt i64 %3, -1
  %or.cond = select i1 %tobool10.not, i1 %tobool13.not, i1 false
  br i1 %or.cond, label %if.end18, label %if.end8.if.then14_crit_edge

if.end8.if.then14_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.then14:                                        ; preds = %if.end8.if.then14_crit_edge, %if.end8.thread
  %12 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmap, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rmap, i32 0, i32 1
  %14 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rm_blockcount, align 4
  %and16 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17 = icmp ne i32 %and16, 0
  %call = call fastcc i32 @xfs_rmap_map(ptr noundef %cur, i32 noundef %13, i32 noundef %15, i1 noundef zeroext %tobool17, ptr noundef nonnull %oinfo)
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rmap, align 8
  %rm_blockcount20 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rmap, i32 0, i32 1
  %18 = ptrtoint ptr %rm_blockcount20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rm_blockcount20, align 4
  %call24 = call fastcc i32 @xfs_rmap_map_shared(ptr noundef %cur, i32 noundef %17, i32 noundef %19, i1 noundef zeroext false, ptr noundef nonnull %oinfo)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then14
  %retval.0 = phi i32 [ %call, %if.then14 ], [ %call24, %if.end18 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %oinfo) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rmap_map_shared(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) #6 align 64 {
entry:
  %ltrec = alloca %struct.xfs_rmap_irec, align 8
  %gtrec = alloca %struct.xfs_rmap_irec, align 8
  %have_gt = alloca i32, align 4
  %have_lt = alloca i32, align 4
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ltrec) #11
  %2 = call ptr @memset(ptr %ltrec, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gtrec) #11
  %3 = call ptr @memset(ptr %gtrec, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %have_gt) #11
  %4 = ptrtoint ptr %have_gt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %have_gt, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %have_lt) #11
  %5 = ptrtoint ptr %have_lt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %have_lt, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #11
  %6 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %i, align 4, !annotation !175
  %7 = ptrtoint ptr %oinfo to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %oinfo, align 8
  %oi_offset.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 1
  %9 = ptrtoint ptr %oi_offset.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %oi_offset.i, align 8
  %oi_flags.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 2
  %11 = ptrtoint ptr %oi_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oi_flags.i, align 8
  %13 = and i32 %12, 3
  %or = or i32 %13, 4
  %spec.select = select i1 %unwritten, i32 %or, i32 %13
  %14 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_rmap_map(ptr noundef %1, i32 noundef %18, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo)
  %call = call i32 @xfs_rmap_find_left_neighbor(ptr noundef %cur, i32 noundef %bno, i64 noundef %8, i64 noundef %10, i32 noundef %spec.select, ptr noundef nonnull %ltrec, ptr noundef nonnull %have_lt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %entry.if.then148_crit_edge

entry.if.then148_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then148

if.end4:                                          ; preds = %entry
  %19 = ptrtoint ptr %have_lt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %have_lt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool5.not = icmp eq i32 %20, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %land.lhs.true

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end4
  %rm_owner.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 2
  %21 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %rm_owner.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %22)
  %cmp.i = icmp ne i64 %22, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %8)
  %cmp2.not.i = icmp eq i64 %22, %8
  %or.cond.i = and i1 %cmp.i, %cmp2.not.i
  br i1 %or.cond.i, label %if.end4.i, label %land.lhs.true.if.then7_crit_edge

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.end4.i:                                        ; preds = %land.lhs.true
  %rm_flags.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 4
  %23 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rm_flags.i, align 8
  %.masked248 = and i32 %24, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %.masked248, i32 %spec.select)
  %25 = icmp eq i32 %.masked248, %spec.select
  br i1 %25, label %if.end4.i.if.end8_crit_edge, label %if.end4.i.if.then7_crit_edge

if.end4.i.if.then7_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.end4.i.if.end8_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %if.end4.i.if.then7_crit_edge, %land.lhs.true.if.then7_crit_edge
  %26 = ptrtoint ptr %have_lt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %have_lt, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.i.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %add = add i32 %len, %bno
  %conv = zext i32 %len to i64
  %add9 = add i64 %10, %conv
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %27 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %bc_rec.i, align 8
  %rm_blockcount.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %bc_rec.i, i32 0, i32 1
  %28 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %len, ptr %rm_blockcount.i, align 4
  %rm_owner.i206 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 1
  %29 = ptrtoint ptr %rm_owner.i206 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %8, ptr %rm_owner.i206, align 8
  %rm_offset.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 2
  %30 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add9, ptr %rm_offset.i, align 8
  %rm_flags.i207 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 3
  %31 = ptrtoint ptr %rm_flags.i207 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.select, ptr %rm_flags.i207, align 8
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %have_gt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.if.then148_crit_edge

if.end8.if.then148_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then148

if.end13:                                         ; preds = %if.end8
  %32 = ptrtoint ptr %have_gt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %have_gt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool14.not = icmp eq i32 %33, 0
  br i1 %tobool14.not, label %if.end13.if.end31_crit_edge, label %if.then15

if.end13.if.end31_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then15:                                        ; preds = %if.end13
  %call16 = call i32 @xfs_rmap_get_rec(ptr noundef %cur, ptr noundef nonnull %gtrec, ptr noundef nonnull %have_gt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then15.if.then148_crit_edge

if.then15.if.then148_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then148

if.end19:                                         ; preds = %if.then15
  %34 = ptrtoint ptr %have_gt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %have_gt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.not = icmp eq i32 %35, 1
  br i1 %cmp.not, label %if.end24, label %__here, !prof !176

__here:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !207
  call void @xfs_corruption_error(ptr noundef nonnull @.str.24, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 2140, ptr noundef blockaddress(@xfs_rmap_map_shared, %__here)) #11
  br label %if.then148

if.end24:                                         ; preds = %if.end19
  %36 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bc_mp, align 4
  %38 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %14, align 8
  %pag_agno27 = getelementptr inbounds %struct.xfs_perag, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %pag_agno27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pag_agno27, align 4
  %42 = ptrtoint ptr %gtrec to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gtrec, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 1
  %44 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rm_blockcount, align 4
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 2
  %46 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %rm_owner, align 8
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 3
  %48 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %rm_offset, align 8
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 4
  %50 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rm_flags, align 8
  call fastcc void @trace_xfs_rmap_find_right_neighbor_result(ptr noundef %37, i32 noundef %41, i32 noundef %43, i32 noundef %45, i64 noundef %47, i64 noundef %49, i32 noundef %51)
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %47)
  %cmp.i209 = icmp ne i64 %47, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %8)
  %cmp2.not.i210 = icmp eq i64 %47, %8
  %or.cond.i211 = and i1 %cmp.i209, %cmp2.not.i210
  %.masked = and i32 %51, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %.masked, i32 %spec.select)
  %52 = icmp eq i32 %.masked, %spec.select
  %or.cond = select i1 %or.cond.i211, i1 %52, i1 false
  br i1 %or.cond, label %if.end24.if.end31_crit_edge, label %if.then29

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %have_gt to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %have_gt, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end24.if.end31_crit_edge, %if.end13.if.end31_crit_edge
  %54 = ptrtoint ptr %have_lt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %have_lt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool32.not = icmp eq i32 %55, 0
  br i1 %tobool32.not, label %if.end31.if.else_crit_edge, label %land.lhs.true33

if.end31.if.else_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true33:                                  ; preds = %if.end31
  %56 = ptrtoint ptr %ltrec to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ltrec, align 8
  %rm_blockcount35 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 1
  %58 = ptrtoint ptr %rm_blockcount35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rm_blockcount35, align 4
  %add36 = add i32 %59, %57
  call void @__sanitizer_cov_trace_cmp4(i32 %add36, i32 %bno)
  %cmp37 = icmp eq i32 %add36, %bno
  br i1 %cmp37, label %land.lhs.true39, label %land.lhs.true33.if.else_crit_edge

land.lhs.true33.if.else_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true39:                                  ; preds = %land.lhs.true33
  %rm_offset40 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 3
  %60 = ptrtoint ptr %rm_offset40 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %rm_offset40, align 8
  %conv42 = zext i32 %59 to i64
  %add43 = add i64 %61, %conv42
  call void @__sanitizer_cov_trace_cmp8(i64 %add43, i64 %10)
  %cmp44 = icmp eq i64 %add43, %10
  br i1 %cmp44, label %if.then46, label %land.lhs.true39.if.else_crit_edge

land.lhs.true39.if.else_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then46:                                        ; preds = %land.lhs.true39
  %add48 = add i32 %59, %len
  %62 = ptrtoint ptr %rm_blockcount35 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add48, ptr %rm_blockcount35, align 4
  %63 = ptrtoint ptr %have_gt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %have_gt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool49.not = icmp eq i32 %64, 0
  br i1 %tobool49.not, label %if.then46.if.end74_crit_edge, label %land.lhs.true50

if.then46.if.end74_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

land.lhs.true50:                                  ; preds = %if.then46
  %65 = ptrtoint ptr %gtrec to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %gtrec, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %66)
  %cmp53 = icmp eq i32 %add, %66
  br i1 %cmp53, label %land.lhs.true55, label %land.lhs.true50.if.end74_crit_edge

land.lhs.true50.if.end74_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

land.lhs.true55:                                  ; preds = %land.lhs.true50
  %rm_offset58 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 3
  %67 = ptrtoint ptr %rm_offset58 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %rm_offset58, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add9, i64 %68)
  %cmp59 = icmp eq i64 %add9, %68
  br i1 %cmp59, label %if.then61, label %land.lhs.true55.if.end74_crit_edge

land.lhs.true55.if.end74_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then61:                                        ; preds = %land.lhs.true55
  %rm_blockcount62 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 1
  %69 = ptrtoint ptr %rm_blockcount62 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rm_blockcount62, align 4
  %add64 = add i32 %70, %add48
  %71 = ptrtoint ptr %rm_blockcount35 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add64, ptr %rm_blockcount35, align 4
  %rm_owner67 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 2
  %72 = ptrtoint ptr %rm_owner67 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %rm_owner67, align 8
  %rm_flags69 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 4
  %74 = ptrtoint ptr %rm_flags69 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rm_flags69, align 8
  %call70 = call fastcc i32 @xfs_rmap_delete(ptr noundef %cur, i32 noundef %add, i32 noundef %70, i64 noundef %73, i64 noundef %add9, i32 noundef %75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then61.if.end74_crit_edge, label %if.then61.if.then148_crit_edge

if.then61.if.then148_crit_edge:                   ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then148

if.then61.if.end74_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.end74:                                         ; preds = %if.then61.if.end74_crit_edge, %land.lhs.true55.if.end74_crit_edge, %land.lhs.true50.if.end74_crit_edge, %if.then46.if.end74_crit_edge
  %76 = ptrtoint ptr %ltrec to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ltrec, align 8
  %78 = ptrtoint ptr %rm_blockcount35 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rm_blockcount35, align 4
  %rm_owner77 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 2
  %80 = ptrtoint ptr %rm_owner77 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %rm_owner77, align 8
  %82 = ptrtoint ptr %rm_offset40 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %rm_offset40, align 8
  %rm_flags79 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 4
  %84 = ptrtoint ptr %rm_flags79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rm_flags79, align 8
  %86 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %77, ptr %bc_rec.i, align 8
  %87 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %79, ptr %rm_blockcount.i, align 4
  %88 = ptrtoint ptr %rm_owner.i206 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %81, ptr %rm_owner.i206, align 8
  %89 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %83, ptr %rm_offset.i, align 8
  %90 = ptrtoint ptr %rm_flags.i207 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %85, ptr %rm_flags.i207, align 8
  %call.i225 = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %tobool81.not = icmp eq i32 %call.i225, 0
  br i1 %tobool81.not, label %if.end83, label %if.end74.if.then148_crit_edge

if.end74.if.then148_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then148

if.end83:                                         ; preds = %if.end74
  %91 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp84.not = icmp eq i32 %92, 1
  br i1 %cmp84.not, label %if.end97, label %__here93, !prof !176

__here93:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !208
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 2192, ptr noundef blockaddress(@xfs_rmap_map_shared, %__here93)) #11
  br label %if.then148

if.end97:                                         ; preds = %if.end83
  %call98 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef nonnull %ltrec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end97.out_error_crit_edge, label %if.end97.if.then148_crit_edge

if.end97.if.then148_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then148

if.end97.out_error_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_error

if.else:                                          ; preds = %land.lhs.true39.if.else_crit_edge, %land.lhs.true33.if.else_crit_edge, %if.end31.if.else_crit_edge
  %93 = ptrtoint ptr %have_gt to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %have_gt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool102.not = icmp eq i32 %94, 0
  br i1 %tobool102.not, label %if.else.if.else137_crit_edge, label %land.lhs.true103

if.else.if.else137_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else137

land.lhs.true103:                                 ; preds = %if.else
  %95 = ptrtoint ptr %gtrec to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %gtrec, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %96)
  %cmp106 = icmp eq i32 %add, %96
  br i1 %cmp106, label %land.lhs.true108, label %land.lhs.true103.if.else137_crit_edge

land.lhs.true103.if.else137_crit_edge:            ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else137

land.lhs.true108:                                 ; preds = %land.lhs.true103
  %rm_offset111 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 3
  %97 = ptrtoint ptr %rm_offset111 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %rm_offset111, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add9, i64 %98)
  %cmp112 = icmp eq i64 %add9, %98
  br i1 %cmp112, label %if.then114, label %land.lhs.true108.if.else137_crit_edge

land.lhs.true108.if.else137_crit_edge:            ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else137

if.then114:                                       ; preds = %land.lhs.true108
  %rm_blockcount116 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 1
  %99 = ptrtoint ptr %rm_blockcount116 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rm_blockcount116, align 4
  %rm_owner117 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 2
  %101 = ptrtoint ptr %rm_owner117 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %rm_owner117, align 8
  %rm_flags119 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %gtrec, i32 0, i32 4
  %103 = ptrtoint ptr %rm_flags119 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rm_flags119, align 8
  %call120 = call fastcc i32 @xfs_rmap_delete(ptr noundef %cur, i32 noundef %add, i32 noundef %100, i64 noundef %102, i64 noundef %add9, i32 noundef %104)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %if.then114.if.then148_crit_edge

if.then114.if.then148_crit_edge:                  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then148

if.end123:                                        ; preds = %if.then114
  %105 = ptrtoint ptr %gtrec to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %bno, ptr %gtrec, align 8
  %106 = ptrtoint ptr %rm_blockcount116 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rm_blockcount116, align 4
  %add126 = add i32 %107, %len
  store i32 %add126, ptr %rm_blockcount116, align 4
  %108 = ptrtoint ptr %rm_owner117 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %rm_owner117, align 8
  %110 = ptrtoint ptr %rm_flags119 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rm_flags119, align 8
  %call133 = call i32 @xfs_rmap_insert(ptr noundef %cur, i32 noundef %bno, i32 noundef %add126, i64 noundef %109, i64 noundef %10, i32 noundef %111)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end123.out_error_crit_edge, label %if.end123.if.then148_crit_edge

if.end123.if.then148_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then148

if.end123.out_error_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_error

if.else137:                                       ; preds = %land.lhs.true108.if.else137_crit_edge, %land.lhs.true103.if.else137_crit_edge, %if.else.if.else137_crit_edge
  %call138 = call i32 @xfs_rmap_insert(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, i64 noundef %8, i64 noundef %10, i32 noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.else137.out_error_crit_edge, label %if.else137.if.then148_crit_edge

if.else137.if.then148_crit_edge:                  ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then148

if.else137.out_error_crit_edge:                   ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_error

out_error:                                        ; preds = %if.else137.out_error_crit_edge, %if.end123.out_error_crit_edge, %if.end97.out_error_crit_edge
  %112 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %14, align 8
  %pag_agno145 = getelementptr inbounds %struct.xfs_perag, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %pag_agno145 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pag_agno145, align 4
  call fastcc void @trace_xfs_rmap_map_done(ptr noundef %1, i32 noundef %115, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo)
  br label %if.end152

if.then148:                                       ; preds = %if.else137.if.then148_crit_edge, %if.end123.if.then148_crit_edge, %if.then114.if.then148_crit_edge, %if.end97.if.then148_crit_edge, %__here93, %if.end74.if.then148_crit_edge, %if.then61.if.then148_crit_edge, %__here, %if.then15.if.then148_crit_edge, %if.end8.if.then148_crit_edge, %entry.if.then148_crit_edge
  %error.1.ph = phi i32 [ %call138, %if.else137.if.then148_crit_edge ], [ %call133, %if.end123.if.then148_crit_edge ], [ %call120, %if.then114.if.then148_crit_edge ], [ %call98, %if.end97.if.then148_crit_edge ], [ -117, %__here93 ], [ %call.i225, %if.end74.if.then148_crit_edge ], [ %call70, %if.then61.if.then148_crit_edge ], [ -117, %__here ], [ %call16, %if.then15.if.then148_crit_edge ], [ %call.i, %if.end8.if.then148_crit_edge ], [ %call, %entry.if.then148_crit_edge ]
  %116 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bc_mp, align 4
  %118 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %14, align 8
  %pag_agno151 = getelementptr inbounds %struct.xfs_perag, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %pag_agno151 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pag_agno151, align 4
  %122 = call ptr @llvm.returnaddress(i32 0)
  %123 = ptrtoint ptr %122 to i32
  call fastcc void @trace_xfs_rmap_map_error(ptr noundef %117, i32 noundef %121, i32 noundef %error.1.ph, i32 noundef %123)
  br label %if.end152

if.end152:                                        ; preds = %if.then148, %out_error
  %error.1246 = phi i32 [ %error.1.ph, %if.then148 ], [ 0, %out_error ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %have_lt) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %have_gt) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gtrec) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ltrec) #11
  ret i32 %error.1246
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_query_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_rmap_query_range_helper(ptr noundef %cur, ptr nocapture noundef readonly %rec, ptr nocapture noundef readonly %priv) #6 align 64 {
entry:
  %irec = alloca %struct.xfs_rmap_irec, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %irec) #11
  %0 = getelementptr inbounds i8, ptr %irec, i32 24
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %2 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rec, align 8
  %4 = ptrtoint ptr %irec to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %irec, align 8
  %rm_blockcount.i = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 1
  %5 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rm_blockcount.i, align 4
  %rm_blockcount2.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 1
  %7 = ptrtoint ptr %rm_blockcount2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rm_blockcount2.i, align 4
  %rm_owner.i = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 2
  %8 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rm_owner.i, align 8
  %rm_owner3.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 2
  %10 = ptrtoint ptr %rm_owner3.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %rm_owner3.i, align 8
  %rm_offset.i = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 3
  %11 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rm_offset.i, align 8
  %and.i.i = and i64 %12, 2287828610704211968
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i.i = and i64 %12, 18014398509481983
  %rm_offset.i.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 3
  %13 = ptrtoint ptr %rm_offset.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %and1.i.i, ptr %rm_offset.i.i, align 8
  %rm_flags.i.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 4
  %offset.lobit.i.i = lshr i64 %12, 63
  %14 = trunc i64 %offset.lobit.i.i to i32
  %and7.i.i = lshr i64 %12, 61
  %15 = trunc i64 %and7.i.i to i32
  %16 = and i32 %15, 2
  %17 = or i32 %16, %14
  %and13.i.i = lshr i64 %12, 59
  %18 = trunc i64 %and13.i.i to i32
  %19 = and i32 %18, 4
  %20 = or i32 %19, %17
  %21 = ptrtoint ptr %rm_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rm_flags.i.i, align 8
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %priv1 = getelementptr inbounds %struct.xfs_rmap_query_range_info, ptr %priv, i32 0, i32 1
  %24 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv1, align 4
  %call2 = call i32 %23(ptr noundef %cur, ptr noundef nonnull %irec, ptr noundef %25) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end.i.i ], [ -117, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %irec) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmap_query_all(ptr noundef %cur, ptr noundef %fn, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %query = alloca %struct.xfs_rmap_query_range_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %query) #11
  %0 = getelementptr inbounds %struct.xfs_rmap_query_range_info, ptr %query, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %priv, ptr %0, align 4
  %2 = ptrtoint ptr %query to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fn, ptr %query, align 4
  %call = call i32 @xfs_btree_query_all(ptr noundef %cur, ptr noundef nonnull @xfs_rmap_query_range_helper, ptr noundef nonnull %query) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %query) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_query_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_rmap_finish_one_cleanup(ptr noundef %tp, ptr noundef %rcur, i32 noundef %error) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %rcur, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 10, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @xfs_btree_del_cursor(ptr noundef nonnull %rcur, i32 noundef %error) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmap_finish_one(ptr noundef %tp, i32 noundef %type, i64 noundef %owner, i32 noundef %whichfork, i64 noundef %startoff, i64 noundef %startblock, i64 noundef %blockcount, i32 noundef %state, ptr nocapture noundef %pcur) #0 align 64 {
entry:
  %agbp = alloca ptr, align 4
  %oinfo = alloca %struct.xfs_owner_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agbp) #11
  %2 = ptrtoint ptr %agbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %agbp, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %oinfo) #11
  %3 = call ptr @memset(ptr %oinfo, i32 255, i32 24)
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %5 to i64
  %shr = lshr i64 %startblock, %sh_prom
  %conv1 = trunc i64 %shr to i32
  %call = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %conv1) #11
  %6 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sb_agblklog, align 4
  %conv4 = zext i8 %7 to i32
  %notmask.i = shl nsw i32 -1, %conv4
  %sub.i = xor i32 %notmask.i, -1
  %8 = trunc i64 %startblock to i32
  %conv7 = and i32 %sub.i, %8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_rmap_deferred(ptr noundef %1, i32 noundef %10, i32 noundef %type, i32 noundef %conv7, i64 noundef %owner, i32 noundef %whichfork, i64 noundef %startoff, i64 noundef %blockcount, i32 noundef %state)
  %call8 = tail call zeroext i1 @xfs_errortag_test(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 2383, i32 noundef 23) #11
  br i1 %call8, label %entry.out_drop_crit_edge, label %if.end

entry.out_drop_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %pcur to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcur, align 4
  %cmp.not = icmp eq ptr %12, null
  br i1 %cmp.not, label %if.end.if.then18_crit_edge, label %land.lhs.true

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

land.lhs.true:                                    ; preds = %if.end
  %13 = getelementptr inbounds %struct.xfs_btree_cur, ptr %12, i32 0, i32 10
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %cmp12.not = icmp eq ptr %15, %call
  br i1 %cmp12.not, label %land.lhs.true.if.end30_crit_edge, label %xfs_rmap_finish_one_cleanup.exit

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

xfs_rmap_finish_one_cleanup.exit:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_btree_del_cursor(ptr noundef nonnull %12, i32 noundef 0) #11
  %16 = ptrtoint ptr %pcur to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pcur, align 4
  br label %if.then18

if.then18:                                        ; preds = %xfs_rmap_finish_one_cleanup.exit, %if.end.if.then18_crit_edge
  %call19 = call i32 @xfs_free_extent_fix_freelist(ptr noundef %tp, ptr noundef %call, ptr noundef nonnull %agbp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.end21, label %if.then18.out_drop_crit_edge

if.then18.out_drop_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop

if.end21:                                         ; preds = %if.then18
  %17 = ptrtoint ptr %agbp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %agbp, align 4
  %tobool22.not = icmp eq ptr %18, null
  br i1 %tobool22.not, label %__here, label %if.end28, !prof !196

__here:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t_mountp, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !209
  call void @xfs_corruption_error(ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef %20, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 2408, ptr noundef blockaddress(@xfs_rmap_finish_one, %__here)) #11
  br label %out_drop

if.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = call ptr @xfs_rmapbt_init_cursor(ptr noundef %1, ptr noundef %tp, ptr noundef nonnull %18, ptr noundef %call) #11
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %land.lhs.true.if.end30_crit_edge
  %rcur.1 = phi ptr [ %call29, %if.end28 ], [ %12, %land.lhs.true.if.end30_crit_edge ]
  %21 = ptrtoint ptr %pcur to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rcur.1, ptr %pcur, align 4
  %22 = ptrtoint ptr %oinfo to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %owner, ptr %oinfo, align 8
  %oi_offset.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 1
  %23 = ptrtoint ptr %oi_offset.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %startoff, ptr %oi_offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp.i118 = icmp eq i32 %whichfork, 1
  %spec.select.i = zext i1 %cmp.i118 to i32
  %oi_flags.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 2
  %24 = ptrtoint ptr %oi_flags.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select.i, ptr %oi_flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp31 = icmp eq i32 %state, 1
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur.1, i32 0, i32 1
  %25 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bc_mp, align 4
  %sb_agblklog34 = getelementptr inbounds %struct.xfs_sb, ptr %26, i32 0, i32 24
  %27 = ptrtoint ptr %sb_agblklog34 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sb_agblklog34, align 4
  %conv35 = zext i8 %28 to i32
  %notmask.i119 = shl nsw i32 -1, %conv35
  %sub.i120 = xor i32 %notmask.i119, -1
  %conv39 = and i32 %sub.i120, %8
  %29 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %type, label %sw.default [
    i32 6, label %if.end30.sw.bb_crit_edge
    i32 0, label %if.end30.sw.bb_crit_edge123
    i32 1, label %sw.bb43
    i32 7, label %if.end30.sw.bb47_crit_edge
    i32 2, label %if.end30.sw.bb47_crit_edge124
    i32 3, label %sw.bb51
    i32 4, label %sw.bb55
    i32 5, label %sw.bb61
  ]

if.end30.sw.bb47_crit_edge124:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb47

if.end30.sw.bb47_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb47

if.end30.sw.bb_crit_edge123:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end30.sw.bb_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end30.sw.bb_crit_edge, %if.end30.sw.bb_crit_edge123
  %conv40 = trunc i64 %blockcount to i32
  %call42 = call fastcc i32 @xfs_rmap_map(ptr noundef %rcur.1, i32 noundef %conv39, i32 noundef %conv40, i1 noundef zeroext %cmp31, ptr noundef nonnull %oinfo)
  br label %out_drop

sw.bb43:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %conv44 = trunc i64 %blockcount to i32
  %call46 = call fastcc i32 @xfs_rmap_map_shared(ptr noundef %rcur.1, i32 noundef %conv39, i32 noundef %conv44, i1 noundef zeroext %cmp31, ptr noundef nonnull %oinfo)
  br label %out_drop

sw.bb47:                                          ; preds = %if.end30.sw.bb47_crit_edge, %if.end30.sw.bb47_crit_edge124
  %conv48 = trunc i64 %blockcount to i32
  %call50 = call fastcc i32 @xfs_rmap_unmap(ptr noundef %rcur.1, i32 noundef %conv39, i32 noundef %conv48, i1 noundef zeroext %cmp31, ptr noundef nonnull %oinfo)
  br label %out_drop

sw.bb51:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %conv52 = trunc i64 %blockcount to i32
  %call54 = call fastcc i32 @xfs_rmap_unmap_shared(ptr noundef %rcur.1, i32 noundef %conv39, i32 noundef %conv52, i1 noundef zeroext %cmp31, ptr noundef nonnull %oinfo)
  br label %out_drop

sw.bb55:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %conv56 = trunc i64 %blockcount to i32
  %lnot58 = xor i1 %cmp31, true
  %call60 = call fastcc i32 @xfs_rmap_convert(ptr noundef %rcur.1, i32 noundef %conv39, i32 noundef %conv56, i1 noundef zeroext %lnot58, ptr noundef nonnull %oinfo)
  br label %out_drop

sw.bb61:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %conv62 = trunc i64 %blockcount to i32
  %lnot64 = xor i1 %cmp31, true
  %call66 = call fastcc i32 @xfs_rmap_convert_shared(ptr noundef %rcur.1, i32 noundef %conv39, i32 noundef %conv62, i1 noundef zeroext %lnot64, ptr noundef nonnull %oinfo)
  br label %out_drop

sw.default:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 2448) #11
  br label %out_drop

out_drop:                                         ; preds = %sw.default, %sw.bb61, %sw.bb55, %sw.bb51, %sw.bb47, %sw.bb43, %sw.bb, %__here, %if.then18.out_drop_crit_edge, %entry.out_drop_crit_edge
  %error.0 = phi i32 [ %call19, %if.then18.out_drop_crit_edge ], [ -117, %__here ], [ -117, %sw.default ], [ %call66, %sw.bb61 ], [ %call60, %sw.bb55 ], [ %call54, %sw.bb51 ], [ %call50, %sw.bb47 ], [ %call46, %sw.bb43 ], [ %call42, %sw.bb ], [ -5, %entry.out_drop_crit_edge ]
  call void @xfs_perag_put(ptr noundef %call) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %oinfo) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agbp) #11
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_deferred(ptr noundef %mp, i32 noundef %agno, i32 noundef %op, i32 noundef %agbno, i64 noundef %ino, i32 noundef %whichfork, i64 noundef %offset, i64 noundef %len, i32 noundef %state) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_deferred, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_deferred, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !210
  %call42 = tail call i32 @__traceiter_xfs_rmap_deferred(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %op, i32 noundef %agbno, i64 noundef %ino, i32 noundef %whichfork, i64 noundef %offset, i64 noundef %len, i32 noundef %state) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !211
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_deferred, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_deferred, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_rmap_deferred.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_deferred.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2811, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
declare dso_local zeroext i1 @xfs_errortag_test(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_free_extent_fix_freelist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rmap_unmap_shared(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) #6 align 64 {
entry:
  %ltrec = alloca %struct.xfs_rmap_irec, align 8
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ltrec) #11
  %2 = call ptr @memset(ptr %ltrec, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #11
  %3 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %i, align 4, !annotation !175
  %4 = ptrtoint ptr %oinfo to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %oinfo, align 8
  %oi_offset.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 1
  %6 = ptrtoint ptr %oi_offset.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %oi_offset.i, align 8
  %oi_flags.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 2
  %8 = ptrtoint ptr %oi_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oi_flags.i, align 8
  %10 = and i32 %9, 3
  %or = or i32 %10, 4
  %spec.select = select i1 %unwritten, i32 %or, i32 %10
  %11 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_rmap_unmap(ptr noundef %1, i32 noundef %15, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo)
  %call = call i32 @xfs_rmap_lookup_le_range(ptr noundef %cur, i32 noundef %bno, i64 noundef %5, i64 noundef %7, i32 noundef %spec.select, ptr noundef nonnull %ltrec, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %entry.if.then214_crit_edge

entry.if.then214_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then214

if.end4:                                          ; preds = %entry
  %16 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.not = icmp eq i32 %17, 1
  br i1 %cmp.not, label %if.end8, label %__here, !prof !176

__here:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !212
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1942, ptr noundef blockaddress(@xfs_rmap_unmap_shared, %__here)) #11
  br label %if.then214

if.end8:                                          ; preds = %if.end4
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 3
  %18 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rm_offset, align 8
  %20 = ptrtoint ptr %ltrec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ltrec, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %bno)
  %cmp9 = icmp ugt i32 %21, %bno
  br i1 %cmp9, label %if.end8.__here20_crit_edge, label %lor.rhs, !prof !196

if.end8.__here20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here20

lor.rhs:                                          ; preds = %if.end8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 1
  %22 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rm_blockcount, align 4
  %add = add i32 %23, %21
  %add11 = add i32 %len, %bno
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add11)
  %cmp12 = icmp ult i32 %add, %add11
  br i1 %cmp12, label %lor.rhs.__here20_crit_edge, label %if.end24, !prof !196

lor.rhs.__here20_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here20

__here20:                                         ; preds = %lor.rhs.__here20_crit_edge, %if.end8.__here20_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !213
  call void @xfs_corruption_error(ptr noundef nonnull @.str.14, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1952, ptr noundef blockaddress(@xfs_rmap_unmap_shared, %__here20)) #11
  br label %if.then214

if.end24:                                         ; preds = %lor.rhs
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 2
  %24 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %25)
  %cmp25.not = icmp eq i64 %5, %25
  br i1 %cmp25.not, label %if.end37, label %__here33, !prof !176

__here33:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !214
  call void @xfs_corruption_error(ptr noundef nonnull @.str.26, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1958, ptr noundef blockaddress(@xfs_rmap_unmap_shared, %__here33)) #11
  br label %if.then214

if.end37:                                         ; preds = %if.end24
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %ltrec, i32 0, i32 4
  %26 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rm_flags, align 8
  %28 = xor i32 %27, %spec.select
  %29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp39.not = icmp eq i32 %29, 0
  br i1 %cmp39.not, label %if.end51, label %__here47, !prof !176

__here47:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !215
  call void @xfs_corruption_error(ptr noundef nonnull @.str.27, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1966, ptr noundef blockaddress(@xfs_rmap_unmap_shared, %__here47)) #11
  br label %if.then214

if.end51:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %7)
  %cmp53 = icmp ugt i64 %19, %7
  br i1 %cmp53, label %__here61, label %if.end65, !prof !196

__here61:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !216
  call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1972, ptr noundef blockaddress(@xfs_rmap_unmap_shared, %__here61)) #11
  br label %if.then214

if.end65:                                         ; preds = %if.end51
  %conv = zext i32 %23 to i64
  %add67 = add i64 %19, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %add67)
  %cmp68 = icmp ugt i64 %7, %add67
  br i1 %cmp68, label %__here77, label %if.end81, !prof !196

__here77:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !217
  call void @xfs_corruption_error(ptr noundef nonnull @.str.29, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1976, ptr noundef blockaddress(@xfs_rmap_unmap_shared, %__here77)) #11
  br label %if.then214

if.end81:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %bno)
  %cmp83 = icmp eq i32 %21, %bno
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %len)
  %cmp86 = icmp eq i32 %23, %len
  %or.cond = select i1 %cmp83, i1 %cmp86, i1 false
  br i1 %or.cond, label %if.then88, label %if.else

if.then88:                                        ; preds = %if.end81
  %call94 = call fastcc i32 @xfs_rmap_delete(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, i64 noundef %5, i64 noundef %19, i32 noundef %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.then88.out_error_crit_edge, label %if.then88.if.then214_crit_edge

if.then88.if.then214_crit_edge:                   ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then214

if.then88.out_error_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_error

if.else:                                          ; preds = %if.end81
  br i1 %cmp83, label %if.then101, label %if.else126

if.then101:                                       ; preds = %if.else
  %call107 = call fastcc i32 @xfs_rmap_delete(ptr noundef %cur, i32 noundef %bno, i32 noundef %23, i64 noundef %5, i64 noundef %19, i32 noundef %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %if.then101.if.then214_crit_edge

if.then101.if.then214_crit_edge:                  ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then214

if.end110:                                        ; preds = %if.then101
  %30 = ptrtoint ptr %ltrec to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ltrec, align 8
  %add112 = add i32 %31, %len
  store i32 %add112, ptr %ltrec, align 8
  %32 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rm_blockcount, align 4
  %sub = sub i32 %33, %len
  store i32 %sub, ptr %rm_blockcount, align 4
  %conv114 = zext i32 %len to i64
  %34 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %rm_offset, align 8
  %add116 = add i64 %35, %conv114
  store i64 %add116, ptr %rm_offset, align 8
  %36 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %rm_owner, align 8
  %38 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rm_flags, align 8
  %call122 = call i32 @xfs_rmap_insert(ptr noundef %cur, i32 noundef %add112, i32 noundef %sub, i64 noundef %37, i64 noundef %add116, i32 noundef %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end110.out_error_crit_edge, label %if.end110.if.then214_crit_edge

if.end110.if.then214_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then214

if.end110.out_error_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_error

if.else126:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add11)
  %cmp131 = icmp eq i32 %add, %add11
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %40 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %21, ptr %bc_rec.i, align 8
  %rm_blockcount.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %bc_rec.i, i32 0, i32 1
  %41 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %23, ptr %rm_blockcount.i, align 4
  %rm_owner.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 1
  %42 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %5, ptr %rm_owner.i, align 8
  %rm_offset.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 2
  %43 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %19, ptr %rm_offset.i, align 8
  %rm_flags.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 3
  %44 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %27, ptr %rm_flags.i, align 8
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool140.not = icmp eq i32 %call.i, 0
  br i1 %cmp131, label %if.then133, label %if.else163

if.then133:                                       ; preds = %if.else126
  br i1 %tobool140.not, label %if.end142, label %if.then133.if.then214_crit_edge

if.then133.if.then214_crit_edge:                  ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then214

if.end142:                                        ; preds = %if.then133
  %45 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp143.not = icmp eq i32 %46, 1
  br i1 %cmp143.not, label %if.end156, label %__here152, !prof !176

__here152:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !218
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 2032, ptr noundef blockaddress(@xfs_rmap_unmap_shared, %__here152)) #11
  br label %if.then214

if.end156:                                        ; preds = %if.end142
  %47 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rm_blockcount, align 4
  %sub158 = sub i32 %48, %len
  store i32 %sub158, ptr %rm_blockcount, align 4
  %call159 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef nonnull %ltrec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end156.out_error_crit_edge, label %if.end156.if.then214_crit_edge

if.end156.if.then214_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then214

if.end156.out_error_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_error

if.else163:                                       ; preds = %if.else126
  br i1 %tobool140.not, label %if.end173, label %if.else163.if.then214_crit_edge

if.else163.if.then214_crit_edge:                  ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then214

if.end173:                                        ; preds = %if.else163
  %49 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp174.not = icmp eq i32 %50, 1
  br i1 %cmp174.not, label %if.end187, label %__here183, !prof !176

__here183:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !219
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 2061, ptr noundef blockaddress(@xfs_rmap_unmap_shared, %__here183)) #11
  br label %if.then214

if.end187:                                        ; preds = %if.end173
  %51 = ptrtoint ptr %ltrec to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ltrec, align 8
  %sub189 = sub i32 %bno, %52
  %53 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub189, ptr %rm_blockcount, align 4
  %call191 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef nonnull %ltrec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end194, label %if.end187.if.then214_crit_edge

if.end187.if.then214_crit_edge:                   ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then214

if.end194:                                        ; preds = %if.end187
  %54 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rm_blockcount, align 4
  %56 = add i32 %55, %len
  %sub198 = sub i32 %23, %56
  %57 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %rm_owner, align 8
  %conv200 = zext i32 %len to i64
  %add201 = add i64 %7, %conv200
  %59 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rm_flags, align 8
  %call203 = call i32 @xfs_rmap_insert(ptr noundef %cur, i32 noundef %add11, i32 noundef %sub198, i64 noundef %58, i64 noundef %add201, i32 noundef %60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.end194.out_error_crit_edge, label %if.end194.if.then214_crit_edge

if.end194.if.then214_crit_edge:                   ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then214

if.end194.out_error_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_error

out_error:                                        ; preds = %if.end194.out_error_crit_edge, %if.end156.out_error_crit_edge, %if.end110.out_error_crit_edge, %if.then88.out_error_crit_edge
  %61 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %11, align 8
  %pag_agno211 = getelementptr inbounds %struct.xfs_perag, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %pag_agno211 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pag_agno211, align 4
  call fastcc void @trace_xfs_rmap_unmap_done(ptr noundef %1, i32 noundef %64, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo)
  br label %cleanup219

if.then214:                                       ; preds = %if.end194.if.then214_crit_edge, %if.end187.if.then214_crit_edge, %__here183, %if.else163.if.then214_crit_edge, %if.end156.if.then214_crit_edge, %__here152, %if.then133.if.then214_crit_edge, %if.end110.if.then214_crit_edge, %if.then101.if.then214_crit_edge, %if.then88.if.then214_crit_edge, %__here77, %__here61, %__here47, %__here33, %__here20, %__here, %entry.if.then214_crit_edge
  %error.2.ph = phi i32 [ %call159, %if.end156.if.then214_crit_edge ], [ -117, %__here152 ], [ %call.i, %if.then133.if.then214_crit_edge ], [ %call122, %if.end110.if.then214_crit_edge ], [ %call107, %if.then101.if.then214_crit_edge ], [ %call94, %if.then88.if.then214_crit_edge ], [ -117, %__here77 ], [ -117, %__here61 ], [ -117, %__here47 ], [ -117, %__here33 ], [ -117, %__here20 ], [ -117, %__here ], [ %call, %entry.if.then214_crit_edge ], [ %call203, %if.end194.if.then214_crit_edge ], [ %call191, %if.end187.if.then214_crit_edge ], [ %call.i, %if.else163.if.then214_crit_edge ], [ -117, %__here183 ]
  %65 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bc_mp, align 4
  %67 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %11, align 8
  %pag_agno217 = getelementptr inbounds %struct.xfs_perag, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %pag_agno217 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pag_agno217, align 4
  %71 = call ptr @llvm.returnaddress(i32 0)
  %72 = ptrtoint ptr %71 to i32
  call fastcc void @trace_xfs_rmap_unmap_error(ptr noundef %66, i32 noundef %70, i32 noundef %error.2.ph, i32 noundef %72)
  br label %cleanup219

cleanup219:                                       ; preds = %if.then214, %out_error
  %error.2308 = phi i32 [ 0, %out_error ], [ %error.2.ph, %if.then214 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ltrec) #11
  ret i32 %error.2308
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rmap_convert(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) #6 align 64 {
entry:
  %r = alloca [4 x %struct.xfs_rmap_irec], align 8
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %r) #11
  %2 = call ptr @memset(ptr %r, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #11
  %3 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %i, align 4, !annotation !175
  %4 = ptrtoint ptr %oinfo to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %oinfo, align 8
  %oi_offset.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 1
  %6 = ptrtoint ptr %oi_offset.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %oi_offset.i, align 8
  %oi_flags.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 2
  %8 = ptrtoint ptr %oi_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oi_flags.i, align 8
  %10 = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp slt i64 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2 = icmp ne i32 %10, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2
  br i1 %or.cond, label %cond.false, label %entry.cond.end_crit_edge, !prof !220

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1014) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = select i1 %unwritten, i32 4, i32 0
  %conv = zext i32 %len to i64
  %add = add i64 %7, %conv
  %11 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_rmap_convert(ptr noundef %1, i32 noundef %15, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo)
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %16 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bno, ptr %bc_rec.i, align 8
  %rm_blockcount.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %bc_rec.i, i32 0, i32 1
  %17 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %len, ptr %rm_blockcount.i, align 4
  %rm_owner.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 1
  %18 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %5, ptr %rm_owner.i, align 8
  %rm_offset.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 2
  %19 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %7, ptr %rm_offset.i, align 8
  %rm_flags.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 3
  %20 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %rm_flags.i, align 8
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 1, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end, label %cond.end.if.then886_crit_edge

cond.end.if.then886_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end:                                           ; preds = %cond.end
  %21 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.not = icmp eq i32 %22, 1
  br i1 %cmp.not, label %if.end19, label %__here, !prof !176

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !221
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1028, ptr noundef blockaddress(@xfs_rmap_convert, %__here)) #11
  br label %if.then886

if.end19:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 2
  %call20 = call i32 @xfs_rmap_get_rec(ptr noundef %cur, ptr noundef %arrayidx, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.if.then886_crit_edge

if.end19.if.then886_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end23:                                         ; preds = %if.end19
  %23 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp24.not = icmp eq i32 %24, 1
  br i1 %cmp24.not, label %if.end37, label %__here33, !prof !176

__here33:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !222
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1036, ptr noundef blockaddress(@xfs_rmap_convert, %__here33)) #11
  br label %if.then886

if.end37:                                         ; preds = %if.end23
  %25 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bc_mp, align 4
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %11, align 8
  %pag_agno40 = getelementptr inbounds %struct.xfs_perag, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pag_agno40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pag_agno40, align 4
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 8
  %rm_blockcount = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rm_blockcount, align 4
  %rm_owner = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %rm_owner, align 8
  %rm_offset = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %rm_offset, align 8
  %rm_flags = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rm_flags, align 8
  call fastcc void @trace_xfs_rmap_lookup_le_range_result(ptr noundef %26, i32 noundef %30, i32 noundef %32, i32 noundef %34, i64 noundef %36, i64 noundef %38, i32 noundef %40)
  %41 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %rm_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %7)
  %cmp48.not = icmp ugt i64 %42, %7
  br i1 %cmp48.not, label %cond.false57, label %if.end37.cond.end58_crit_edge, !prof !196

if.end37.cond.end58_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end58

cond.false57:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 1045) #11
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false57, %if.end37.cond.end58_crit_edge
  %43 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %rm_offset, align 8
  %45 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rm_blockcount, align 4
  %conv63 = zext i32 %46 to i64
  %add64 = add i64 %44, %conv63
  call void @__sanitizer_cov_trace_cmp8(i64 %add64, i64 %add)
  %cmp65.not = icmp ult i64 %add64, %add
  br i1 %cmp65.not, label %cond.false74, label %cond.end58.cond.end75_crit_edge, !prof !196

cond.end58.cond.end75_crit_edge:                  ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end75

cond.false74:                                     ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 1046) #11
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false74, %cond.end58.cond.end75_crit_edge
  %47 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rm_flags, align 8
  %and78 = and i32 %48, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and78, i32 %cond)
  %cmp79 = icmp eq i32 %and78, %cond
  br i1 %cmp79, label %cond.end75.cond.end89_crit_edge, label %cond.false88, !prof !176

cond.end75.cond.end89_crit_edge:                  ; preds = %cond.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end89

cond.false88:                                     ; preds = %cond.end75
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1047) #11
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false88, %cond.end75.cond.end89_crit_edge
  %and90 = xor i32 %cond, 4
  %49 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %rm_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %7)
  %cmp93 = icmp eq i64 %50, %7
  %spec.select = select i1 %cmp93, i32 4, i32 0
  %51 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rm_blockcount, align 4
  %conv101 = zext i32 %52 to i64
  %add102 = add i64 %50, %conv101
  call void @__sanitizer_cov_trace_cmp8(i64 %add102, i64 %add)
  %cmp103 = icmp eq i64 %add102, %add
  %or106 = or i32 %spec.select, 8
  %state.1 = select i1 %cmp103, i32 %or106, i32 %spec.select
  %call108 = call i32 @xfs_btree_decrement(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %cond.end89.if.then886_crit_edge

cond.end89.if.then886_crit_edge:                  ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end111:                                        ; preds = %cond.end89
  %53 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool112.not = icmp eq i32 %54, 0
  br i1 %tobool112.not, label %if.end111.if.end188_crit_edge, label %if.then113

if.end111.if.end188_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188

if.then113:                                       ; preds = %if.end111
  %or114 = or i32 %state.1, 64
  %call116 = call i32 @xfs_rmap_get_rec(ptr noundef %cur, ptr noundef nonnull %r, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %if.then113.if.then886_crit_edge

if.then113.if.then886_crit_edge:                  ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end119:                                        ; preds = %if.then113
  %55 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp120.not = icmp eq i32 %56, 1
  br i1 %cmp120.not, label %if.end133, label %__here129, !prof !176

__here129:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !223
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1072, ptr noundef blockaddress(@xfs_rmap_convert, %__here129)) #11
  br label %if.then886

if.end133:                                        ; preds = %if.end119
  %57 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %r, align 8
  %rm_blockcount137 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %r, i32 0, i32 1
  %59 = ptrtoint ptr %rm_blockcount137 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rm_blockcount137, align 4
  %add138 = add i32 %60, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %add138, i32 %bno)
  %cmp139 = icmp ugt i32 %add138, %bno
  br i1 %cmp139, label %__here148, label %if.end152, !prof !196

__here148:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !224
  call void @xfs_corruption_error(ptr noundef nonnull @.str.34, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1078, ptr noundef blockaddress(@xfs_rmap_convert, %__here148)) #11
  br label %if.then886

if.end152:                                        ; preds = %if.end133
  %61 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bc_mp, align 4
  %63 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %11, align 8
  %pag_agno155 = getelementptr inbounds %struct.xfs_perag, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %pag_agno155 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pag_agno155, align 4
  %rm_owner161 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %r, i32 0, i32 2
  %67 = ptrtoint ptr %rm_owner161 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %rm_owner161, align 8
  %rm_offset163 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %r, i32 0, i32 3
  %69 = ptrtoint ptr %rm_offset163 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %rm_offset163, align 8
  %rm_flags165 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %r, i32 0, i32 4
  %71 = ptrtoint ptr %rm_flags165 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rm_flags165, align 8
  call fastcc void @trace_xfs_rmap_find_left_neighbor_result(ptr noundef %62, i32 noundef %66, i32 noundef %58, i32 noundef %60, i64 noundef %68, i64 noundef %70, i32 noundef %72)
  %73 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %r, align 8
  %75 = ptrtoint ptr %rm_blockcount137 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rm_blockcount137, align 4
  %add170 = add i32 %76, %74
  call void @__sanitizer_cov_trace_cmp4(i32 %add170, i32 %bno)
  %cmp171 = icmp eq i32 %add170, %bno
  br i1 %cmp171, label %land.lhs.true, label %if.end152.if.end188_crit_edge

if.end152.if.end188_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188

land.lhs.true:                                    ; preds = %if.end152
  %77 = ptrtoint ptr %rm_offset163 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %rm_offset163, align 8
  %conv177 = zext i32 %76 to i64
  %add178 = add i64 %78, %conv177
  call void @__sanitizer_cov_trace_cmp8(i64 %add178, i64 %7)
  %cmp179 = icmp eq i64 %add178, %7
  br i1 %cmp179, label %land.lhs.true181, label %land.lhs.true.if.end188_crit_edge

land.lhs.true.if.end188_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188

land.lhs.true181:                                 ; preds = %land.lhs.true
  %79 = ptrtoint ptr %rm_owner161 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %rm_owner161, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %80)
  %cmp.i = icmp ne i64 %80, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %80, i64 %5)
  %cmp2.not.i = icmp eq i64 %80, %5
  %or.cond.i = and i1 %cmp.i, %cmp2.not.i
  br i1 %or.cond.i, label %if.end4.i, label %land.lhs.true181.if.end188_crit_edge

land.lhs.true181.if.end188_crit_edge:             ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188

if.end4.i:                                        ; preds = %land.lhs.true181
  %81 = ptrtoint ptr %rm_flags165 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rm_flags165, align 8
  %.masked1169 = and i32 %82, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %.masked1169, i32 %and90)
  %83 = icmp eq i32 %.masked1169, %and90
  br i1 %83, label %xfs_rmap_is_mergeable.exit, label %if.end4.i.if.end188_crit_edge

if.end4.i.if.end188_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188

xfs_rmap_is_mergeable.exit:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %xor18.i = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor18.i)
  %tobool19.not.i = icmp eq i32 %xor18.i, 0
  %or186 = or i32 %state.1, 65
  %spec.select1167 = select i1 %tobool19.not.i, i32 %or186, i32 %or114
  br label %if.end188

if.end188:                                        ; preds = %xfs_rmap_is_mergeable.exit, %if.end4.i.if.end188_crit_edge, %land.lhs.true181.if.end188_crit_edge, %land.lhs.true.if.end188_crit_edge, %if.end152.if.end188_crit_edge, %if.end111.if.end188_crit_edge
  %state.2 = phi i32 [ %or114, %land.lhs.true.if.end188_crit_edge ], [ %or114, %if.end152.if.end188_crit_edge ], [ %state.1, %if.end111.if.end188_crit_edge ], [ %or114, %land.lhs.true181.if.end188_crit_edge ], [ %or114, %if.end4.i.if.end188_crit_edge ], [ %spec.select1167, %xfs_rmap_is_mergeable.exit ]
  %call189 = call i32 @xfs_btree_increment(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end192, label %if.end188.if.then886_crit_edge

if.end188.if.then886_crit_edge:                   ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end192:                                        ; preds = %if.end188
  %84 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp193.not = icmp eq i32 %85, 1
  br i1 %cmp193.not, label %if.end206, label %__here202, !prof !176

__here202:                                        ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !225
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1100, ptr noundef blockaddress(@xfs_rmap_convert, %__here202)) #11
  br label %if.then886

if.end206:                                        ; preds = %if.end192
  %call207 = call i32 @xfs_btree_increment(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.end210, label %if.end206.if.then886_crit_edge

if.end206.if.then886_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end210:                                        ; preds = %if.end206
  %86 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool211.not = icmp eq i32 %87, 0
  br i1 %tobool211.not, label %if.end210.if.end282_crit_edge, label %if.then212

if.end210.if.end282_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end282

if.then212:                                       ; preds = %if.end210
  %or213 = or i32 %state.2, 128
  %arrayidx214 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1
  %call215 = call i32 @xfs_rmap_get_rec(ptr noundef %cur, ptr noundef %arrayidx214, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.end218, label %if.then212.if.then886_crit_edge

if.then212.if.then886_crit_edge:                  ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end218:                                        ; preds = %if.then212
  %88 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp219.not = icmp eq i32 %89, 1
  br i1 %cmp219.not, label %if.end232, label %__here228, !prof !176

__here228:                                        ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !226
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1112, ptr noundef blockaddress(@xfs_rmap_convert, %__here228)) #11
  br label %if.then886

if.end232:                                        ; preds = %if.end218
  %add233 = add i32 %len, %bno
  %90 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx214, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add233, i32 %91)
  %cmp236 = icmp ugt i32 %add233, %91
  br i1 %cmp236, label %__here245, label %if.end249, !prof !196

__here245:                                        ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !227
  call void @xfs_corruption_error(ptr noundef nonnull @.str.35, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1116, ptr noundef blockaddress(@xfs_rmap_convert, %__here245)) #11
  br label %if.then886

if.end249:                                        ; preds = %if.end232
  %92 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bc_mp, align 4
  %94 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %11, align 8
  %pag_agno252 = getelementptr inbounds %struct.xfs_perag, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %pag_agno252 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pag_agno252, align 4
  %rm_blockcount256 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %rm_blockcount256 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rm_blockcount256, align 4
  %rm_owner258 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 2
  %100 = ptrtoint ptr %rm_owner258 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %rm_owner258, align 8
  %rm_offset260 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 3
  %102 = ptrtoint ptr %rm_offset260 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %rm_offset260, align 8
  %rm_flags262 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 4
  %104 = ptrtoint ptr %rm_flags262 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rm_flags262, align 8
  call fastcc void @trace_xfs_rmap_find_right_neighbor_result(ptr noundef %93, i32 noundef %97, i32 noundef %91, i32 noundef %99, i64 noundef %101, i64 noundef %103, i32 noundef %105)
  %106 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx214, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add233, i32 %107)
  %cmp266 = icmp eq i32 %add233, %107
  br i1 %cmp266, label %land.lhs.true268, label %if.end249.if.end282_crit_edge

if.end249.if.end282_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end282

land.lhs.true268:                                 ; preds = %if.end249
  %108 = ptrtoint ptr %rm_offset260 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %rm_offset260, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %109)
  %cmp273 = icmp eq i64 %add, %109
  br i1 %cmp273, label %land.lhs.true275, label %land.lhs.true268.if.end282_crit_edge

land.lhs.true268.if.end282_crit_edge:             ; preds = %land.lhs.true268
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end282

land.lhs.true275:                                 ; preds = %land.lhs.true268
  %110 = ptrtoint ptr %rm_owner258 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %rm_owner258, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %111)
  %cmp.i1103 = icmp ne i64 %111, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %111, i64 %5)
  %cmp2.not.i1104 = icmp eq i64 %111, %5
  %or.cond.i1105 = and i1 %cmp.i1103, %cmp2.not.i1104
  br i1 %or.cond.i1105, label %if.end4.i1108, label %land.lhs.true275.if.end282_crit_edge

land.lhs.true275.if.end282_crit_edge:             ; preds = %land.lhs.true275
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end282

if.end4.i1108:                                    ; preds = %land.lhs.true275
  %112 = ptrtoint ptr %rm_flags262 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rm_flags262, align 8
  %.masked = and i32 %113, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %.masked, i32 %and90)
  %114 = icmp eq i32 %.masked, %and90
  br i1 %114, label %xfs_rmap_is_mergeable.exit1113, label %if.end4.i1108.if.end282_crit_edge

if.end4.i1108.if.end282_crit_edge:                ; preds = %if.end4.i1108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end282

xfs_rmap_is_mergeable.exit1113:                   ; preds = %if.end4.i1108
  call void @__sanitizer_cov_trace_pc() #13
  %xor18.i1109 = and i32 %113, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor18.i1109)
  %tobool19.not.i1110 = icmp eq i32 %xor18.i1109, 0
  %or280 = or i32 %state.2, 130
  %spec.select1168 = select i1 %tobool19.not.i1110, i32 %or280, i32 %or213
  br label %if.end282

if.end282:                                        ; preds = %xfs_rmap_is_mergeable.exit1113, %if.end4.i1108.if.end282_crit_edge, %land.lhs.true275.if.end282_crit_edge, %land.lhs.true268.if.end282_crit_edge, %if.end249.if.end282_crit_edge, %if.end210.if.end282_crit_edge
  %state.3 = phi i32 [ %or213, %land.lhs.true268.if.end282_crit_edge ], [ %or213, %if.end249.if.end282_crit_edge ], [ %state.2, %if.end210.if.end282_crit_edge ], [ %or213, %land.lhs.true275.if.end282_crit_edge ], [ %or213, %if.end4.i1108.if.end282_crit_edge ], [ %spec.select1168, %xfs_rmap_is_mergeable.exit1113 ]
  %and283 = and i32 %state.3, 15
  %115 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %11, align 8
  %pag_agno299 = getelementptr inbounds %struct.xfs_perag, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %pag_agno299 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pag_agno299, align 4
  %119 = call ptr @llvm.returnaddress(i32 0)
  %120 = ptrtoint ptr %119 to i32
  call fastcc void @trace_xfs_rmap_convert_state(ptr noundef %1, i32 noundef %118, i32 noundef %state.3, i32 noundef %120)
  %121 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %bno, ptr %bc_rec.i, align 8
  %122 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %len, ptr %rm_blockcount.i, align 4
  %123 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %5, ptr %rm_owner.i, align 8
  %124 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %7, ptr %rm_offset.i, align 8
  %125 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %cond, ptr %rm_flags.i, align 8
  %call.i1119 = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 1, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1119)
  %tobool301.not = icmp eq i32 %call.i1119, 0
  br i1 %tobool301.not, label %if.end303, label %if.end282.if.then886_crit_edge

if.end282.if.then886_crit_edge:                   ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end303:                                        ; preds = %if.end282
  %126 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %127)
  %cmp304.not = icmp eq i32 %127, 1
  br i1 %cmp304.not, label %if.end317, label %__here313, !prof !176

__here313:                                        ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !228
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1146, ptr noundef blockaddress(@xfs_rmap_convert, %__here313)) #11
  br label %if.then886

if.end317:                                        ; preds = %if.end303
  %128 = zext i32 %and283 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %and283, label %if.end317.unreachabledefault [
    i32 15, label %sw.bb
    i32 13, label %sw.bb448
    i32 14, label %sw.bb509
    i32 12, label %sw.bb590
    i32 5, label %sw.bb600
    i32 4, label %sw.bb631
    i32 10, label %sw.bb680
    i32 8, label %sw.bb709
    i32 0, label %sw.bb770
    i32 7, label %if.end317.sw.bb881_crit_edge
    i32 11, label %if.end317.sw.bb881_crit_edge1170
    i32 6, label %if.end317.sw.bb881_crit_edge1171
    i32 9, label %if.end317.sw.bb881_crit_edge1172
    i32 3, label %if.end317.sw.bb881_crit_edge1173
    i32 1, label %if.end317.sw.bb881_crit_edge1174
    i32 2, label %if.end317.sw.bb881_crit_edge1175
  ]

if.end317.sw.bb881_crit_edge1175:                 ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb881

if.end317.sw.bb881_crit_edge1174:                 ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb881

if.end317.sw.bb881_crit_edge1173:                 ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb881

if.end317.sw.bb881_crit_edge1172:                 ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb881

if.end317.sw.bb881_crit_edge1171:                 ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb881

if.end317.sw.bb881_crit_edge1170:                 ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb881

if.end317.sw.bb881_crit_edge:                     ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb881

sw.bb:                                            ; preds = %if.end317
  %call319 = call i32 @xfs_btree_increment(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %if.end322, label %sw.bb.if.then886_crit_edge

sw.bb.if.then886_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end322:                                        ; preds = %sw.bb
  %129 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %130)
  %cmp323.not = icmp eq i32 %130, 1
  br i1 %cmp323.not, label %if.end336, label %__here332, !prof !176

__here332:                                        ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !229
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1165, ptr noundef blockaddress(@xfs_rmap_convert, %__here332)) #11
  br label %if.then886

if.end336:                                        ; preds = %if.end322
  %131 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %11, align 8
  %pag_agno338 = getelementptr inbounds %struct.xfs_perag, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %pag_agno338 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %pag_agno338, align 4
  %arrayidx339 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1
  %135 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx339, align 8
  %rm_blockcount342 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 1
  %137 = ptrtoint ptr %rm_blockcount342 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rm_blockcount342, align 4
  %rm_owner344 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 2
  %139 = ptrtoint ptr %rm_owner344 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %rm_owner344, align 8
  %rm_offset346 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 3
  %141 = ptrtoint ptr %rm_offset346 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %rm_offset346, align 8
  %rm_flags348 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 4
  %143 = ptrtoint ptr %rm_flags348 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %rm_flags348, align 8
  call fastcc void @trace_xfs_rmap_delete(ptr noundef %1, i32 noundef %134, i32 noundef %136, i32 noundef %138, i64 noundef %140, i64 noundef %142, i32 noundef %144)
  %call349 = call i32 @xfs_btree_delete(ptr noundef %cur, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call349)
  %tobool350.not = icmp eq i32 %call349, 0
  br i1 %tobool350.not, label %if.end352, label %if.end336.if.then886_crit_edge

if.end336.if.then886_crit_edge:                   ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end352:                                        ; preds = %if.end336
  %145 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %146)
  %cmp353.not = icmp eq i32 %146, 1
  br i1 %cmp353.not, label %if.end366, label %__here362, !prof !176

__here362:                                        ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !230
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1176, ptr noundef blockaddress(@xfs_rmap_convert, %__here362)) #11
  br label %if.then886

if.end366:                                        ; preds = %if.end352
  %call367 = call i32 @xfs_btree_decrement(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call367)
  %tobool368.not = icmp eq i32 %call367, 0
  br i1 %tobool368.not, label %if.end370, label %if.end366.if.then886_crit_edge

if.end366.if.then886_crit_edge:                   ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end370:                                        ; preds = %if.end366
  %147 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp371.not = icmp eq i32 %148, 1
  br i1 %cmp371.not, label %if.end384, label %__here380, !prof !176

__here380:                                        ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !231
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1183, ptr noundef blockaddress(@xfs_rmap_convert, %__here380)) #11
  br label %if.then886

if.end384:                                        ; preds = %if.end370
  %149 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %11, align 8
  %pag_agno386 = getelementptr inbounds %struct.xfs_perag, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %pag_agno386 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %pag_agno386, align 4
  %153 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx, align 8
  %155 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rm_blockcount, align 4
  %157 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %rm_owner, align 8
  %159 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %rm_offset, align 8
  %161 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %rm_flags, align 8
  call fastcc void @trace_xfs_rmap_delete(ptr noundef %1, i32 noundef %152, i32 noundef %154, i32 noundef %156, i64 noundef %158, i64 noundef %160, i32 noundef %162)
  %call397 = call i32 @xfs_btree_delete(ptr noundef %cur, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call397)
  %tobool398.not = icmp eq i32 %call397, 0
  br i1 %tobool398.not, label %if.end400, label %if.end384.if.then886_crit_edge

if.end384.if.then886_crit_edge:                   ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end400:                                        ; preds = %if.end384
  %163 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %164)
  %cmp401.not = icmp eq i32 %164, 1
  br i1 %cmp401.not, label %if.end414, label %__here410, !prof !176

__here410:                                        ; preds = %if.end400
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !232
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1194, ptr noundef blockaddress(@xfs_rmap_convert, %__here410)) #11
  br label %if.then886

if.end414:                                        ; preds = %if.end400
  %call415 = call i32 @xfs_btree_decrement(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call415)
  %tobool416.not = icmp eq i32 %call415, 0
  br i1 %tobool416.not, label %if.end418, label %if.end414.if.then886_crit_edge

if.end414.if.then886_crit_edge:                   ; preds = %if.end414
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end418:                                        ; preds = %if.end414
  %165 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp419.not = icmp eq i32 %166, 1
  br i1 %cmp419.not, label %if.end432, label %__here428, !prof !176

__here428:                                        ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !233
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1201, ptr noundef blockaddress(@xfs_rmap_convert, %__here428)) #11
  br label %if.then886

if.end432:                                        ; preds = %if.end418
  %arrayidx433 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %167 = call ptr @memcpy(ptr %arrayidx433, ptr %r, i32 32)
  %168 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %rm_blockcount, align 4
  %170 = ptrtoint ptr %rm_blockcount342 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %rm_blockcount342, align 4
  %add439 = add i32 %171, %169
  %rm_blockcount441 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 1
  %172 = ptrtoint ptr %rm_blockcount441 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %rm_blockcount441, align 4
  %add442 = add i32 %add439, %173
  store i32 %add442, ptr %rm_blockcount441, align 4
  %call444 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx433)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call444)
  %tobool445.not = icmp eq i32 %call444, 0
  br i1 %tobool445.not, label %if.end432.done_crit_edge, label %if.end432.if.then886_crit_edge

if.end432.if.then886_crit_edge:                   ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end432.done_crit_edge:                         ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb448:                                         ; preds = %if.end317
  %174 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %11, align 8
  %pag_agno450 = getelementptr inbounds %struct.xfs_perag, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %pag_agno450 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %pag_agno450, align 4
  %178 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx, align 8
  %180 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %rm_blockcount, align 4
  %182 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %rm_owner, align 8
  %184 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %rm_offset, align 8
  %186 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %rm_flags, align 8
  call fastcc void @trace_xfs_rmap_delete(ptr noundef %1, i32 noundef %177, i32 noundef %179, i32 noundef %181, i64 noundef %183, i64 noundef %185, i32 noundef %187)
  %call461 = call i32 @xfs_btree_delete(ptr noundef %cur, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call461)
  %tobool462.not = icmp eq i32 %call461, 0
  br i1 %tobool462.not, label %if.end464, label %sw.bb448.if.then886_crit_edge

sw.bb448.if.then886_crit_edge:                    ; preds = %sw.bb448
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end464:                                        ; preds = %sw.bb448
  %188 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %189)
  %cmp465.not = icmp eq i32 %189, 1
  br i1 %cmp465.not, label %if.end478, label %__here474, !prof !176

__here474:                                        ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !234
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1224, ptr noundef blockaddress(@xfs_rmap_convert, %__here474)) #11
  br label %if.then886

if.end478:                                        ; preds = %if.end464
  %call479 = call i32 @xfs_btree_decrement(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call479)
  %tobool480.not = icmp eq i32 %call479, 0
  br i1 %tobool480.not, label %if.end482, label %if.end478.if.then886_crit_edge

if.end478.if.then886_crit_edge:                   ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end482:                                        ; preds = %if.end478
  %190 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %191)
  %cmp483.not = icmp eq i32 %191, 1
  br i1 %cmp483.not, label %if.end496, label %__here492, !prof !176

__here492:                                        ; preds = %if.end482
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !235
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1231, ptr noundef blockaddress(@xfs_rmap_convert, %__here492)) #11
  br label %if.then886

if.end496:                                        ; preds = %if.end482
  %arrayidx497 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %192 = call ptr @memcpy(ptr %arrayidx497, ptr %r, i32 32)
  %193 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %rm_blockcount, align 4
  %rm_blockcount502 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 1
  %195 = ptrtoint ptr %rm_blockcount502 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %rm_blockcount502, align 4
  %add503 = add i32 %196, %194
  store i32 %add503, ptr %rm_blockcount502, align 4
  %call505 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx497)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call505)
  %tobool506.not = icmp eq i32 %call505, 0
  br i1 %tobool506.not, label %if.end496.done_crit_edge, label %if.end496.if.then886_crit_edge

if.end496.if.then886_crit_edge:                   ; preds = %if.end496
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end496.done_crit_edge:                         ; preds = %if.end496
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb509:                                         ; preds = %if.end317
  %call510 = call i32 @xfs_btree_increment(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call510)
  %tobool511.not = icmp eq i32 %call510, 0
  br i1 %tobool511.not, label %if.end513, label %sw.bb509.if.then886_crit_edge

sw.bb509.if.then886_crit_edge:                    ; preds = %sw.bb509
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end513:                                        ; preds = %sw.bb509
  %197 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %198)
  %cmp514.not = icmp eq i32 %198, 1
  br i1 %cmp514.not, label %if.end527, label %__here523, !prof !176

__here523:                                        ; preds = %if.end513
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !236
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1250, ptr noundef blockaddress(@xfs_rmap_convert, %__here523)) #11
  br label %if.then886

if.end527:                                        ; preds = %if.end513
  %199 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %11, align 8
  %pag_agno529 = getelementptr inbounds %struct.xfs_perag, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %pag_agno529 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %pag_agno529, align 4
  %arrayidx530 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1
  %203 = ptrtoint ptr %arrayidx530 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx530, align 8
  %rm_blockcount533 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 1
  %205 = ptrtoint ptr %rm_blockcount533 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %rm_blockcount533, align 4
  %rm_owner535 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 2
  %207 = ptrtoint ptr %rm_owner535 to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %rm_owner535, align 8
  %rm_offset537 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 3
  %209 = ptrtoint ptr %rm_offset537 to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %rm_offset537, align 8
  %rm_flags539 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 4
  %211 = ptrtoint ptr %rm_flags539 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %rm_flags539, align 8
  call fastcc void @trace_xfs_rmap_delete(ptr noundef %1, i32 noundef %202, i32 noundef %204, i32 noundef %206, i64 noundef %208, i64 noundef %210, i32 noundef %212)
  %call540 = call i32 @xfs_btree_delete(ptr noundef %cur, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call540)
  %tobool541.not = icmp eq i32 %call540, 0
  br i1 %tobool541.not, label %if.end543, label %if.end527.if.then886_crit_edge

if.end527.if.then886_crit_edge:                   ; preds = %if.end527
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end543:                                        ; preds = %if.end527
  %213 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %214)
  %cmp544.not = icmp eq i32 %214, 1
  br i1 %cmp544.not, label %if.end557, label %__here553, !prof !176

__here553:                                        ; preds = %if.end543
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !237
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1261, ptr noundef blockaddress(@xfs_rmap_convert, %__here553)) #11
  br label %if.then886

if.end557:                                        ; preds = %if.end543
  %call558 = call i32 @xfs_btree_decrement(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call558)
  %tobool559.not = icmp eq i32 %call558, 0
  br i1 %tobool559.not, label %if.end561, label %if.end557.if.then886_crit_edge

if.end557.if.then886_crit_edge:                   ; preds = %if.end557
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end561:                                        ; preds = %if.end557
  %215 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %216)
  %cmp562.not = icmp eq i32 %216, 1
  br i1 %cmp562.not, label %if.end575, label %__here571, !prof !176

__here571:                                        ; preds = %if.end561
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !238
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1268, ptr noundef blockaddress(@xfs_rmap_convert, %__here571)) #11
  br label %if.then886

if.end575:                                        ; preds = %if.end561
  %arrayidx576 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %217 = call ptr @memcpy(ptr %arrayidx576, ptr %arrayidx, i32 32)
  %218 = ptrtoint ptr %rm_blockcount533 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %rm_blockcount533, align 4
  %add580 = add i32 %219, %len
  %rm_blockcount582 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 1
  %220 = ptrtoint ptr %rm_blockcount582 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %add580, ptr %rm_blockcount582, align 4
  %rm_flags584 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 4
  %221 = ptrtoint ptr %rm_flags584 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %and90, ptr %rm_flags584, align 8
  %call586 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx576)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call586)
  %tobool587.not = icmp eq i32 %call586, 0
  br i1 %tobool587.not, label %if.end575.done_crit_edge, label %if.end575.if.then886_crit_edge

if.end575.if.then886_crit_edge:                   ; preds = %if.end575
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end575.done_crit_edge:                         ; preds = %if.end575
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb590:                                         ; preds = %if.end317
  %arrayidx591 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %222 = call ptr @memcpy(ptr %arrayidx591, ptr %arrayidx, i32 32)
  %rm_flags594 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 4
  %223 = ptrtoint ptr %rm_flags594 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %and90, ptr %rm_flags594, align 8
  %call596 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx591)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call596)
  %tobool597.not = icmp eq i32 %call596, 0
  br i1 %tobool597.not, label %sw.bb590.done_crit_edge, label %sw.bb590.if.then886_crit_edge

sw.bb590.if.then886_crit_edge:                    ; preds = %sw.bb590
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

sw.bb590.done_crit_edge:                          ; preds = %sw.bb590
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb600:                                         ; preds = %if.end317
  %arrayidx601 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %224 = call ptr @memcpy(ptr %arrayidx601, ptr %arrayidx, i32 32)
  %rm_offset605 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 3
  %225 = ptrtoint ptr %rm_offset605 to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %rm_offset605, align 8
  %add606 = add i64 %226, %conv
  store i64 %add606, ptr %rm_offset605, align 8
  %227 = ptrtoint ptr %arrayidx601 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx601, align 8
  %add609 = add i32 %228, %len
  store i32 %add609, ptr %arrayidx601, align 8
  %rm_blockcount611 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 1
  %229 = ptrtoint ptr %rm_blockcount611 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %rm_blockcount611, align 4
  %sub = sub i32 %230, %len
  store i32 %sub, ptr %rm_blockcount611, align 4
  %call613 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx601)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call613)
  %tobool614.not = icmp eq i32 %call613, 0
  br i1 %tobool614.not, label %if.end616, label %sw.bb600.if.then886_crit_edge

sw.bb600.if.then886_crit_edge:                    ; preds = %sw.bb600
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end616:                                        ; preds = %sw.bb600
  %call617 = call i32 @xfs_btree_decrement(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call617)
  %tobool618.not = icmp eq i32 %call617, 0
  br i1 %tobool618.not, label %if.end620, label %if.end616.if.then886_crit_edge

if.end616.if.then886_crit_edge:                   ; preds = %if.end616
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end620:                                        ; preds = %if.end616
  %231 = call ptr @memcpy(ptr %arrayidx601, ptr %r, i32 32)
  %232 = ptrtoint ptr %rm_blockcount611 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %rm_blockcount611, align 4
  %add625 = add i32 %233, %len
  store i32 %add625, ptr %rm_blockcount611, align 4
  %call627 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx601)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call627)
  %tobool628.not = icmp eq i32 %call627, 0
  br i1 %tobool628.not, label %if.end620.done_crit_edge, label %if.end620.if.then886_crit_edge

if.end620.if.then886_crit_edge:                   ; preds = %if.end620
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end620.done_crit_edge:                         ; preds = %if.end620
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb631:                                         ; preds = %if.end317
  %arrayidx632 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %234 = call ptr @memcpy(ptr %arrayidx632, ptr %arrayidx, i32 32)
  %235 = ptrtoint ptr %arrayidx632 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx632, align 8
  %add636 = add i32 %236, %len
  store i32 %add636, ptr %arrayidx632, align 8
  %rm_offset639 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 3
  %237 = ptrtoint ptr %rm_offset639 to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %rm_offset639, align 8
  %add640 = add i64 %238, %conv
  store i64 %add640, ptr %rm_offset639, align 8
  %rm_blockcount642 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 1
  %239 = ptrtoint ptr %rm_blockcount642 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %rm_blockcount642, align 4
  %sub643 = sub i32 %240, %len
  store i32 %sub643, ptr %rm_blockcount642, align 4
  %call645 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx632)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call645)
  %tobool646.not = icmp eq i32 %call645, 0
  br i1 %tobool646.not, label %if.end648, label %sw.bb631.if.then886_crit_edge

sw.bb631.if.then886_crit_edge:                    ; preds = %sw.bb631
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end648:                                        ; preds = %sw.bb631
  %241 = ptrtoint ptr %arrayidx632 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %bno, ptr %arrayidx632, align 8
  %rm_owner652 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 2
  %242 = ptrtoint ptr %rm_owner652 to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 %5, ptr %rm_owner652, align 8
  %243 = ptrtoint ptr %rm_offset639 to i32
  call void @__asan_store8_noabort(i32 %243)
  store i64 %7, ptr %rm_offset639, align 8
  %244 = ptrtoint ptr %rm_blockcount642 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %len, ptr %rm_blockcount642, align 4
  %rm_flags658 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 4
  %245 = ptrtoint ptr %rm_flags658 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %and90, ptr %rm_flags658, align 8
  %246 = call ptr @memcpy(ptr %bc_rec.i, ptr %arrayidx632, i32 32)
  %247 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %11, align 8
  %pag_agno661 = getelementptr inbounds %struct.xfs_perag, ptr %248, i32 0, i32 1
  %249 = ptrtoint ptr %pag_agno661 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %pag_agno661, align 4
  call fastcc void @trace_xfs_rmap_insert(ptr noundef %1, i32 noundef %250, i32 noundef %bno, i32 noundef %len, i64 noundef %5, i64 noundef %7, i32 noundef %and90)
  %call662 = call i32 @xfs_btree_insert(ptr noundef %cur, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call662)
  %tobool663.not = icmp eq i32 %call662, 0
  br i1 %tobool663.not, label %if.end665, label %if.end648.if.then886_crit_edge

if.end648.if.then886_crit_edge:                   ; preds = %if.end648
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end665:                                        ; preds = %if.end648
  %251 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %252)
  %cmp666.not = icmp eq i32 %252, 1
  br i1 %cmp666.not, label %if.end665.done_crit_edge, label %__here675, !prof !176

if.end665.done_crit_edge:                         ; preds = %if.end665
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

__here675:                                        ; preds = %if.end665
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !239
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1338, ptr noundef blockaddress(@xfs_rmap_convert, %__here675)) #11
  br label %if.then886

sw.bb680:                                         ; preds = %if.end317
  %arrayidx681 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %253 = call ptr @memcpy(ptr %arrayidx681, ptr %arrayidx, i32 32)
  %rm_blockcount684 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 1
  %254 = ptrtoint ptr %rm_blockcount684 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %rm_blockcount684, align 4
  %sub685 = sub i32 %255, %len
  store i32 %sub685, ptr %rm_blockcount684, align 4
  %call687 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx681)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call687)
  %tobool688.not = icmp eq i32 %call687, 0
  br i1 %tobool688.not, label %if.end690, label %sw.bb680.if.then886_crit_edge

sw.bb680.if.then886_crit_edge:                    ; preds = %sw.bb680
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end690:                                        ; preds = %sw.bb680
  %call691 = call i32 @xfs_btree_increment(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call691)
  %tobool692.not = icmp eq i32 %call691, 0
  br i1 %tobool692.not, label %if.end694, label %if.end690.if.then886_crit_edge

if.end690.if.then886_crit_edge:                   ; preds = %if.end690
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end694:                                        ; preds = %if.end690
  %arrayidx696 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1
  %256 = call ptr @memcpy(ptr %arrayidx681, ptr %arrayidx696, i32 32)
  %rm_offset698 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 3
  %257 = ptrtoint ptr %rm_offset698 to i32
  call void @__asan_store8_noabort(i32 %257)
  store i64 %7, ptr %rm_offset698, align 8
  %258 = ptrtoint ptr %arrayidx681 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %bno, ptr %arrayidx681, align 8
  %259 = ptrtoint ptr %rm_blockcount684 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %rm_blockcount684, align 4
  %add703 = add i32 %260, %len
  store i32 %add703, ptr %rm_blockcount684, align 4
  %call705 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx681)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call705)
  %tobool706.not = icmp eq i32 %call705, 0
  br i1 %tobool706.not, label %if.end694.done_crit_edge, label %if.end694.if.then886_crit_edge

if.end694.if.then886_crit_edge:                   ; preds = %if.end694
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end694.done_crit_edge:                         ; preds = %if.end694
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb709:                                         ; preds = %if.end317
  %arrayidx710 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %261 = call ptr @memcpy(ptr %arrayidx710, ptr %arrayidx, i32 32)
  %rm_blockcount713 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 1
  %262 = ptrtoint ptr %rm_blockcount713 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %rm_blockcount713, align 4
  %sub714 = sub i32 %263, %len
  store i32 %sub714, ptr %rm_blockcount713, align 4
  %call716 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx710)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call716)
  %tobool717.not = icmp eq i32 %call716, 0
  br i1 %tobool717.not, label %if.end719, label %sw.bb709.if.then886_crit_edge

sw.bb709.if.then886_crit_edge:                    ; preds = %sw.bb709
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end719:                                        ; preds = %sw.bb709
  %264 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %bno, ptr %bc_rec.i, align 8
  %265 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %len, ptr %rm_blockcount.i, align 4
  %266 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_store8_noabort(i32 %266)
  store i64 %5, ptr %rm_owner.i, align 8
  %267 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %267)
  store i64 %7, ptr %rm_offset.i, align 8
  %268 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %cond, ptr %rm_flags.i, align 8
  %call.i1125 = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1125)
  %tobool721.not = icmp eq i32 %call.i1125, 0
  br i1 %tobool721.not, label %if.end723, label %if.end719.if.then886_crit_edge

if.end719.if.then886_crit_edge:                   ; preds = %if.end719
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end723:                                        ; preds = %if.end719
  %269 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %cmp724.not = icmp eq i32 %270, 0
  br i1 %cmp724.not, label %if.end737, label %__here733, !prof !176

__here733:                                        ; preds = %if.end723
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !240
  call void @xfs_corruption_error(ptr noundef nonnull @.str, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1380, ptr noundef blockaddress(@xfs_rmap_convert, %__here733)) #11
  br label %if.then886

if.end737:                                        ; preds = %if.end723
  %271 = ptrtoint ptr %arrayidx710 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %bno, ptr %arrayidx710, align 8
  %rm_owner741 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 2
  %272 = ptrtoint ptr %rm_owner741 to i32
  call void @__asan_store8_noabort(i32 %272)
  store i64 %5, ptr %rm_owner741, align 8
  %rm_offset743 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 3
  %273 = ptrtoint ptr %rm_offset743 to i32
  call void @__asan_store8_noabort(i32 %273)
  store i64 %7, ptr %rm_offset743, align 8
  %274 = ptrtoint ptr %rm_blockcount713 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %len, ptr %rm_blockcount713, align 4
  %rm_flags747 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 4
  %275 = ptrtoint ptr %rm_flags747 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %and90, ptr %rm_flags747, align 8
  %276 = call ptr @memcpy(ptr %bc_rec.i, ptr %arrayidx710, i32 32)
  %277 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %11, align 8
  %pag_agno751 = getelementptr inbounds %struct.xfs_perag, ptr %278, i32 0, i32 1
  %279 = ptrtoint ptr %pag_agno751 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %pag_agno751, align 4
  call fastcc void @trace_xfs_rmap_insert(ptr noundef %1, i32 noundef %280, i32 noundef %bno, i32 noundef %len, i64 noundef %5, i64 noundef %7, i32 noundef %and90)
  %call752 = call i32 @xfs_btree_insert(ptr noundef %cur, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call752)
  %tobool753.not = icmp eq i32 %call752, 0
  br i1 %tobool753.not, label %if.end755, label %if.end737.if.then886_crit_edge

if.end737.if.then886_crit_edge:                   ; preds = %if.end737
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end755:                                        ; preds = %if.end737
  %281 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %282)
  %cmp756.not = icmp eq i32 %282, 1
  br i1 %cmp756.not, label %if.end755.done_crit_edge, label %__here765, !prof !176

if.end755.done_crit_edge:                         ; preds = %if.end755
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

__here765:                                        ; preds = %if.end755
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !241
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1395, ptr noundef blockaddress(@xfs_rmap_convert, %__here765)) #11
  br label %if.then886

sw.bb770:                                         ; preds = %if.end317
  %add771 = add i32 %len, %bno
  %arrayidx772 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %283 = ptrtoint ptr %arrayidx772 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %add771, ptr %arrayidx772, align 8
  %rm_owner775 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 2
  %284 = ptrtoint ptr %rm_owner775 to i32
  call void @__asan_store8_noabort(i32 %284)
  store i64 %5, ptr %rm_owner775, align 8
  %rm_offset777 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 3
  %285 = ptrtoint ptr %rm_offset777 to i32
  call void @__asan_store8_noabort(i32 %285)
  store i64 %add, ptr %rm_offset777, align 8
  %286 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %286)
  %287 = load i64, ptr %rm_offset, align 8
  %288 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %rm_blockcount, align 4
  %add783 = sub i64 %287, %add
  %290 = trunc i64 %add783 to i32
  %conv785 = add i32 %289, %290
  %rm_blockcount787 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 1
  %291 = ptrtoint ptr %rm_blockcount787 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %conv785, ptr %rm_blockcount787, align 4
  %292 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %rm_flags, align 8
  %rm_flags791 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 4
  %294 = ptrtoint ptr %rm_flags791 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %293, ptr %rm_flags791, align 8
  %call793 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx772)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call793)
  %tobool794.not = icmp eq i32 %call793, 0
  br i1 %tobool794.not, label %if.end796, label %sw.bb770.if.then886_crit_edge

sw.bb770.if.then886_crit_edge:                    ; preds = %sw.bb770
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end796:                                        ; preds = %sw.bb770
  %295 = call ptr @memcpy(ptr %arrayidx772, ptr %arrayidx, i32 32)
  %296 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %296)
  %297 = load i64, ptr %rm_offset, align 8
  %sub801 = sub i64 %7, %297
  %conv802 = trunc i64 %sub801 to i32
  %298 = ptrtoint ptr %rm_blockcount787 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %conv802, ptr %rm_blockcount787, align 4
  %299 = call ptr @memcpy(ptr %bc_rec.i, ptr %arrayidx772, i32 32)
  %300 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %11, align 8
  %pag_agno808 = getelementptr inbounds %struct.xfs_perag, ptr %301, i32 0, i32 1
  %302 = ptrtoint ptr %pag_agno808 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %pag_agno808, align 4
  %304 = ptrtoint ptr %arrayidx772 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %arrayidx772, align 8
  %306 = ptrtoint ptr %rm_owner775 to i32
  call void @__asan_load8_noabort(i32 %306)
  %307 = load i64, ptr %rm_owner775, align 8
  %308 = ptrtoint ptr %rm_offset777 to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %rm_offset777, align 8
  %310 = ptrtoint ptr %rm_flags791 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %rm_flags791, align 8
  call fastcc void @trace_xfs_rmap_insert(ptr noundef %1, i32 noundef %303, i32 noundef %305, i32 noundef %conv802, i64 noundef %307, i64 noundef %309, i32 noundef %311)
  %call819 = call i32 @xfs_btree_insert(ptr noundef %cur, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call819)
  %tobool820.not = icmp eq i32 %call819, 0
  br i1 %tobool820.not, label %if.end822, label %if.end796.if.then886_crit_edge

if.end796.if.then886_crit_edge:                   ; preds = %if.end796
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end822:                                        ; preds = %if.end796
  %312 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %313)
  %cmp823.not = icmp eq i32 %313, 1
  br i1 %cmp823.not, label %if.end836, label %__here832, !prof !176

__here832:                                        ; preds = %if.end822
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !242
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1428, ptr noundef blockaddress(@xfs_rmap_convert, %__here832)) #11
  br label %if.then886

if.end836:                                        ; preds = %if.end822
  %314 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %bno, ptr %bc_rec.i, align 8
  %315 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %len, ptr %rm_blockcount.i, align 4
  %316 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_store8_noabort(i32 %316)
  store i64 %5, ptr %rm_owner.i, align 8
  %317 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %317)
  store i64 %7, ptr %rm_offset.i, align 8
  %318 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %cond, ptr %rm_flags.i, align 8
  %call.i1131 = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1131)
  %tobool838.not = icmp eq i32 %call.i1131, 0
  br i1 %tobool838.not, label %if.end840, label %if.end836.if.then886_crit_edge

if.end836.if.then886_crit_edge:                   ; preds = %if.end836
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end840:                                        ; preds = %if.end836
  %319 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %320)
  %cmp841.not = icmp eq i32 %320, 0
  br i1 %cmp841.not, label %if.end854, label %__here850, !prof !176

__here850:                                        ; preds = %if.end840
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !243
  call void @xfs_corruption_error(ptr noundef nonnull @.str, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1441, ptr noundef blockaddress(@xfs_rmap_convert, %__here850)) #11
  br label %if.then886

if.end854:                                        ; preds = %if.end840
  %321 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %rm_flags.i, align 8
  %and857 = and i32 %322, -5
  %or860 = or i32 %and857, %and90
  store i32 %or860, ptr %rm_flags.i, align 8
  %323 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %11, align 8
  %pag_agno862 = getelementptr inbounds %struct.xfs_perag, ptr %324, i32 0, i32 1
  %325 = ptrtoint ptr %pag_agno862 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %pag_agno862, align 4
  call fastcc void @trace_xfs_rmap_insert(ptr noundef %1, i32 noundef %326, i32 noundef %bno, i32 noundef %len, i64 noundef %5, i64 noundef %7, i32 noundef %and90)
  %call863 = call i32 @xfs_btree_insert(ptr noundef %cur, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call863)
  %tobool864.not = icmp eq i32 %call863, 0
  br i1 %tobool864.not, label %if.end866, label %if.end854.if.then886_crit_edge

if.end854.if.then886_crit_edge:                   ; preds = %if.end854
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then886

if.end866:                                        ; preds = %if.end854
  %327 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %328)
  %cmp867.not = icmp eq i32 %328, 1
  br i1 %cmp867.not, label %if.end866.done_crit_edge, label %__here876, !prof !176

if.end866.done_crit_edge:                         ; preds = %if.end866
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

__here876:                                        ; preds = %if.end866
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !244
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1453, ptr noundef blockaddress(@xfs_rmap_convert, %__here876)) #11
  br label %if.then886

sw.bb881:                                         ; preds = %if.end317.sw.bb881_crit_edge, %if.end317.sw.bb881_crit_edge1170, %if.end317.sw.bb881_crit_edge1171, %if.end317.sw.bb881_crit_edge1172, %if.end317.sw.bb881_crit_edge1173, %if.end317.sw.bb881_crit_edge1174, %if.end317.sw.bb881_crit_edge1175
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1469) #11
  br label %done

if.end317.unreachabledefault:                     ; preds = %if.end317
  unreachable

done:                                             ; preds = %sw.bb881, %if.end866.done_crit_edge, %if.end755.done_crit_edge, %if.end694.done_crit_edge, %if.end665.done_crit_edge, %if.end620.done_crit_edge, %sw.bb590.done_crit_edge, %if.end575.done_crit_edge, %if.end496.done_crit_edge, %if.end432.done_crit_edge
  %329 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %11, align 8
  %pag_agno883 = getelementptr inbounds %struct.xfs_perag, ptr %330, i32 0, i32 1
  %331 = ptrtoint ptr %pag_agno883 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %pag_agno883, align 4
  call fastcc void @trace_xfs_rmap_convert_done(ptr noundef %1, i32 noundef %332, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo)
  br label %if.end890

if.then886:                                       ; preds = %__here876, %if.end854.if.then886_crit_edge, %__here850, %if.end836.if.then886_crit_edge, %__here832, %if.end796.if.then886_crit_edge, %sw.bb770.if.then886_crit_edge, %__here765, %if.end737.if.then886_crit_edge, %__here733, %if.end719.if.then886_crit_edge, %sw.bb709.if.then886_crit_edge, %if.end694.if.then886_crit_edge, %if.end690.if.then886_crit_edge, %sw.bb680.if.then886_crit_edge, %__here675, %if.end648.if.then886_crit_edge, %sw.bb631.if.then886_crit_edge, %if.end620.if.then886_crit_edge, %if.end616.if.then886_crit_edge, %sw.bb600.if.then886_crit_edge, %sw.bb590.if.then886_crit_edge, %if.end575.if.then886_crit_edge, %__here571, %if.end557.if.then886_crit_edge, %__here553, %if.end527.if.then886_crit_edge, %__here523, %sw.bb509.if.then886_crit_edge, %if.end496.if.then886_crit_edge, %__here492, %if.end478.if.then886_crit_edge, %__here474, %sw.bb448.if.then886_crit_edge, %if.end432.if.then886_crit_edge, %__here428, %if.end414.if.then886_crit_edge, %__here410, %if.end384.if.then886_crit_edge, %__here380, %if.end366.if.then886_crit_edge, %__here362, %if.end336.if.then886_crit_edge, %__here332, %sw.bb.if.then886_crit_edge, %__here313, %if.end282.if.then886_crit_edge, %__here245, %__here228, %if.then212.if.then886_crit_edge, %if.end206.if.then886_crit_edge, %__here202, %if.end188.if.then886_crit_edge, %__here148, %__here129, %if.then113.if.then886_crit_edge, %cond.end89.if.then886_crit_edge, %__here33, %if.end19.if.then886_crit_edge, %__here, %cond.end.if.then886_crit_edge
  %error.1.ph = phi i32 [ %call444, %if.end432.if.then886_crit_edge ], [ -117, %__here428 ], [ %call415, %if.end414.if.then886_crit_edge ], [ -117, %__here410 ], [ %call397, %if.end384.if.then886_crit_edge ], [ -117, %__here380 ], [ %call367, %if.end366.if.then886_crit_edge ], [ -117, %__here362 ], [ %call349, %if.end336.if.then886_crit_edge ], [ -117, %__here332 ], [ %call319, %sw.bb.if.then886_crit_edge ], [ %call505, %if.end496.if.then886_crit_edge ], [ -117, %__here492 ], [ %call479, %if.end478.if.then886_crit_edge ], [ -117, %__here474 ], [ %call461, %sw.bb448.if.then886_crit_edge ], [ %call586, %if.end575.if.then886_crit_edge ], [ -117, %__here571 ], [ %call558, %if.end557.if.then886_crit_edge ], [ -117, %__here553 ], [ %call540, %if.end527.if.then886_crit_edge ], [ -117, %__here523 ], [ %call510, %sw.bb509.if.then886_crit_edge ], [ %call596, %sw.bb590.if.then886_crit_edge ], [ %call627, %if.end620.if.then886_crit_edge ], [ %call617, %if.end616.if.then886_crit_edge ], [ %call613, %sw.bb600.if.then886_crit_edge ], [ -117, %__here675 ], [ %call662, %if.end648.if.then886_crit_edge ], [ %call645, %sw.bb631.if.then886_crit_edge ], [ %call705, %if.end694.if.then886_crit_edge ], [ %call691, %if.end690.if.then886_crit_edge ], [ %call687, %sw.bb680.if.then886_crit_edge ], [ -117, %__here765 ], [ %call752, %if.end737.if.then886_crit_edge ], [ -117, %__here733 ], [ %call.i1125, %if.end719.if.then886_crit_edge ], [ %call716, %sw.bb709.if.then886_crit_edge ], [ -117, %__here876 ], [ %call863, %if.end854.if.then886_crit_edge ], [ -117, %__here850 ], [ %call.i1131, %if.end836.if.then886_crit_edge ], [ -117, %__here832 ], [ %call819, %if.end796.if.then886_crit_edge ], [ %call793, %sw.bb770.if.then886_crit_edge ], [ -117, %__here313 ], [ %call.i1119, %if.end282.if.then886_crit_edge ], [ -117, %__here245 ], [ -117, %__here228 ], [ %call215, %if.then212.if.then886_crit_edge ], [ %call207, %if.end206.if.then886_crit_edge ], [ -117, %__here202 ], [ %call189, %if.end188.if.then886_crit_edge ], [ -117, %__here148 ], [ -117, %__here129 ], [ %call116, %if.then113.if.then886_crit_edge ], [ %call108, %cond.end89.if.then886_crit_edge ], [ -117, %__here33 ], [ %call20, %if.end19.if.then886_crit_edge ], [ -117, %__here ], [ %call.i, %cond.end.if.then886_crit_edge ]
  %333 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %bc_mp, align 4
  %335 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %11, align 8
  %pag_agno889 = getelementptr inbounds %struct.xfs_perag, ptr %336, i32 0, i32 1
  %337 = ptrtoint ptr %pag_agno889 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %pag_agno889, align 4
  %339 = call ptr @llvm.returnaddress(i32 0)
  %340 = ptrtoint ptr %339 to i32
  call fastcc void @trace_xfs_rmap_convert_error(ptr noundef %334, i32 noundef %338, i32 noundef %error.1.ph, i32 noundef %340)
  br label %if.end890

if.end890:                                        ; preds = %if.then886, %done
  %error.11166 = phi i32 [ %error.1.ph, %if.then886 ], [ 0, %done ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %r) #11
  ret i32 %error.11166
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rmap_convert_shared(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) #6 align 64 {
entry:
  %r = alloca [4 x %struct.xfs_rmap_irec], align 8
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %r) #11
  %2 = call ptr @memset(ptr %r, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #11
  %3 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %i, align 4, !annotation !175
  %4 = ptrtoint ptr %oinfo to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %oinfo, align 8
  %oi_offset.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 1
  %6 = ptrtoint ptr %oi_offset.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %oi_offset.i, align 8
  %oi_flags.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 2
  %8 = ptrtoint ptr %oi_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oi_flags.i, align 8
  %10 = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp slt i64 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2 = icmp ne i32 %10, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2
  br i1 %or.cond, label %cond.false, label %entry.cond.end_crit_edge, !prof !220

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1510) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = select i1 %unwritten, i32 4, i32 0
  %conv = zext i32 %len to i64
  %add = add i64 %7, %conv
  %11 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_rmap_convert(ptr noundef %1, i32 noundef %15, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo)
  %arrayidx = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 2
  %call = call i32 @xfs_rmap_lookup_le_range(ptr noundef %cur, i32 noundef %bno, i64 noundef %5, i64 noundef %7, i32 noundef %cond, ptr noundef %arrayidx, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end, label %cond.end.if.then766_crit_edge

cond.end.if.then766_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end:                                           ; preds = %cond.end
  %16 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.not = icmp eq i32 %17, 1
  br i1 %cmp.not, label %if.end19, label %__here, !prof !176

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !245
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1525, ptr noundef blockaddress(@xfs_rmap_convert_shared, %__here)) #11
  br label %if.then766

if.end19:                                         ; preds = %if.end
  %rm_offset = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rm_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %7)
  %cmp21.not = icmp ugt i64 %19, %7
  br i1 %cmp21.not, label %cond.false30, label %if.end19.cond.end31_crit_edge, !prof !196

if.end19.cond.end31_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end31

cond.false30:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 1530) #11
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %if.end19.cond.end31_crit_edge
  %20 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rm_offset, align 8
  %rm_blockcount = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rm_blockcount, align 4
  %conv35 = zext i32 %23 to i64
  %add36 = add i64 %21, %conv35
  call void @__sanitizer_cov_trace_cmp8(i64 %add36, i64 %add)
  %cmp37.not = icmp ult i64 %add36, %add
  br i1 %cmp37.not, label %cond.false46, label %cond.end31.cond.end47_crit_edge, !prof !196

cond.end31.cond.end47_crit_edge:                  ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end47

cond.false46:                                     ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 1531) #11
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %cond.end31.cond.end47_crit_edge
  %rm_flags = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rm_flags, align 8
  %and49 = and i32 %25, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and49, i32 %cond)
  %cmp50 = icmp eq i32 %and49, %cond
  br i1 %cmp50, label %cond.end47.cond.end60_crit_edge, label %cond.false59, !prof !176

cond.end47.cond.end60_crit_edge:                  ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end60

cond.false59:                                     ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1532) #11
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false59, %cond.end47.cond.end60_crit_edge
  %and61 = xor i32 %cond, 4
  %26 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rm_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %7)
  %cmp64 = icmp eq i64 %27, %7
  %spec.select = select i1 %cmp64, i32 4, i32 0
  %28 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rm_blockcount, align 4
  %conv72 = zext i32 %29 to i64
  %add73 = add i64 %27, %conv72
  call void @__sanitizer_cov_trace_cmp8(i64 %add73, i64 %add)
  %cmp74 = icmp eq i64 %add73, %add
  %or77 = or i32 %spec.select, 8
  %state.1 = select i1 %cmp74, i32 %or77, i32 %spec.select
  %call80 = call i32 @xfs_rmap_find_left_neighbor(ptr noundef %cur, i32 noundef %bno, i64 noundef %5, i64 noundef %7, i32 noundef %and61, ptr noundef nonnull %r, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %cond.end60.if.then766_crit_edge

cond.end60.if.then766_crit_edge:                  ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end83:                                         ; preds = %cond.end60
  %30 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool84.not = icmp eq i32 %31, 0
  br i1 %tobool84.not, label %if.end83.if.end110_crit_edge, label %if.then85

if.end83.if.end110_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

if.then85:                                        ; preds = %if.end83
  %32 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %r, align 8
  %rm_blockcount89 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %r, i32 0, i32 1
  %34 = ptrtoint ptr %rm_blockcount89 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rm_blockcount89, align 4
  %add90 = add i32 %35, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %add90, i32 %bno)
  %cmp91 = icmp ugt i32 %add90, %bno
  br i1 %cmp91, label %__here100, label %if.end104, !prof !196

__here100:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !246
  call void @xfs_corruption_error(ptr noundef nonnull @.str.34, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1553, ptr noundef blockaddress(@xfs_rmap_convert_shared, %__here100)) #11
  br label %if.then766

if.end104:                                        ; preds = %if.then85
  %or86 = or i32 %state.1, 64
  %rm_owner.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %r, i32 0, i32 2
  %36 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %rm_owner.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %37)
  %cmp.i = icmp ne i64 %37, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %5)
  %cmp2.not.i = icmp eq i64 %37, %5
  %or.cond.i = and i1 %cmp.i, %cmp2.not.i
  br i1 %or.cond.i, label %if.end4.i, label %if.end104.if.end110_crit_edge

if.end104.if.end110_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

if.end4.i:                                        ; preds = %if.end104
  %rm_flags.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %r, i32 0, i32 4
  %38 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rm_flags.i, align 8
  %.masked1012 = and i32 %39, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %.masked1012, i32 %and61)
  %40 = icmp eq i32 %.masked1012, %and61
  br i1 %40, label %xfs_rmap_is_mergeable.exit, label %if.end4.i.if.end110_crit_edge

if.end4.i.if.end110_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

xfs_rmap_is_mergeable.exit:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %xor18.i = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor18.i)
  %tobool19.not.i = icmp eq i32 %xor18.i, 0
  %or108 = or i32 %state.1, 65
  %spec.select1010 = select i1 %tobool19.not.i, i32 %or108, i32 %or86
  br label %if.end110

if.end110:                                        ; preds = %xfs_rmap_is_mergeable.exit, %if.end4.i.if.end110_crit_edge, %if.end104.if.end110_crit_edge, %if.end83.if.end110_crit_edge
  %state.2 = phi i32 [ %state.1, %if.end83.if.end110_crit_edge ], [ %or86, %if.end104.if.end110_crit_edge ], [ %or86, %if.end4.i.if.end110_crit_edge ], [ %spec.select1010, %xfs_rmap_is_mergeable.exit ]
  %add111 = add i32 %len, %bno
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %41 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add111, ptr %bc_rec.i, align 8
  %rm_blockcount.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %bc_rec.i, i32 0, i32 1
  %42 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %len, ptr %rm_blockcount.i, align 4
  %rm_owner.i920 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 1
  %43 = ptrtoint ptr %rm_owner.i920 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %5, ptr %rm_owner.i920, align 8
  %rm_offset.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 2
  %44 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %add, ptr %rm_offset.i, align 8
  %rm_flags.i921 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 3
  %45 = ptrtoint ptr %rm_flags.i921 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and61, ptr %rm_flags.i921, align 8
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool115.not = icmp eq i32 %call.i, 0
  br i1 %tobool115.not, label %if.end117, label %if.end110.if.then766_crit_edge

if.end110.if.then766_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end117:                                        ; preds = %if.end110
  %46 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool118.not = icmp eq i32 %47, 0
  br i1 %tobool118.not, label %if.end117.if.end174_crit_edge, label %if.then119

if.end117.if.end174_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

if.then119:                                       ; preds = %if.end117
  %or120 = or i32 %state.2, 128
  %arrayidx121 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1
  %call122 = call i32 @xfs_rmap_get_rec(ptr noundef %cur, ptr noundef %arrayidx121, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %if.then119.if.then766_crit_edge

if.then119.if.then766_crit_edge:                  ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end125:                                        ; preds = %if.then119
  %48 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp126.not = icmp eq i32 %49, 1
  br i1 %cmp126.not, label %if.end139, label %__here135, !prof !176

__here135:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !247
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1571, ptr noundef blockaddress(@xfs_rmap_convert_shared, %__here135)) #11
  br label %if.then766

if.end139:                                        ; preds = %if.end125
  %50 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx121, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add111, i32 %51)
  %cmp143 = icmp ugt i32 %add111, %51
  br i1 %cmp143, label %__here152, label %if.end156, !prof !196

__here152:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !248
  call void @xfs_corruption_error(ptr noundef nonnull @.str.35, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1575, ptr noundef blockaddress(@xfs_rmap_convert_shared, %__here152)) #11
  br label %if.then766

if.end156:                                        ; preds = %if.end139
  %52 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bc_mp, align 4
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %11, align 8
  %pag_agno159 = getelementptr inbounds %struct.xfs_perag, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %pag_agno159 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pag_agno159, align 4
  %rm_blockcount163 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %rm_blockcount163 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rm_blockcount163, align 4
  %rm_owner = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 2
  %60 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %rm_owner, align 8
  %rm_offset166 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 3
  %62 = ptrtoint ptr %rm_offset166 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %rm_offset166, align 8
  %rm_flags168 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 4
  %64 = ptrtoint ptr %rm_flags168 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rm_flags168, align 8
  call fastcc void @trace_xfs_rmap_find_right_neighbor_result(ptr noundef %53, i32 noundef %57, i32 noundef %51, i32 noundef %59, i64 noundef %61, i64 noundef %63, i32 noundef %65)
  %66 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %67)
  %cmp.i923 = icmp ne i64 %67, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %67, i64 %5)
  %cmp2.not.i924 = icmp eq i64 %67, %5
  %or.cond.i925 = and i1 %cmp.i923, %cmp2.not.i924
  br i1 %or.cond.i925, label %if.end4.i928, label %if.end156.if.end174_crit_edge

if.end156.if.end174_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

if.end4.i928:                                     ; preds = %if.end156
  %68 = ptrtoint ptr %rm_flags168 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rm_flags168, align 8
  %.masked = and i32 %69, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %.masked, i32 %and61)
  %70 = icmp eq i32 %.masked, %and61
  br i1 %70, label %xfs_rmap_is_mergeable.exit933, label %if.end4.i928.if.end174_crit_edge

if.end4.i928.if.end174_crit_edge:                 ; preds = %if.end4.i928
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

xfs_rmap_is_mergeable.exit933:                    ; preds = %if.end4.i928
  call void @__sanitizer_cov_trace_pc() #13
  %xor18.i929 = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor18.i929)
  %tobool19.not.i930 = icmp eq i32 %xor18.i929, 0
  %or172 = or i32 %state.2, 130
  %spec.select1011 = select i1 %tobool19.not.i930, i32 %or172, i32 %or120
  br label %if.end174

if.end174:                                        ; preds = %xfs_rmap_is_mergeable.exit933, %if.end4.i928.if.end174_crit_edge, %if.end156.if.end174_crit_edge, %if.end117.if.end174_crit_edge
  %state.3 = phi i32 [ %state.2, %if.end117.if.end174_crit_edge ], [ %or120, %if.end156.if.end174_crit_edge ], [ %or120, %if.end4.i928.if.end174_crit_edge ], [ %spec.select1011, %xfs_rmap_is_mergeable.exit933 ]
  %and175 = and i32 %state.3, 15
  %71 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %11, align 8
  %pag_agno190 = getelementptr inbounds %struct.xfs_perag, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %pag_agno190 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pag_agno190, align 4
  %75 = call ptr @llvm.returnaddress(i32 0)
  %76 = ptrtoint ptr %75 to i32
  call fastcc void @trace_xfs_rmap_convert_state(ptr noundef %1, i32 noundef %74, i32 noundef %state.3, i32 noundef %76)
  %77 = zext i32 %and175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and175, label %if.end188.unreachabledefault [
    i32 15, label %sw.bb
    i32 13, label %sw.bb263
    i32 14, label %sw.bb318
    i32 12, label %sw.bb377
    i32 5, label %sw.bb415
    i32 4, label %sw.bb493
    i32 10, label %sw.bb538
    i32 8, label %sw.bb617
    i32 0, label %sw.bb660
    i32 7, label %if.end174.sw.bb761_crit_edge
    i32 11, label %if.end174.sw.bb761_crit_edge1013
    i32 6, label %if.end174.sw.bb761_crit_edge1014
    i32 9, label %if.end174.sw.bb761_crit_edge1015
    i32 3, label %if.end174.sw.bb761_crit_edge1016
    i32 1, label %if.end174.sw.bb761_crit_edge1017
    i32 2, label %if.end174.sw.bb761_crit_edge1018
  ]

if.end174.sw.bb761_crit_edge1018:                 ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb761

if.end174.sw.bb761_crit_edge1017:                 ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb761

if.end174.sw.bb761_crit_edge1016:                 ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb761

if.end174.sw.bb761_crit_edge1015:                 ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb761

if.end174.sw.bb761_crit_edge1014:                 ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb761

if.end174.sw.bb761_crit_edge1013:                 ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb761

if.end174.sw.bb761_crit_edge:                     ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb761

sw.bb:                                            ; preds = %if.end174
  %arrayidx192 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1
  %78 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx192, align 8
  %rm_blockcount195 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %rm_blockcount195 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rm_blockcount195, align 4
  %rm_owner197 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 2
  %82 = ptrtoint ptr %rm_owner197 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %rm_owner197, align 8
  %rm_offset199 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 3
  %84 = ptrtoint ptr %rm_offset199 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %rm_offset199, align 8
  %rm_flags201 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 4
  %86 = ptrtoint ptr %rm_flags201 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rm_flags201, align 8
  %call202 = call fastcc i32 @xfs_rmap_delete(ptr noundef %cur, i32 noundef %79, i32 noundef %81, i64 noundef %83, i64 noundef %85, i32 noundef %87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.end205, label %sw.bb.if.then766_crit_edge

sw.bb.if.then766_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end205:                                        ; preds = %sw.bb
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx, align 8
  %90 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rm_blockcount, align 4
  %rm_owner211 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 2, i32 2
  %92 = ptrtoint ptr %rm_owner211 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %rm_owner211, align 8
  %94 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %rm_offset, align 8
  %96 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rm_flags, align 8
  %call216 = call fastcc i32 @xfs_rmap_delete(ptr noundef %cur, i32 noundef %89, i32 noundef %91, i64 noundef %93, i64 noundef %95, i32 noundef %97)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.end219, label %if.end205.if.then766_crit_edge

if.end205.if.then766_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end219:                                        ; preds = %if.end205
  %arrayidx220 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %98 = call ptr @memcpy(ptr %arrayidx220, ptr %r, i32 32)
  %99 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx220, align 8
  %rm_blockcount225 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 1
  %101 = ptrtoint ptr %rm_blockcount225 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rm_blockcount225, align 4
  %rm_owner227 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 2
  %103 = ptrtoint ptr %rm_owner227 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %rm_owner227, align 8
  %rm_offset229 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 3
  %105 = ptrtoint ptr %rm_offset229 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %rm_offset229, align 8
  %rm_flags231 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 4
  %107 = ptrtoint ptr %rm_flags231 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rm_flags231, align 8
  %109 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %100, ptr %bc_rec.i, align 8
  %110 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %102, ptr %rm_blockcount.i, align 4
  %111 = ptrtoint ptr %rm_owner.i920 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %104, ptr %rm_owner.i920, align 8
  %112 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %106, ptr %rm_offset.i, align 8
  %113 = ptrtoint ptr %rm_flags.i921 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %108, ptr %rm_flags.i921, align 8
  %call.i939 = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i939)
  %tobool233.not = icmp eq i32 %call.i939, 0
  br i1 %tobool233.not, label %if.end235, label %if.end219.if.then766_crit_edge

if.end219.if.then766_crit_edge:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end235:                                        ; preds = %if.end219
  %114 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %115)
  %cmp236.not = icmp eq i32 %115, 1
  br i1 %cmp236.not, label %if.end249, label %__here245, !prof !176

__here245:                                        ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !249
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1625, ptr noundef blockaddress(@xfs_rmap_convert_shared, %__here245)) #11
  br label %if.then766

if.end249:                                        ; preds = %if.end235
  %116 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rm_blockcount, align 4
  %118 = ptrtoint ptr %rm_blockcount195 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rm_blockcount195, align 4
  %add254 = add i32 %119, %117
  %120 = ptrtoint ptr %rm_blockcount225 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rm_blockcount225, align 4
  %add257 = add i32 %add254, %121
  store i32 %add257, ptr %rm_blockcount225, align 4
  %call259 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx220)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259)
  %tobool260.not = icmp eq i32 %call259, 0
  br i1 %tobool260.not, label %if.end249.done_crit_edge, label %if.end249.if.then766_crit_edge

if.end249.if.then766_crit_edge:                   ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end249.done_crit_edge:                         ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb263:                                         ; preds = %if.end174
  %122 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx, align 8
  %124 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rm_blockcount, align 4
  %rm_owner269 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 2, i32 2
  %126 = ptrtoint ptr %rm_owner269 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %rm_owner269, align 8
  %128 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %rm_offset, align 8
  %130 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rm_flags, align 8
  %call274 = call fastcc i32 @xfs_rmap_delete(ptr noundef %cur, i32 noundef %123, i32 noundef %125, i64 noundef %127, i64 noundef %129, i32 noundef %131)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call274)
  %tobool275.not = icmp eq i32 %call274, 0
  br i1 %tobool275.not, label %if.end277, label %sw.bb263.if.then766_crit_edge

sw.bb263.if.then766_crit_edge:                    ; preds = %sw.bb263
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end277:                                        ; preds = %sw.bb263
  %arrayidx278 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %132 = call ptr @memcpy(ptr %arrayidx278, ptr %r, i32 32)
  %133 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx278, align 8
  %rm_blockcount283 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 1
  %135 = ptrtoint ptr %rm_blockcount283 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rm_blockcount283, align 4
  %rm_owner285 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 2
  %137 = ptrtoint ptr %rm_owner285 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %rm_owner285, align 8
  %rm_offset287 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 3
  %139 = ptrtoint ptr %rm_offset287 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %rm_offset287, align 8
  %rm_flags289 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 4
  %141 = ptrtoint ptr %rm_flags289 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %rm_flags289, align 8
  %143 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %134, ptr %bc_rec.i, align 8
  %144 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %136, ptr %rm_blockcount.i, align 4
  %145 = ptrtoint ptr %rm_owner.i920 to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %138, ptr %rm_owner.i920, align 8
  %146 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %140, ptr %rm_offset.i, align 8
  %147 = ptrtoint ptr %rm_flags.i921 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %142, ptr %rm_flags.i921, align 8
  %call.i945 = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i945)
  %tobool291.not = icmp eq i32 %call.i945, 0
  br i1 %tobool291.not, label %if.end293, label %if.end277.if.then766_crit_edge

if.end277.if.then766_crit_edge:                   ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end293:                                        ; preds = %if.end277
  %148 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %149)
  %cmp294.not = icmp eq i32 %149, 1
  br i1 %cmp294.not, label %if.end307, label %__here303, !prof !176

__here303:                                        ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !250
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1651, ptr noundef blockaddress(@xfs_rmap_convert_shared, %__here303)) #11
  br label %if.then766

if.end307:                                        ; preds = %if.end293
  %150 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rm_blockcount, align 4
  %152 = ptrtoint ptr %rm_blockcount283 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %rm_blockcount283, align 4
  %add312 = add i32 %153, %151
  store i32 %add312, ptr %rm_blockcount283, align 4
  %call314 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx278)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314)
  %tobool315.not = icmp eq i32 %call314, 0
  br i1 %tobool315.not, label %if.end307.done_crit_edge, label %if.end307.if.then766_crit_edge

if.end307.if.then766_crit_edge:                   ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end307.done_crit_edge:                         ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb318:                                         ; preds = %if.end174
  %arrayidx319 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1
  %154 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx319, align 8
  %rm_blockcount322 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 1
  %156 = ptrtoint ptr %rm_blockcount322 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %rm_blockcount322, align 4
  %rm_owner324 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 2
  %158 = ptrtoint ptr %rm_owner324 to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %rm_owner324, align 8
  %rm_offset326 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 3
  %160 = ptrtoint ptr %rm_offset326 to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %rm_offset326, align 8
  %rm_flags328 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1, i32 4
  %162 = ptrtoint ptr %rm_flags328 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %rm_flags328, align 8
  %call329 = call fastcc i32 @xfs_rmap_delete(ptr noundef %cur, i32 noundef %155, i32 noundef %157, i64 noundef %159, i64 noundef %161, i32 noundef %163)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call329)
  %tobool330.not = icmp eq i32 %call329, 0
  br i1 %tobool330.not, label %if.end332, label %sw.bb318.if.then766_crit_edge

sw.bb318.if.then766_crit_edge:                    ; preds = %sw.bb318
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end332:                                        ; preds = %sw.bb318
  %arrayidx333 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %164 = call ptr @memcpy(ptr %arrayidx333, ptr %arrayidx, i32 32)
  %165 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx333, align 8
  %rm_blockcount338 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 1
  %167 = ptrtoint ptr %rm_blockcount338 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %rm_blockcount338, align 4
  %rm_owner340 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 2
  %169 = ptrtoint ptr %rm_owner340 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %rm_owner340, align 8
  %rm_offset342 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 3
  %171 = ptrtoint ptr %rm_offset342 to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %rm_offset342, align 8
  %rm_flags344 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 4
  %173 = ptrtoint ptr %rm_flags344 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rm_flags344, align 8
  %175 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %166, ptr %bc_rec.i, align 8
  %176 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %168, ptr %rm_blockcount.i, align 4
  %177 = ptrtoint ptr %rm_owner.i920 to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %170, ptr %rm_owner.i920, align 8
  %178 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 %172, ptr %rm_offset.i, align 8
  %179 = ptrtoint ptr %rm_flags.i921 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %174, ptr %rm_flags.i921, align 8
  %call.i951 = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i951)
  %tobool346.not = icmp eq i32 %call.i951, 0
  br i1 %tobool346.not, label %if.end348, label %if.end332.if.then766_crit_edge

if.end332.if.then766_crit_edge:                   ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end348:                                        ; preds = %if.end332
  %180 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %181)
  %cmp349.not = icmp eq i32 %181, 1
  br i1 %cmp349.not, label %if.end362, label %__here358, !prof !176

__here358:                                        ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !251
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1677, ptr noundef blockaddress(@xfs_rmap_convert_shared, %__here358)) #11
  br label %if.then766

if.end362:                                        ; preds = %if.end348
  %182 = ptrtoint ptr %rm_blockcount322 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %rm_blockcount322, align 4
  %184 = ptrtoint ptr %rm_blockcount338 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %rm_blockcount338, align 4
  %add367 = add i32 %185, %183
  store i32 %add367, ptr %rm_blockcount338, align 4
  %186 = ptrtoint ptr %rm_flags328 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %rm_flags328, align 8
  %188 = ptrtoint ptr %rm_flags344 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %rm_flags344, align 8
  %call373 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx333)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call373)
  %tobool374.not = icmp eq i32 %call373, 0
  br i1 %tobool374.not, label %if.end362.done_crit_edge, label %if.end362.if.then766_crit_edge

if.end362.if.then766_crit_edge:                   ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end362.done_crit_edge:                         ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb377:                                         ; preds = %if.end174
  %arrayidx378 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %189 = call ptr @memcpy(ptr %arrayidx378, ptr %arrayidx, i32 32)
  %190 = ptrtoint ptr %arrayidx378 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx378, align 8
  %rm_blockcount383 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 1
  %192 = ptrtoint ptr %rm_blockcount383 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rm_blockcount383, align 4
  %rm_owner385 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 2
  %194 = ptrtoint ptr %rm_owner385 to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %rm_owner385, align 8
  %rm_offset387 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 3
  %196 = ptrtoint ptr %rm_offset387 to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %rm_offset387, align 8
  %rm_flags389 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 4
  %198 = ptrtoint ptr %rm_flags389 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %rm_flags389, align 8
  %200 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %191, ptr %bc_rec.i, align 8
  %201 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %193, ptr %rm_blockcount.i, align 4
  %202 = ptrtoint ptr %rm_owner.i920 to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %195, ptr %rm_owner.i920, align 8
  %203 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 %197, ptr %rm_offset.i, align 8
  %204 = ptrtoint ptr %rm_flags.i921 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %199, ptr %rm_flags.i921, align 8
  %call.i957 = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i957)
  %tobool391.not = icmp eq i32 %call.i957, 0
  br i1 %tobool391.not, label %if.end393, label %sw.bb377.if.then766_crit_edge

sw.bb377.if.then766_crit_edge:                    ; preds = %sw.bb377
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end393:                                        ; preds = %sw.bb377
  %205 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %206)
  %cmp394.not = icmp eq i32 %206, 1
  br i1 %cmp394.not, label %if.end407, label %__here403, !prof !176

__here403:                                        ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !252
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1700, ptr noundef blockaddress(@xfs_rmap_convert_shared, %__here403)) #11
  br label %if.then766

if.end407:                                        ; preds = %if.end393
  %207 = ptrtoint ptr %rm_flags389 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %and61, ptr %rm_flags389, align 8
  %call411 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx378)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call411)
  %tobool412.not = icmp eq i32 %call411, 0
  br i1 %tobool412.not, label %if.end407.done_crit_edge, label %if.end407.if.then766_crit_edge

if.end407.if.then766_crit_edge:                   ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end407.done_crit_edge:                         ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb415:                                         ; preds = %if.end174
  %arrayidx416 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %208 = call ptr @memcpy(ptr %arrayidx416, ptr %arrayidx, i32 32)
  %209 = ptrtoint ptr %arrayidx416 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx416, align 8
  %rm_blockcount421 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 1
  %211 = ptrtoint ptr %rm_blockcount421 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %rm_blockcount421, align 4
  %rm_owner423 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 2
  %213 = ptrtoint ptr %rm_owner423 to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %rm_owner423, align 8
  %rm_offset425 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 3
  %215 = ptrtoint ptr %rm_offset425 to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %rm_offset425, align 8
  %rm_flags427 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 4
  %217 = ptrtoint ptr %rm_flags427 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %rm_flags427, align 8
  %call428 = call fastcc i32 @xfs_rmap_delete(ptr noundef %cur, i32 noundef %210, i32 noundef %212, i64 noundef %214, i64 noundef %216, i32 noundef %218)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call428)
  %tobool429.not = icmp eq i32 %call428, 0
  br i1 %tobool429.not, label %if.end431, label %sw.bb415.if.then766_crit_edge

sw.bb415.if.then766_crit_edge:                    ; preds = %sw.bb415
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end431:                                        ; preds = %sw.bb415
  %219 = ptrtoint ptr %rm_offset425 to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %rm_offset425, align 8
  %add435 = add i64 %220, %conv
  store i64 %add435, ptr %rm_offset425, align 8
  %221 = ptrtoint ptr %arrayidx416 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx416, align 8
  %add438 = add i32 %222, %len
  store i32 %add438, ptr %arrayidx416, align 8
  %223 = ptrtoint ptr %rm_blockcount421 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %rm_blockcount421, align 4
  %sub = sub i32 %224, %len
  store i32 %sub, ptr %rm_blockcount421, align 4
  %225 = ptrtoint ptr %rm_owner423 to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %rm_owner423, align 8
  %227 = ptrtoint ptr %rm_flags427 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %rm_flags427, align 8
  %call451 = call i32 @xfs_rmap_insert(ptr noundef %cur, i32 noundef %add438, i32 noundef %sub, i64 noundef %226, i64 noundef %add435, i32 noundef %228)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call451)
  %tobool452.not = icmp eq i32 %call451, 0
  br i1 %tobool452.not, label %if.end454, label %if.end431.if.then766_crit_edge

if.end431.if.then766_crit_edge:                   ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end454:                                        ; preds = %if.end431
  %229 = call ptr @memcpy(ptr %arrayidx416, ptr %r, i32 32)
  %230 = ptrtoint ptr %arrayidx416 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx416, align 8
  %232 = ptrtoint ptr %rm_blockcount421 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %rm_blockcount421, align 4
  %234 = ptrtoint ptr %rm_owner423 to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %rm_owner423, align 8
  %236 = ptrtoint ptr %rm_offset425 to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %rm_offset425, align 8
  %238 = ptrtoint ptr %rm_flags427 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %rm_flags427, align 8
  %240 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %231, ptr %bc_rec.i, align 8
  %241 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %233, ptr %rm_blockcount.i, align 4
  %242 = ptrtoint ptr %rm_owner.i920 to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 %235, ptr %rm_owner.i920, align 8
  %243 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %243)
  store i64 %237, ptr %rm_offset.i, align 8
  %244 = ptrtoint ptr %rm_flags.i921 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %239, ptr %rm_flags.i921, align 8
  %call.i963 = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i963)
  %tobool468.not = icmp eq i32 %call.i963, 0
  br i1 %tobool468.not, label %if.end470, label %if.end454.if.then766_crit_edge

if.end454.if.then766_crit_edge:                   ; preds = %if.end454
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end470:                                        ; preds = %if.end454
  %245 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %246)
  %cmp471.not = icmp eq i32 %246, 1
  br i1 %cmp471.not, label %if.end484, label %__here480, !prof !176

__here480:                                        ; preds = %if.end470
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !253
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1735, ptr noundef blockaddress(@xfs_rmap_convert_shared, %__here480)) #11
  br label %if.then766

if.end484:                                        ; preds = %if.end470
  %247 = ptrtoint ptr %rm_blockcount421 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %rm_blockcount421, align 4
  %add487 = add i32 %248, %len
  store i32 %add487, ptr %rm_blockcount421, align 4
  %call489 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx416)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call489)
  %tobool490.not = icmp eq i32 %call489, 0
  br i1 %tobool490.not, label %if.end484.done_crit_edge, label %if.end484.if.then766_crit_edge

if.end484.if.then766_crit_edge:                   ; preds = %if.end484
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end484.done_crit_edge:                         ; preds = %if.end484
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb493:                                         ; preds = %if.end174
  %arrayidx494 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %249 = call ptr @memcpy(ptr %arrayidx494, ptr %arrayidx, i32 32)
  %250 = ptrtoint ptr %arrayidx494 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx494, align 8
  %rm_blockcount499 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 1
  %252 = ptrtoint ptr %rm_blockcount499 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %rm_blockcount499, align 4
  %rm_owner501 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 2
  %254 = ptrtoint ptr %rm_owner501 to i32
  call void @__asan_load8_noabort(i32 %254)
  %255 = load i64, ptr %rm_owner501, align 8
  %rm_offset503 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 3
  %256 = ptrtoint ptr %rm_offset503 to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %rm_offset503, align 8
  %rm_flags505 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 4
  %258 = ptrtoint ptr %rm_flags505 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %rm_flags505, align 8
  %call506 = call fastcc i32 @xfs_rmap_delete(ptr noundef %cur, i32 noundef %251, i32 noundef %253, i64 noundef %255, i64 noundef %257, i32 noundef %259)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call506)
  %tobool507.not = icmp eq i32 %call506, 0
  br i1 %tobool507.not, label %if.end509, label %sw.bb493.if.then766_crit_edge

sw.bb493.if.then766_crit_edge:                    ; preds = %sw.bb493
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end509:                                        ; preds = %sw.bb493
  %260 = ptrtoint ptr %rm_offset503 to i32
  call void @__asan_load8_noabort(i32 %260)
  %261 = load i64, ptr %rm_offset503, align 8
  %add513 = add i64 %261, %conv
  store i64 %add513, ptr %rm_offset503, align 8
  %262 = ptrtoint ptr %arrayidx494 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx494, align 8
  %add516 = add i32 %263, %len
  store i32 %add516, ptr %arrayidx494, align 8
  %264 = ptrtoint ptr %rm_blockcount499 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %rm_blockcount499, align 4
  %sub519 = sub i32 %265, %len
  store i32 %sub519, ptr %rm_blockcount499, align 4
  %266 = ptrtoint ptr %rm_owner501 to i32
  call void @__asan_load8_noabort(i32 %266)
  %267 = load i64, ptr %rm_owner501, align 8
  %268 = ptrtoint ptr %rm_flags505 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %rm_flags505, align 8
  %call530 = call i32 @xfs_rmap_insert(ptr noundef %cur, i32 noundef %add516, i32 noundef %sub519, i64 noundef %267, i64 noundef %add513, i32 noundef %269)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call530)
  %tobool531.not = icmp eq i32 %call530, 0
  br i1 %tobool531.not, label %if.end533, label %if.end509.if.then766_crit_edge

if.end509.if.then766_crit_edge:                   ; preds = %if.end509
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end533:                                        ; preds = %if.end509
  %call534 = call i32 @xfs_rmap_insert(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, i64 noundef %5, i64 noundef %7, i32 noundef %and61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call534)
  %tobool535.not = icmp eq i32 %call534, 0
  br i1 %tobool535.not, label %if.end533.done_crit_edge, label %if.end533.if.then766_crit_edge

if.end533.if.then766_crit_edge:                   ; preds = %if.end533
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end533.done_crit_edge:                         ; preds = %if.end533
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb538:                                         ; preds = %if.end174
  %arrayidx539 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %270 = call ptr @memcpy(ptr %arrayidx539, ptr %arrayidx, i32 32)
  %271 = ptrtoint ptr %arrayidx539 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx539, align 8
  %rm_blockcount544 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 1
  %273 = ptrtoint ptr %rm_blockcount544 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %rm_blockcount544, align 4
  %rm_owner546 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 2
  %275 = ptrtoint ptr %rm_owner546 to i32
  call void @__asan_load8_noabort(i32 %275)
  %276 = load i64, ptr %rm_owner546, align 8
  %rm_offset548 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 3
  %277 = ptrtoint ptr %rm_offset548 to i32
  call void @__asan_load8_noabort(i32 %277)
  %278 = load i64, ptr %rm_offset548, align 8
  %rm_flags550 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 4
  %279 = ptrtoint ptr %rm_flags550 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %rm_flags550, align 8
  %281 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %272, ptr %bc_rec.i, align 8
  %282 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %274, ptr %rm_blockcount.i, align 4
  %283 = ptrtoint ptr %rm_owner.i920 to i32
  call void @__asan_store8_noabort(i32 %283)
  store i64 %276, ptr %rm_owner.i920, align 8
  %284 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %284)
  store i64 %278, ptr %rm_offset.i, align 8
  %285 = ptrtoint ptr %rm_flags.i921 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %280, ptr %rm_flags.i921, align 8
  %call.i969 = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i969)
  %tobool552.not = icmp eq i32 %call.i969, 0
  br i1 %tobool552.not, label %if.end554, label %sw.bb538.if.then766_crit_edge

sw.bb538.if.then766_crit_edge:                    ; preds = %sw.bb538
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end554:                                        ; preds = %sw.bb538
  %286 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %287)
  %cmp555.not = icmp eq i32 %287, 1
  br i1 %cmp555.not, label %if.end568, label %__here564, !prof !176

__here564:                                        ; preds = %if.end554
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !254
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1780, ptr noundef blockaddress(@xfs_rmap_convert_shared, %__here564)) #11
  br label %if.then766

if.end568:                                        ; preds = %if.end554
  %288 = ptrtoint ptr %rm_offset548 to i32
  call void @__asan_load8_noabort(i32 %288)
  %289 = load i64, ptr %rm_offset548, align 8
  %sub571 = sub i64 %7, %289
  %conv572 = trunc i64 %sub571 to i32
  %290 = ptrtoint ptr %rm_blockcount544 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %conv572, ptr %rm_blockcount544, align 4
  %call576 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx539)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call576)
  %tobool577.not = icmp eq i32 %call576, 0
  br i1 %tobool577.not, label %if.end579, label %if.end568.if.then766_crit_edge

if.end568.if.then766_crit_edge:                   ; preds = %if.end568
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end579:                                        ; preds = %if.end568
  %arrayidx581 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 1
  %291 = call ptr @memcpy(ptr %arrayidx539, ptr %arrayidx581, i32 32)
  %292 = ptrtoint ptr %arrayidx539 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx539, align 8
  %294 = ptrtoint ptr %rm_blockcount544 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %rm_blockcount544, align 4
  %296 = ptrtoint ptr %rm_owner546 to i32
  call void @__asan_load8_noabort(i32 %296)
  %297 = load i64, ptr %rm_owner546, align 8
  %298 = ptrtoint ptr %rm_offset548 to i32
  call void @__asan_load8_noabort(i32 %298)
  %299 = load i64, ptr %rm_offset548, align 8
  %300 = ptrtoint ptr %rm_flags550 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %rm_flags550, align 8
  %call592 = call fastcc i32 @xfs_rmap_delete(ptr noundef %cur, i32 noundef %293, i32 noundef %295, i64 noundef %297, i64 noundef %299, i32 noundef %301)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call592)
  %tobool593.not = icmp eq i32 %call592, 0
  br i1 %tobool593.not, label %if.end595, label %if.end579.if.then766_crit_edge

if.end579.if.then766_crit_edge:                   ; preds = %if.end579
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end595:                                        ; preds = %if.end579
  %302 = ptrtoint ptr %rm_offset548 to i32
  call void @__asan_store8_noabort(i32 %302)
  store i64 %7, ptr %rm_offset548, align 8
  %303 = ptrtoint ptr %arrayidx539 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %bno, ptr %arrayidx539, align 8
  %304 = ptrtoint ptr %rm_blockcount544 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %rm_blockcount544, align 4
  %add602 = add i32 %305, %len
  store i32 %add602, ptr %rm_blockcount544, align 4
  %306 = ptrtoint ptr %rm_owner546 to i32
  call void @__asan_load8_noabort(i32 %306)
  %307 = load i64, ptr %rm_owner546, align 8
  %308 = ptrtoint ptr %rm_flags550 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %rm_flags550, align 8
  %call613 = call i32 @xfs_rmap_insert(ptr noundef %cur, i32 noundef %bno, i32 noundef %add602, i64 noundef %307, i64 noundef %7, i32 noundef %309)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call613)
  %tobool614.not = icmp eq i32 %call613, 0
  br i1 %tobool614.not, label %if.end595.done_crit_edge, label %if.end595.if.then766_crit_edge

if.end595.if.then766_crit_edge:                   ; preds = %if.end595
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end595.done_crit_edge:                         ; preds = %if.end595
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb617:                                         ; preds = %if.end174
  %arrayidx618 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %310 = call ptr @memcpy(ptr %arrayidx618, ptr %arrayidx, i32 32)
  %311 = ptrtoint ptr %arrayidx618 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %arrayidx618, align 8
  %rm_blockcount623 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 1
  %313 = ptrtoint ptr %rm_blockcount623 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %rm_blockcount623, align 4
  %rm_owner625 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 2
  %315 = ptrtoint ptr %rm_owner625 to i32
  call void @__asan_load8_noabort(i32 %315)
  %316 = load i64, ptr %rm_owner625, align 8
  %rm_offset627 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 3
  %317 = ptrtoint ptr %rm_offset627 to i32
  call void @__asan_load8_noabort(i32 %317)
  %318 = load i64, ptr %rm_offset627, align 8
  %rm_flags629 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 4
  %319 = ptrtoint ptr %rm_flags629 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %rm_flags629, align 8
  %321 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %312, ptr %bc_rec.i, align 8
  %322 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %314, ptr %rm_blockcount.i, align 4
  %323 = ptrtoint ptr %rm_owner.i920 to i32
  call void @__asan_store8_noabort(i32 %323)
  store i64 %316, ptr %rm_owner.i920, align 8
  %324 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %324)
  store i64 %318, ptr %rm_offset.i, align 8
  %325 = ptrtoint ptr %rm_flags.i921 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %320, ptr %rm_flags.i921, align 8
  %call.i975 = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i975)
  %tobool631.not = icmp eq i32 %call.i975, 0
  br i1 %tobool631.not, label %if.end633, label %sw.bb617.if.then766_crit_edge

sw.bb617.if.then766_crit_edge:                    ; preds = %sw.bb617
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end633:                                        ; preds = %sw.bb617
  %326 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %327)
  %cmp634.not = icmp eq i32 %327, 1
  br i1 %cmp634.not, label %if.end647, label %__here643, !prof !176

__here643:                                        ; preds = %if.end633
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !255
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1815, ptr noundef blockaddress(@xfs_rmap_convert_shared, %__here643)) #11
  br label %if.then766

if.end647:                                        ; preds = %if.end633
  %328 = ptrtoint ptr %rm_blockcount623 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %rm_blockcount623, align 4
  %sub650 = sub i32 %329, %len
  store i32 %sub650, ptr %rm_blockcount623, align 4
  %call652 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx618)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call652)
  %tobool653.not = icmp eq i32 %call652, 0
  br i1 %tobool653.not, label %if.end655, label %if.end647.if.then766_crit_edge

if.end647.if.then766_crit_edge:                   ; preds = %if.end647
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end655:                                        ; preds = %if.end647
  %call656 = call i32 @xfs_rmap_insert(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, i64 noundef %5, i64 noundef %7, i32 noundef %and61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call656)
  %tobool657.not = icmp eq i32 %call656, 0
  br i1 %tobool657.not, label %if.end655.done_crit_edge, label %if.end655.if.then766_crit_edge

if.end655.if.then766_crit_edge:                   ; preds = %if.end655
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end655.done_crit_edge:                         ; preds = %if.end655
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb660:                                         ; preds = %if.end174
  %arrayidx662 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3
  %330 = ptrtoint ptr %arrayidx662 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %add111, ptr %arrayidx662, align 8
  %rm_owner665 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 2
  %331 = ptrtoint ptr %rm_owner665 to i32
  call void @__asan_store8_noabort(i32 %331)
  store i64 %5, ptr %rm_owner665, align 8
  %rm_offset667 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 3
  %332 = ptrtoint ptr %rm_offset667 to i32
  call void @__asan_store8_noabort(i32 %332)
  store i64 %add, ptr %rm_offset667, align 8
  %333 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %333)
  %334 = load i64, ptr %rm_offset, align 8
  %335 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %rm_blockcount, align 4
  %add673 = sub i64 %334, %add
  %337 = trunc i64 %add673 to i32
  %conv675 = add i32 %336, %337
  %rm_blockcount677 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 1
  %338 = ptrtoint ptr %rm_blockcount677 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %conv675, ptr %rm_blockcount677, align 4
  %339 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %rm_flags, align 8
  %rm_flags681 = getelementptr inbounds [4 x %struct.xfs_rmap_irec], ptr %r, i32 0, i32 3, i32 4
  %341 = ptrtoint ptr %rm_flags681 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %340, ptr %rm_flags681, align 8
  %call692 = call i32 @xfs_rmap_insert(ptr noundef %cur, i32 noundef %add111, i32 noundef %conv675, i64 noundef %5, i64 noundef %add, i32 noundef %340)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call692)
  %tobool693.not = icmp eq i32 %call692, 0
  br i1 %tobool693.not, label %if.end695, label %sw.bb660.if.then766_crit_edge

sw.bb660.if.then766_crit_edge:                    ; preds = %sw.bb660
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end695:                                        ; preds = %sw.bb660
  %342 = call ptr @memcpy(ptr %arrayidx662, ptr %arrayidx, i32 32)
  %343 = ptrtoint ptr %arrayidx662 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %arrayidx662, align 8
  %345 = ptrtoint ptr %rm_blockcount677 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %rm_blockcount677, align 4
  %347 = ptrtoint ptr %rm_owner665 to i32
  call void @__asan_load8_noabort(i32 %347)
  %348 = load i64, ptr %rm_owner665, align 8
  %349 = ptrtoint ptr %rm_offset667 to i32
  call void @__asan_load8_noabort(i32 %349)
  %350 = load i64, ptr %rm_offset667, align 8
  %351 = ptrtoint ptr %rm_flags681 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %rm_flags681, align 8
  %353 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %344, ptr %bc_rec.i, align 8
  %354 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %346, ptr %rm_blockcount.i, align 4
  %355 = ptrtoint ptr %rm_owner.i920 to i32
  call void @__asan_store8_noabort(i32 %355)
  store i64 %348, ptr %rm_owner.i920, align 8
  %356 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %356)
  store i64 %350, ptr %rm_offset.i, align 8
  %357 = ptrtoint ptr %rm_flags.i921 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %352, ptr %rm_flags.i921, align 8
  %call.i981 = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i981)
  %tobool709.not = icmp eq i32 %call.i981, 0
  br i1 %tobool709.not, label %if.end711, label %if.end695.if.then766_crit_edge

if.end695.if.then766_crit_edge:                   ; preds = %if.end695
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end711:                                        ; preds = %if.end695
  %358 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %359)
  %cmp712.not = icmp eq i32 %359, 1
  br i1 %cmp712.not, label %if.end725, label %__here721, !prof !176

__here721:                                        ; preds = %if.end711
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !256
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1853, ptr noundef blockaddress(@xfs_rmap_convert_shared, %__here721)) #11
  br label %if.then766

if.end725:                                        ; preds = %if.end711
  %360 = ptrtoint ptr %rm_offset667 to i32
  call void @__asan_load8_noabort(i32 %360)
  %361 = load i64, ptr %rm_offset667, align 8
  %sub728 = sub i64 %7, %361
  %conv729 = trunc i64 %sub728 to i32
  %362 = ptrtoint ptr %rm_blockcount677 to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 %conv729, ptr %rm_blockcount677, align 4
  %call733 = call fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr noundef %arrayidx662)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call733)
  %tobool734.not = icmp eq i32 %call733, 0
  br i1 %tobool734.not, label %if.end736, label %if.end725.if.then766_crit_edge

if.end725.if.then766_crit_edge:                   ; preds = %if.end725
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end736:                                        ; preds = %if.end725
  %363 = ptrtoint ptr %arrayidx662 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %bno, ptr %arrayidx662, align 8
  %364 = ptrtoint ptr %rm_blockcount677 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %len, ptr %rm_blockcount677, align 4
  %365 = ptrtoint ptr %rm_owner665 to i32
  call void @__asan_store8_noabort(i32 %365)
  store i64 %5, ptr %rm_owner665, align 8
  %366 = ptrtoint ptr %rm_offset667 to i32
  call void @__asan_store8_noabort(i32 %366)
  store i64 %7, ptr %rm_offset667, align 8
  %367 = ptrtoint ptr %rm_flags681 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %and61, ptr %rm_flags681, align 8
  %call757 = call i32 @xfs_rmap_insert(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, i64 noundef %5, i64 noundef %7, i32 noundef %and61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call757)
  %tobool758.not = icmp eq i32 %call757, 0
  br i1 %tobool758.not, label %if.end736.done_crit_edge, label %if.end736.if.then766_crit_edge

if.end736.if.then766_crit_edge:                   ; preds = %if.end736
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then766

if.end736.done_crit_edge:                         ; preds = %if.end736
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb761:                                         ; preds = %if.end174.sw.bb761_crit_edge, %if.end174.sw.bb761_crit_edge1013, %if.end174.sw.bb761_crit_edge1014, %if.end174.sw.bb761_crit_edge1015, %if.end174.sw.bb761_crit_edge1016, %if.end174.sw.bb761_crit_edge1017, %if.end174.sw.bb761_crit_edge1018
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1884) #11
  br label %done

if.end188.unreachabledefault:                     ; preds = %if.end174
  unreachable

done:                                             ; preds = %sw.bb761, %if.end736.done_crit_edge, %if.end655.done_crit_edge, %if.end595.done_crit_edge, %if.end533.done_crit_edge, %if.end484.done_crit_edge, %if.end407.done_crit_edge, %if.end362.done_crit_edge, %if.end307.done_crit_edge, %if.end249.done_crit_edge
  %368 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %11, align 8
  %pag_agno763 = getelementptr inbounds %struct.xfs_perag, ptr %369, i32 0, i32 1
  %370 = ptrtoint ptr %pag_agno763 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %pag_agno763, align 4
  call fastcc void @trace_xfs_rmap_convert_done(ptr noundef %1, i32 noundef %371, i32 noundef %bno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo)
  br label %if.end770

if.then766:                                       ; preds = %if.end736.if.then766_crit_edge, %if.end725.if.then766_crit_edge, %__here721, %if.end695.if.then766_crit_edge, %sw.bb660.if.then766_crit_edge, %if.end655.if.then766_crit_edge, %if.end647.if.then766_crit_edge, %__here643, %sw.bb617.if.then766_crit_edge, %if.end595.if.then766_crit_edge, %if.end579.if.then766_crit_edge, %if.end568.if.then766_crit_edge, %__here564, %sw.bb538.if.then766_crit_edge, %if.end533.if.then766_crit_edge, %if.end509.if.then766_crit_edge, %sw.bb493.if.then766_crit_edge, %if.end484.if.then766_crit_edge, %__here480, %if.end454.if.then766_crit_edge, %if.end431.if.then766_crit_edge, %sw.bb415.if.then766_crit_edge, %if.end407.if.then766_crit_edge, %__here403, %sw.bb377.if.then766_crit_edge, %if.end362.if.then766_crit_edge, %__here358, %if.end332.if.then766_crit_edge, %sw.bb318.if.then766_crit_edge, %if.end307.if.then766_crit_edge, %__here303, %if.end277.if.then766_crit_edge, %sw.bb263.if.then766_crit_edge, %if.end249.if.then766_crit_edge, %__here245, %if.end219.if.then766_crit_edge, %if.end205.if.then766_crit_edge, %sw.bb.if.then766_crit_edge, %__here152, %__here135, %if.then119.if.then766_crit_edge, %if.end110.if.then766_crit_edge, %__here100, %cond.end60.if.then766_crit_edge, %__here, %cond.end.if.then766_crit_edge
  %error.2.ph = phi i32 [ %call259, %if.end249.if.then766_crit_edge ], [ -117, %__here245 ], [ %call.i939, %if.end219.if.then766_crit_edge ], [ %call216, %if.end205.if.then766_crit_edge ], [ %call202, %sw.bb.if.then766_crit_edge ], [ %call314, %if.end307.if.then766_crit_edge ], [ -117, %__here303 ], [ %call.i945, %if.end277.if.then766_crit_edge ], [ %call274, %sw.bb263.if.then766_crit_edge ], [ %call373, %if.end362.if.then766_crit_edge ], [ -117, %__here358 ], [ %call.i951, %if.end332.if.then766_crit_edge ], [ %call329, %sw.bb318.if.then766_crit_edge ], [ %call411, %if.end407.if.then766_crit_edge ], [ -117, %__here403 ], [ %call.i957, %sw.bb377.if.then766_crit_edge ], [ %call489, %if.end484.if.then766_crit_edge ], [ -117, %__here480 ], [ %call.i963, %if.end454.if.then766_crit_edge ], [ %call451, %if.end431.if.then766_crit_edge ], [ %call428, %sw.bb415.if.then766_crit_edge ], [ %call534, %if.end533.if.then766_crit_edge ], [ %call530, %if.end509.if.then766_crit_edge ], [ %call506, %sw.bb493.if.then766_crit_edge ], [ %call613, %if.end595.if.then766_crit_edge ], [ %call592, %if.end579.if.then766_crit_edge ], [ %call576, %if.end568.if.then766_crit_edge ], [ -117, %__here564 ], [ %call.i969, %sw.bb538.if.then766_crit_edge ], [ %call656, %if.end655.if.then766_crit_edge ], [ %call652, %if.end647.if.then766_crit_edge ], [ -117, %__here643 ], [ %call.i975, %sw.bb617.if.then766_crit_edge ], [ %call757, %if.end736.if.then766_crit_edge ], [ %call733, %if.end725.if.then766_crit_edge ], [ -117, %__here721 ], [ %call.i981, %if.end695.if.then766_crit_edge ], [ %call692, %sw.bb660.if.then766_crit_edge ], [ -117, %__here152 ], [ -117, %__here135 ], [ %call122, %if.then119.if.then766_crit_edge ], [ %call.i, %if.end110.if.then766_crit_edge ], [ -117, %__here100 ], [ %call80, %cond.end60.if.then766_crit_edge ], [ -117, %__here ], [ %call, %cond.end.if.then766_crit_edge ]
  %372 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %bc_mp, align 4
  %374 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %11, align 8
  %pag_agno769 = getelementptr inbounds %struct.xfs_perag, ptr %375, i32 0, i32 1
  %376 = ptrtoint ptr %pag_agno769 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %pag_agno769, align 4
  %378 = call ptr @llvm.returnaddress(i32 0)
  %379 = ptrtoint ptr %378 to i32
  call fastcc void @trace_xfs_rmap_convert_error(ptr noundef %373, i32 noundef %377, i32 noundef %error.2.ph, i32 noundef %379)
  br label %if.end770

if.end770:                                        ; preds = %if.then766, %done
  %error.21009 = phi i32 [ %error.2.ph, %if.then766 ], [ 0, %done ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %r) #11
  ret i32 %error.21009
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_rmap_map_extent(ptr noundef %tp, ptr nocapture noundef readonly %ip, i32 noundef %whichfork, ptr nocapture noundef readonly %PREV) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.i = icmp ne i64 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whichfork)
  %cmp.i = icmp ne i32 %whichfork, 2
  %spec.select.i = and i1 %cmp.i, %tobool.i.i
  br i1 %spec.select.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp.not = icmp eq i32 %whichfork, 1
  br i1 %cmp.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %i_diflags2.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %4 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_diflags2.i, align 8
  %6 = trunc i64 %5 to i32
  %7 = lshr i32 %6, 1
  %8 = and i32 %7, 1
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true, %if.end.if.end3_crit_edge
  %type.0 = phi i32 [ 0, %if.end.if.end3_crit_edge ], [ %8, %land.lhs.true ]
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_ino, align 8
  %br_startblock.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %PREV, i32 0, i32 1
  %11 = ptrtoint ptr %br_startblock.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %br_startblock.i, align 8
  %sb_agblklog.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %13 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sb_agblklog.i, align 4
  %conv.i = zext i8 %14 to i32
  %sh_prom.i = zext i8 %14 to i64
  %shr.i = lshr i64 %12, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %notmask.i.i = shl nsw i32 -1, %conv.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %15 = trunc i64 %12 to i32
  %conv9.i = and i32 %sub.i.i, %15
  %16 = ptrtoint ptr %PREV to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %PREV, align 8
  %br_blockcount.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %PREV, i32 0, i32 2
  %18 = ptrtoint ptr %br_blockcount.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %br_blockcount.i, align 8
  %br_state.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %PREV, i32 0, i32 3
  %20 = ptrtoint ptr %br_state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %br_state.i, align 8
  tail call fastcc void @trace_xfs_rmap_defer(ptr noundef %1, i32 noundef %conv2.i, i32 noundef %type.0, i32 noundef %conv9.i, i64 noundef %10, i32 noundef %whichfork, i64 noundef %17, i64 noundef %19, i32 noundef %21) #11
  %22 = load ptr, ptr @xfs_rmap_intent_cache, align 4
  %call10.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %22, i32 noundef 35904) #11
  %23 = ptrtoint ptr %call10.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call10.i, ptr %call10.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call10.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call10.i, ptr %prev.i.i, align 4
  %ri_type.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 1
  %25 = ptrtoint ptr %ri_type.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %type.0, ptr %ri_type.i, align 8
  %ri_owner.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 3
  %26 = ptrtoint ptr %ri_owner.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %10, ptr %ri_owner.i, align 8
  %ri_whichfork.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 2
  %27 = ptrtoint ptr %ri_whichfork.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %whichfork, ptr %ri_whichfork.i, align 4
  %ri_bmap.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 4
  %28 = call ptr @memcpy(ptr %ri_bmap.i, ptr %PREV, i32 32)
  tail call void @xfs_defer_add(ptr noundef %tp, i32 noundef 2, ptr noundef %call10.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_rmap_unmap_extent(ptr noundef %tp, ptr nocapture noundef readonly %ip, i32 noundef %whichfork, ptr nocapture noundef readonly %PREV) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.i = icmp ne i64 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whichfork)
  %cmp.i = icmp ne i32 %whichfork, 2
  %spec.select.i = and i1 %cmp.i, %tobool.i.i
  br i1 %spec.select.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp.not = icmp eq i32 %whichfork, 1
  br i1 %cmp.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %i_diflags2.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %4 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_diflags2.i, align 8
  %and.i = and i64 %5, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %spec.select = select i1 %tobool.i.not, i32 2, i32 3
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true, %if.end.if.end3_crit_edge
  %type.0 = phi i32 [ 2, %if.end.if.end3_crit_edge ], [ %spec.select, %land.lhs.true ]
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_ino, align 8
  %br_startblock.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %PREV, i32 0, i32 1
  %8 = ptrtoint ptr %br_startblock.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %br_startblock.i, align 8
  %sb_agblklog.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %10 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sb_agblklog.i, align 4
  %conv.i = zext i8 %11 to i32
  %sh_prom.i = zext i8 %11 to i64
  %shr.i = lshr i64 %9, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %notmask.i.i = shl nsw i32 -1, %conv.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %12 = trunc i64 %9 to i32
  %conv9.i = and i32 %sub.i.i, %12
  %13 = ptrtoint ptr %PREV to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %PREV, align 8
  %br_blockcount.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %PREV, i32 0, i32 2
  %15 = ptrtoint ptr %br_blockcount.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %br_blockcount.i, align 8
  %br_state.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %PREV, i32 0, i32 3
  %17 = ptrtoint ptr %br_state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %br_state.i, align 8
  tail call fastcc void @trace_xfs_rmap_defer(ptr noundef %1, i32 noundef %conv2.i, i32 noundef %type.0, i32 noundef %conv9.i, i64 noundef %7, i32 noundef %whichfork, i64 noundef %14, i64 noundef %16, i32 noundef %18) #11
  %19 = load ptr, ptr @xfs_rmap_intent_cache, align 4
  %call10.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %19, i32 noundef 35904) #11
  %20 = ptrtoint ptr %call10.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call10.i, ptr %call10.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call10.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call10.i, ptr %prev.i.i, align 4
  %ri_type.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 1
  %22 = ptrtoint ptr %ri_type.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %type.0, ptr %ri_type.i, align 8
  %ri_owner.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 3
  %23 = ptrtoint ptr %ri_owner.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %7, ptr %ri_owner.i, align 8
  %ri_whichfork.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 2
  %24 = ptrtoint ptr %ri_whichfork.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %whichfork, ptr %ri_whichfork.i, align 4
  %ri_bmap.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 4
  %25 = call ptr @memcpy(ptr %ri_bmap.i, ptr %PREV, i32 32)
  tail call void @xfs_defer_add(ptr noundef %tp, i32 noundef 2, ptr noundef %call10.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_rmap_convert_extent(ptr nocapture noundef readonly %mp, ptr noundef %tp, ptr nocapture noundef readonly %ip, i32 noundef %whichfork, ptr nocapture noundef readonly %PREV) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.i = icmp ne i64 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whichfork)
  %cmp.i = icmp ne i32 %whichfork, 2
  %spec.select.i = and i1 %cmp.i, %tobool.i.i
  br i1 %spec.select.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp.not = icmp eq i32 %whichfork, 1
  br i1 %cmp.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %i_diflags2.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %2 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_diflags2.i, align 8
  %and.i = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %spec.select = select i1 %tobool.i.not, i32 4, i32 5
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true, %if.end.if.end3_crit_edge
  %type.0 = phi i32 [ 4, %if.end.if.end3_crit_edge ], [ %spec.select, %land.lhs.true ]
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_ino, align 8
  %t_mountp.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %6 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t_mountp.i, align 4
  %br_startblock.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %PREV, i32 0, i32 1
  %8 = ptrtoint ptr %br_startblock.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %br_startblock.i, align 8
  %sb_agblklog.i = getelementptr inbounds %struct.xfs_sb, ptr %7, i32 0, i32 24
  %10 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sb_agblklog.i, align 4
  %conv.i = zext i8 %11 to i32
  %sh_prom.i = zext i8 %11 to i64
  %shr.i = lshr i64 %9, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %notmask.i.i = shl nsw i32 -1, %conv.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %12 = trunc i64 %9 to i32
  %conv9.i = and i32 %sub.i.i, %12
  %13 = ptrtoint ptr %PREV to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %PREV, align 8
  %br_blockcount.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %PREV, i32 0, i32 2
  %15 = ptrtoint ptr %br_blockcount.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %br_blockcount.i, align 8
  %br_state.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %PREV, i32 0, i32 3
  %17 = ptrtoint ptr %br_state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %br_state.i, align 8
  tail call fastcc void @trace_xfs_rmap_defer(ptr noundef %7, i32 noundef %conv2.i, i32 noundef %type.0, i32 noundef %conv9.i, i64 noundef %5, i32 noundef %whichfork, i64 noundef %14, i64 noundef %16, i32 noundef %18) #11
  %19 = load ptr, ptr @xfs_rmap_intent_cache, align 4
  %call10.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %19, i32 noundef 35904) #11
  %20 = ptrtoint ptr %call10.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call10.i, ptr %call10.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call10.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call10.i, ptr %prev.i.i, align 4
  %ri_type.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 1
  %22 = ptrtoint ptr %ri_type.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %type.0, ptr %ri_type.i, align 8
  %ri_owner.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 3
  %23 = ptrtoint ptr %ri_owner.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %5, ptr %ri_owner.i, align 8
  %ri_whichfork.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 2
  %24 = ptrtoint ptr %ri_whichfork.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %whichfork, ptr %ri_whichfork.i, align 4
  %ri_bmap.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 4
  %25 = call ptr @memcpy(ptr %ri_bmap.i, ptr %PREV, i32 32)
  tail call void @xfs_defer_add(ptr noundef %tp, i32 noundef 2, ptr noundef %call10.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_rmap_alloc_extent(ptr noundef %tp, i32 noundef %agno, i32 noundef %bno, i32 noundef %len, i64 noundef %owner) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %agno to i64
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %5 to i64
  %shl = shl i64 %conv, %sh_prom
  %conv3 = zext i32 %bno to i64
  %or = or i64 %shl, %conv3
  %conv4 = zext i32 %len to i64
  %conv.i = zext i8 %5 to i32
  %shr.i = lshr i64 %or, %sh_prom
  %conv2.i = trunc i64 %shr.i to i32
  %notmask.i.i = shl nsw i32 -1, %conv.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %6 = trunc i64 %or to i32
  %conv9.i = and i32 %6, %sub.i.i
  tail call fastcc void @trace_xfs_rmap_defer(ptr noundef %1, i32 noundef %conv2.i, i32 noundef 6, i32 noundef %conv9.i, i64 noundef %owner, i32 noundef 0, i64 noundef 0, i64 noundef %conv4, i32 noundef 0) #11
  %7 = load ptr, ptr @xfs_rmap_intent_cache, align 4
  %call10.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %7, i32 noundef 35904) #11
  %8 = ptrtoint ptr %call10.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call10.i, ptr %call10.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call10.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10.i, ptr %prev.i.i, align 4
  %ri_type.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 1
  %10 = ptrtoint ptr %ri_type.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %ri_type.i, align 8
  %ri_owner.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 3
  %11 = ptrtoint ptr %ri_owner.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %owner, ptr %ri_owner.i, align 8
  %ri_whichfork.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 2
  %12 = ptrtoint ptr %ri_whichfork.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ri_whichfork.i, align 4
  %ri_bmap.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 4
  %13 = ptrtoint ptr %ri_bmap.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %ri_bmap.i, align 8
  %bmap.sroa.6.0.ri_bmap.i.sroa_idx = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %bmap.sroa.6.0.ri_bmap.i.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %or, ptr %bmap.sroa.6.0.ri_bmap.i.sroa_idx, align 8
  %bmap.sroa.8.0.ri_bmap.i.sroa_idx = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %bmap.sroa.8.0.ri_bmap.i.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv4, ptr %bmap.sroa.8.0.ri_bmap.i.sroa_idx, align 8
  %bmap.sroa.10.0.ri_bmap.i.sroa_idx = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %bmap.sroa.10.0.ri_bmap.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %bmap.sroa.10.0.ri_bmap.i.sroa_idx, align 8
  %bmap.sroa.12.0.ri_bmap.i.sroa_idx = getelementptr inbounds i8, ptr %ri_bmap.i, i32 28
  %17 = ptrtoint ptr %bmap.sroa.12.0.ri_bmap.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %bmap.sroa.12.0.ri_bmap.i.sroa_idx, align 4
  tail call void @xfs_defer_add(ptr noundef %tp, i32 noundef 2, ptr noundef %call10.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_rmap_free_extent(ptr noundef %tp, i32 noundef %agno, i32 noundef %bno, i32 noundef %len, i64 noundef %owner) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %agno to i64
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %5 to i64
  %shl = shl i64 %conv, %sh_prom
  %conv3 = zext i32 %bno to i64
  %or = or i64 %shl, %conv3
  %conv4 = zext i32 %len to i64
  %conv.i = zext i8 %5 to i32
  %shr.i = lshr i64 %or, %sh_prom
  %conv2.i = trunc i64 %shr.i to i32
  %notmask.i.i = shl nsw i32 -1, %conv.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %6 = trunc i64 %or to i32
  %conv9.i = and i32 %6, %sub.i.i
  tail call fastcc void @trace_xfs_rmap_defer(ptr noundef %1, i32 noundef %conv2.i, i32 noundef 7, i32 noundef %conv9.i, i64 noundef %owner, i32 noundef 0, i64 noundef 0, i64 noundef %conv4, i32 noundef 0) #11
  %7 = load ptr, ptr @xfs_rmap_intent_cache, align 4
  %call10.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %7, i32 noundef 35904) #11
  %8 = ptrtoint ptr %call10.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call10.i, ptr %call10.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call10.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10.i, ptr %prev.i.i, align 4
  %ri_type.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 1
  %10 = ptrtoint ptr %ri_type.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 7, ptr %ri_type.i, align 8
  %ri_owner.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 3
  %11 = ptrtoint ptr %ri_owner.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %owner, ptr %ri_owner.i, align 8
  %ri_whichfork.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 2
  %12 = ptrtoint ptr %ri_whichfork.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ri_whichfork.i, align 4
  %ri_bmap.i = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 4
  %13 = ptrtoint ptr %ri_bmap.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %ri_bmap.i, align 8
  %bmap.sroa.6.0.ri_bmap.i.sroa_idx = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %bmap.sroa.6.0.ri_bmap.i.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %or, ptr %bmap.sroa.6.0.ri_bmap.i.sroa_idx, align 8
  %bmap.sroa.8.0.ri_bmap.i.sroa_idx = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %bmap.sroa.8.0.ri_bmap.i.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv4, ptr %bmap.sroa.8.0.ri_bmap.i.sroa_idx, align 8
  %bmap.sroa.10.0.ri_bmap.i.sroa_idx = getelementptr inbounds %struct.xfs_rmap_intent, ptr %call10.i, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %bmap.sroa.10.0.ri_bmap.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %bmap.sroa.10.0.ri_bmap.i.sroa_idx, align 8
  %bmap.sroa.12.0.ri_bmap.i.sroa_idx = getelementptr inbounds i8, ptr %ri_bmap.i, i32 28
  %17 = ptrtoint ptr %bmap.sroa.12.0.ri_bmap.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %bmap.sroa.12.0.ri_bmap.i.sroa_idx, align 4
  tail call void @xfs_defer_add(ptr noundef %tp, i32 noundef 2, ptr noundef %call10.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_rmap_compare(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rm_offset.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %a, i32 0, i32 3
  %0 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rm_offset.i, align 8
  %and.i = and i64 %1, 18014398509481983
  %rm_flags.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %a, i32 0, i32 4
  %2 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rm_flags.i, align 8
  %4 = zext i32 %3 to i64
  %5 = shl i64 %4, 63
  %6 = or i64 %5, %and.i
  %and3.i = and i32 %3, 2
  %7 = zext i32 %and3.i to i64
  %8 = shl nuw nsw i64 %7, 61
  %9 = or i64 %8, %6
  %and9.i = and i32 %3, 4
  %10 = zext i32 %and9.i to i64
  %11 = shl nuw nsw i64 %10, 59
  %12 = or i64 %9, %11
  %rm_offset.i37 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %b, i32 0, i32 3
  %13 = ptrtoint ptr %rm_offset.i37 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rm_offset.i37, align 8
  %and.i38 = and i64 %14, 18014398509481983
  %rm_flags.i39 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %b, i32 0, i32 4
  %15 = ptrtoint ptr %rm_flags.i39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rm_flags.i39, align 8
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 63
  %19 = or i64 %18, %and.i38
  %and3.i40 = and i32 %16, 2
  %20 = zext i32 %and3.i40 to i64
  %21 = shl nuw nsw i64 %20, 61
  %22 = or i64 %21, %19
  %and9.i41 = and i32 %16, 4
  %23 = zext i32 %and9.i41 to i64
  %24 = shl nuw nsw i64 %23, 59
  %25 = or i64 %22, %24
  %26 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %a, align 8
  %28 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %b, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp = icmp ult i32 %27, %29
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp5 = icmp ugt i32 %27, %29
  br i1 %cmp5, label %if.else.cleanup_crit_edge, label %if.else7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else7:                                         ; preds = %if.else
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %a, i32 0, i32 2
  %30 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rm_owner, align 8
  %rm_owner8 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %b, i32 0, i32 2
  %32 = ptrtoint ptr %rm_owner8 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rm_owner8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %33)
  %cmp9 = icmp ult i64 %31, %33
  br i1 %cmp9, label %if.else7.cleanup_crit_edge, label %if.else11

if.else7.cleanup_crit_edge:                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else11:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %33)
  %cmp14 = icmp ugt i64 %31, %33
  br i1 %cmp14, label %if.else11.cleanup_crit_edge, label %if.else16

if.else11.cleanup_crit_edge:                      ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else16:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %25)
  %cmp17 = icmp ult i64 %12, %25
  br i1 %cmp17, label %if.else16.cleanup_crit_edge, label %if.else19

if.else16.cleanup_crit_edge:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %25)
  %cmp20 = icmp ugt i64 %12, %25
  %. = zext i1 %cmp20 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else19, %if.else16.cleanup_crit_edge, %if.else11.cleanup_crit_edge, %if.else7.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ -1, %if.else7.cleanup_crit_edge ], [ 1, %if.else11.cleanup_crit_edge ], [ -1, %if.else16.cleanup_crit_edge ], [ %., %if.else19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmap_has_record(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, ptr noundef %exists) local_unnamed_addr #0 align 64 {
entry:
  %low = alloca %union.xfs_btree_irec, align 8
  %high = alloca %union.xfs_btree_irec, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %low) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %high) #11
  %0 = call ptr @memset(ptr %low, i32 0, i32 32)
  %1 = ptrtoint ptr %low to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %bno, ptr %low, align 8
  %2 = call ptr @memset(ptr %high, i32 255, i32 32)
  %add = add i32 %bno, -1
  %sub = add i32 %add, %len
  %3 = ptrtoint ptr %high to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub, ptr %high, align 8
  %call = call i32 @xfs_btree_has_record(ptr noundef %cur, ptr noundef nonnull %low, ptr noundef nonnull %high, ptr noundef %exists) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %high) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %low) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_has_record(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmap_record_exists(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, ptr nocapture noundef readonly %oinfo, ptr nocapture noundef writeonly %has_rmap) local_unnamed_addr #0 align 64 {
entry:
  %has_record = alloca i32, align 4
  %irec = alloca %struct.xfs_rmap_irec, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %has_record) #11
  %0 = ptrtoint ptr %has_record to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %has_record, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %irec) #11
  %1 = call ptr @memset(ptr %irec, i32 255, i32 32)
  %2 = ptrtoint ptr %oinfo to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %oinfo, align 8
  %oi_offset.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 1
  %4 = ptrtoint ptr %oi_offset.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %oi_offset.i, align 8
  %oi_flags.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 2
  %6 = ptrtoint ptr %oi_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oi_flags.i, align 8
  %8 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp slt i64 %3, 0
  %and1 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2 = icmp ne i32 %and1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2
  br i1 %or.cond, label %entry.cond.end_crit_edge, label %cond.false, !prof !257

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 2678) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %9 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bno, ptr %bc_rec.i, align 8
  %rm_blockcount.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %bc_rec.i, i32 0, i32 1
  %10 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %len, ptr %rm_blockcount.i, align 4
  %rm_owner.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 1
  %11 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %3, ptr %rm_owner.i, align 8
  %rm_offset.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 2
  %12 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %5, ptr %rm_offset.i, align 8
  %rm_flags.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 3
  %13 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %rm_flags.i, align 8
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 1, ptr noundef nonnull %has_record) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %14 = ptrtoint ptr %has_record to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %has_record, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not = icmp eq i32 %15, 0
  br i1 %tobool6.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end8

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @xfs_rmap_get_rec(ptr noundef %cur, ptr noundef nonnull %irec, ptr noundef nonnull %has_record)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %16 = ptrtoint ptr %has_record to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %has_record, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool13.not = icmp eq i32 %17, 0
  br i1 %tobool13.not, label %if.end12.cleanup.sink.split_crit_edge, label %if.end15

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end12
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 2
  %18 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %3)
  %cmp = icmp eq i64 %19, %3
  br i1 %cmp, label %land.lhs.true, label %if.end15.land.end_crit_edge

if.end15.land.end_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.lhs.true:                                    ; preds = %if.end15
  %20 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irec, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %bno)
  %cmp16.not = icmp ugt i32 %21, %bno
  br i1 %cmp16.not, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 1
  %22 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rm_blockcount, align 4
  %add = add i32 %23, %21
  %add18 = add i32 %len, %bno
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add18)
  %cmp19 = icmp uge i32 %add, %add18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %if.end15.land.end_crit_edge
  %24 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %if.end15.land.end_crit_edge ], [ %cmp19, %land.rhs ]
  %frombool = zext i1 %24 to i8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.end, %if.end12.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %frombool.sink = phi i8 [ %frombool, %land.end ], [ 0, %if.end.cleanup.sink.split_crit_edge ], [ 0, %if.end12.cleanup.sink.split_crit_edge ]
  %25 = ptrtoint ptr %has_rmap to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool.sink, ptr %has_rmap, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %cond.end.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %irec) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %has_record) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmap_has_other_keys(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, ptr nocapture noundef readonly %oinfo, ptr nocapture noundef writeonly %has_rmap) local_unnamed_addr #0 align 64 {
entry:
  %low_brec.i = alloca %union.xfs_btree_irec, align 8
  %high_brec.i = alloca %union.xfs_btree_irec, align 8
  %query.i = alloca %struct.xfs_rmap_query_range_info, align 4
  %rks = alloca %struct.xfs_rmap_key_state, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rks) #11
  %0 = getelementptr inbounds i8, ptr %rks, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %offset = getelementptr inbounds %struct.xfs_rmap_key_state, ptr %rks, i32 0, i32 1
  %flags = getelementptr inbounds %struct.xfs_rmap_key_state, ptr %rks, i32 0, i32 2
  %2 = ptrtoint ptr %oinfo to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %oinfo, align 8
  %4 = ptrtoint ptr %rks to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %rks, align 8
  %oi_offset.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 1
  %5 = ptrtoint ptr %oi_offset.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %oi_offset.i, align 8
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %offset, align 8
  %oi_flags.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 2
  %8 = ptrtoint ptr %oi_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oi_flags.i, align 8
  %10 = and i32 %9, 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %flags, align 8
  %12 = ptrtoint ptr %has_rmap to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %has_rmap, align 1
  %add = add i32 %bno, -1
  %sub = add i32 %add, %len
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %low_brec.i) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %high_brec.i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %query.i) #11
  %13 = getelementptr inbounds %struct.xfs_rmap_query_range_info, ptr %query.i, i32 0, i32 1
  %14 = ptrtoint ptr %low_brec.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %bno, ptr %low_brec.i, align 8
  %low.sroa.5.0.low_brec.i.sroa_idx = getelementptr inbounds i8, ptr %low_brec.i, i32 4
  %15 = call ptr @memset(ptr %low.sroa.5.0.low_brec.i.sroa_idx, i32 0, i32 28)
  %16 = ptrtoint ptr %high_brec.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %high_brec.i, align 8
  %high.sroa.6.0.high_brec.i.sroa_idx = getelementptr inbounds i8, ptr %high_brec.i, i32 4
  %17 = call ptr @memset(ptr %high.sroa.6.0.high_brec.i.sroa_idx, i32 255, i32 28)
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rks, ptr %13, align 4
  %19 = ptrtoint ptr %query.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @xfs_rmap_has_other_keys_helper, ptr %query.i, align 4
  %call.i = call i32 @xfs_btree_query_range(ptr noundef %cur, ptr noundef nonnull %low_brec.i, ptr noundef nonnull %high_brec.i, ptr noundef nonnull @xfs_rmap_query_range_helper, ptr noundef nonnull %query.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %query.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %high_brec.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %low_brec.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %call.i)
  %cmp = icmp eq i32 %call.i, -125
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %has_rmap to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %has_rmap, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rks) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_rmap_has_other_keys_helper(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %rec, ptr nocapture noundef readonly %priv) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv, align 8
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 2
  %2 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %offset = getelementptr inbounds %struct.xfs_rmap_key_state, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %offset, align 8
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 3
  %6 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rm_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp1 = icmp eq i64 %5, %7
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.xfs_rmap_key_state, ptr %priv, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 4
  %10 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rm_flags, align 8
  %and = and i32 %9, 3
  %and3 = and i32 %and, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %9)
  %cmp5 = icmp eq i32 %and3, %9
  br i1 %cmp5, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true2.cleanup_crit_edge
  %retval.0 = phi i32 [ -125, %if.end ], [ 0, %land.lhs.true2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rmap_intent_init_cache() local_unnamed_addr #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.9, i32 noundef 56, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  store ptr %call, ptr @xfs_rmap_intent_cache, align 4
  %cmp.not = icmp eq ptr %call, null
  %cond = select i1 %cmp.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_rmap_intent_destroy_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xfs_rmap_intent_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  store ptr null, ptr @xfs_rmap_intent_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_insert_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_find_left_neighbor_query(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_find_left_neighbor_candidate(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_find_left_neighbor_candidate, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_find_left_neighbor_candidate, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !258
  %call42 = tail call i32 @__traceiter_xfs_rmap_find_left_neighbor_candidate(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !259
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_find_left_neighbor_candidate, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_find_left_neighbor_candidate, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_rmap_find_left_neighbor_candidate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_find_left_neighbor_candidate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2822, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
declare dso_local i32 @__traceiter_xfs_rmap_find_left_neighbor_candidate(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_find_left_neighbor_result(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_lookup_le_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_lookup_le_range_candidate(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_lookup_le_range_candidate, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_lookup_le_range_candidate, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !260
  %call42 = tail call i32 @__traceiter_xfs_rmap_lookup_le_range_candidate(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !261
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_lookup_le_range_candidate, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_lookup_le_range_candidate, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_rmap_lookup_le_range_candidate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_lookup_le_range_candidate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2824, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
declare dso_local i32 @__traceiter_xfs_rmap_lookup_le_range_candidate(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_lookup_le_range_result(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_unmap(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_unmap, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_unmap, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !262
  %call43 = tail call i32 @__traceiter_xfs_rmap_unmap(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !263
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !176

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_unmap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_unmap, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_xfs_rmap_unmap.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_unmap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2759, ptr noundef nonnull @.str.11) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_increment(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rmap_free_check_owner(ptr noundef %mp, i64 noundef %ltoff, ptr nocapture noundef readonly %rec, i64 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %owner)
  %cmp = icmp eq i64 %owner, -2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 4
  %0 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rm_flags, align 8
  %2 = xor i32 %1, %flags
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not = icmp eq i32 %3, 0
  br i1 %cmp2.not, label %if.end5, label %__here, !prof !176

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !264
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.15, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 427, ptr noundef blockaddress(@xfs_rmap_free_check_owner, %__here)) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 2
  %4 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %owner)
  %cmp6.not = icmp eq i64 %5, %owner
  br i1 %cmp6.not, label %if.end18, label %__here14, !prof !176

__here14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !265
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 433, ptr noundef blockaddress(@xfs_rmap_free_check_owner, %__here14)) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %owner)
  %tobool20.not = icmp sgt i64 %owner, -1
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %and23 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end22
  %and27 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %__here38, label %if.then25.cleanup_crit_edge, !prof !196

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

__here38:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !266
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.17, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 444, ptr noundef blockaddress(@xfs_rmap_free_check_owner, %__here38)) #11
  br label %cleanup

if.else:                                          ; preds = %if.end22
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 3
  %6 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rm_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %offset)
  %cmp43 = icmp ugt i64 %7, %offset
  br i1 %cmp43, label %__here51, label %if.end55, !prof !196

__here51:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !267
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.18, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef blockaddress(@xfs_rmap_free_check_owner, %__here51)) #11
  br label %cleanup

if.end55:                                         ; preds = %if.else
  %add = add i64 %offset, %len
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 1
  %8 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rm_blockcount, align 4
  %conv = zext i32 %9 to i64
  %add56 = add i64 %conv, %ltoff
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add56)
  %cmp57 = icmp ugt i64 %add, %add56
  br i1 %cmp57, label %__here66, label %if.end55.cleanup_crit_edge, !prof !196

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

__here66:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !268
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.19, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 454, ptr noundef blockaddress(@xfs_rmap_free_check_owner, %__here66)) #11
  br label %cleanup

cleanup:                                          ; preds = %__here66, %if.end55.cleanup_crit_edge, %__here51, %__here38, %if.then25.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %__here14, %__here, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -117, %__here ], [ -117, %__here14 ], [ 0, %if.end18.cleanup_crit_edge ], [ -117, %__here38 ], [ 0, %if.then25.cleanup_crit_edge ], [ -117, %__here51 ], [ -117, %__here66 ], [ 0, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_delete(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_delete, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_delete, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !269
  %call42 = tail call i32 @__traceiter_xfs_rmap_delete(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !270
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_delete, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_delete, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_rmap_delete.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2817, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
declare dso_local i32 @xfs_btree_delete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rmap_update(ptr noundef %cur, ptr nocapture noundef readonly %irec) unnamed_addr #6 align 64 {
entry:
  %rec = alloca %union.xfs_btree_rec, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rec) #11
  %0 = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 3
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %3 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bc_mp, align 4
  %5 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pag_agno, align 4
  %10 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irec, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 1
  %12 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rm_blockcount, align 4
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 2
  %14 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rm_owner, align 8
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 3
  %16 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rm_offset, align 8
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 4
  %18 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rm_flags, align 8
  tail call fastcc void @trace_xfs_rmap_update(ptr noundef %4, i32 noundef %9, i32 noundef %11, i32 noundef %13, i64 noundef %15, i64 noundef %17, i32 noundef %19)
  %20 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irec, align 8
  %22 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %rec, align 8
  %23 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rm_blockcount, align 4
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %0, align 4
  %26 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rm_owner, align 8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %1, align 8
  %29 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %rm_offset, align 8
  %and.i = and i64 %30, 18014398509481983
  %31 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rm_flags, align 8
  %33 = zext i32 %32 to i64
  %34 = shl i64 %33, 63
  %35 = or i64 %34, %and.i
  %and3.i = and i32 %32, 2
  %36 = zext i32 %and3.i to i64
  %37 = shl nuw nsw i64 %36, 61
  %38 = or i64 %37, %35
  %and9.i = and i32 %32, 4
  %39 = zext i32 %and9.i to i64
  %40 = shl nuw nsw i64 %39, 59
  %41 = or i64 %38, %40
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %2, align 8
  %call8 = call i32 @xfs_btree_update(ptr noundef %cur, ptr noundef nonnull %rec) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bc_mp, align 4
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 8
  %pag_agno11 = getelementptr inbounds %struct.xfs_perag, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %pag_agno11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pag_agno11, align 4
  %49 = call ptr @llvm.returnaddress(i32 0)
  %50 = ptrtoint ptr %49 to i32
  call fastcc void @trace_xfs_rmap_update_error(ptr noundef %44, i32 noundef %48, i32 noundef %call8, i32 noundef %50)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rec) #11
  ret i32 %call8
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_unmap_done(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_unmap_done, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_unmap_done, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !271
  %call43 = tail call i32 @__traceiter_xfs_rmap_unmap_done(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !272
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !176

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_unmap_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_unmap_done, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_xfs_rmap_unmap_done.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_unmap_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2760, ptr noundef nonnull @.str.11) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_unmap_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_unmap_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_unmap_error, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !273
  %call42 = tail call i32 @__traceiter_xfs_rmap_unmap_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !274
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_unmap_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_unmap_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_rmap_unmap_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_unmap_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2761, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
declare dso_local i32 @__traceiter_xfs_rmap_unmap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_delete(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_update(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_update, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_update, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !275
  %call42 = tail call i32 @__traceiter_xfs_rmap_update(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !276
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_update, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_update, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_rmap_update.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2815, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
declare dso_local i32 @xfs_btree_update(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_update_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_update_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_update_error, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !277
  %call42 = tail call i32 @__traceiter_xfs_rmap_update_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !278
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_update_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_update_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_rmap_update_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_update_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2820, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
declare dso_local i32 @__traceiter_xfs_rmap_update(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_update_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_unmap_done(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_unmap_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_map(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_map, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_map, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !279
  %call43 = tail call i32 @__traceiter_xfs_rmap_map(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !280
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !176

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_map, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_map, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_xfs_rmap_map.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_map.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2762, ptr noundef nonnull @.str.11) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_find_right_neighbor_result(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_find_right_neighbor_result, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_find_right_neighbor_result, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !281
  %call42 = tail call i32 @__traceiter_xfs_rmap_find_right_neighbor_result(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !282
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_find_right_neighbor_result, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_find_right_neighbor_result, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_rmap_find_right_neighbor_result.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_find_right_neighbor_result.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2827, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
declare dso_local i32 @xfs_btree_decrement(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_map_done(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_map_done, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_map_done, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !283
  %call43 = tail call i32 @__traceiter_xfs_rmap_map_done(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !284
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !176

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_map_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_map_done, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_xfs_rmap_map_done.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_map_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2763, ptr noundef nonnull @.str.11) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_map_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_map_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_map_error, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !285
  %call42 = tail call i32 @__traceiter_xfs_rmap_map_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !286
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_map_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_map_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_rmap_map_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_map_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2764, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
declare dso_local i32 @__traceiter_xfs_rmap_map(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_find_right_neighbor_result(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_map_done(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_map_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rmap_delete(ptr noundef %rcur, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags) #6 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #11
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %i, align 4, !annotation !175
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 1
  %1 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bc_mp, align 4
  %3 = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_rmap_delete(ptr noundef %2, i32 noundef %7, i32 noundef %agbno, i32 noundef %len, i64 noundef %owner, i64 noundef %offset, i32 noundef %flags)
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 6
  %8 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %agbno, ptr %bc_rec.i, align 8
  %rm_blockcount.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %bc_rec.i, i32 0, i32 1
  %9 = ptrtoint ptr %rm_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %len, ptr %rm_blockcount.i, align 4
  %rm_owner.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 6, i32 0, i32 1
  %10 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %owner, ptr %rm_owner.i, align 8
  %rm_offset.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 6, i32 0, i32 2
  %11 = ptrtoint ptr %rm_offset.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %offset, ptr %rm_offset.i, align 8
  %rm_flags.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 6, i32 0, i32 3
  %12 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %flags, ptr %rm_flags.i, align 8
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %rcur, i32 noundef 0, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then25_crit_edge

entry.if.then25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.not = icmp eq i32 %14, 1
  br i1 %cmp.not, label %if.end5, label %__here, !prof !176

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !287
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %16, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 162, ptr noundef blockaddress(@xfs_rmap_delete, %__here)) #11
  br label %if.then25

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @xfs_btree_delete(ptr noundef %rcur, ptr noundef nonnull %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.if.then25_crit_edge

if.end5.if.then25_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.end9:                                          ; preds = %if.end5
  %17 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp10.not = icmp eq i32 %18, 1
  br i1 %cmp10.not, label %if.end9.if.end29_crit_edge, label %__here19, !prof !176

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

__here19:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !288
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %20, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 170, ptr noundef blockaddress(@xfs_rmap_delete, %__here19)) #11
  br label %if.then25

if.then25:                                        ; preds = %__here19, %if.end5.if.then25_crit_edge, %__here, %entry.if.then25_crit_edge
  %error.0.ph = phi i32 [ -117, %__here19 ], [ %call6, %if.end5.if.then25_crit_edge ], [ -117, %__here ], [ %call.i, %entry.if.then25_crit_edge ]
  %21 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bc_mp, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 8
  %pag_agno28 = getelementptr inbounds %struct.xfs_perag, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %pag_agno28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pag_agno28, align 4
  %27 = call ptr @llvm.returnaddress(i32 0)
  %28 = ptrtoint ptr %27 to i32
  call fastcc void @trace_xfs_rmap_delete_error(ptr noundef %22, i32 noundef %26, i32 noundef %error.0.ph, i32 noundef %28)
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end9.if.end29_crit_edge
  %error.049 = phi i32 [ %error.0.ph, %if.then25 ], [ 0, %if.end9.if.end29_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #11
  ret i32 %error.049
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_delete_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_delete_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_delete_error, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !289
  %call42 = tail call i32 @__traceiter_xfs_rmap_delete_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !290
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_delete_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_delete_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_rmap_delete_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_delete_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2819, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
declare dso_local i32 @__traceiter_xfs_rmap_delete_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_deferred(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_convert(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_convert, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_convert, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !291
  %call43 = tail call i32 @__traceiter_xfs_rmap_convert(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !292
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !176

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_convert, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_convert, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_xfs_rmap_convert.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_convert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2765, ptr noundef nonnull @.str.11) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_convert_state(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_convert_state, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_convert_state, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !293
  %call42 = tail call i32 @__traceiter_xfs_rmap_convert_state(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !294
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_convert_state, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_convert_state, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_rmap_convert_state.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_convert_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2768, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
define internal fastcc void @trace_xfs_rmap_convert_done(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_convert_done, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_convert_done, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !295
  %call43 = tail call i32 @__traceiter_xfs_rmap_convert_done(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i1 noundef zeroext %unwritten, ptr noundef %oinfo) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !296
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !176

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_convert_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_convert_done, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_xfs_rmap_convert_done.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_convert_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2766, ptr noundef nonnull @.str.11) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_convert_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_convert_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_convert_error, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !297
  %call42 = tail call i32 @__traceiter_xfs_rmap_convert_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !298
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_convert_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_convert_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_rmap_convert_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_convert_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2767, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
declare dso_local i32 @__traceiter_xfs_rmap_convert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_convert_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_convert_done(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_convert_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_rmap_defer(ptr noundef %mp, i32 noundef %agno, i32 noundef %op, i32 noundef %agbno, i64 noundef %ino, i32 noundef %whichfork, i64 noundef %offset, i64 noundef %len, i32 noundef %state) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_defer, i32 0, i32 1), ptr blockaddress(@trace_xfs_rmap_defer, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !299
  %call42 = tail call i32 @__traceiter_xfs_rmap_defer(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %op, i32 noundef %agbno, i64 noundef %ino, i32 noundef %whichfork, i64 noundef %offset, i64 noundef %len, i32 noundef %state) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !300
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_defer, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_rmap_defer, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_rmap_defer.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_rmap_defer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2810, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #11
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
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_defer_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_rmap_defer(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !72, !74, !75, !77, !79, !81, !83, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !104, !106, !108, !110, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164}
!llvm.named.register.sp = !{!165}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 120, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 133, i32 6}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 242, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 245, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 2383, i32 6}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 2408, i32 7}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 2448, i32 3}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 2677, i32 2}
!17 = !{ptr @XFS_RMAP_OINFO_SKIP_UPDATE, !18, !"XFS_RMAP_OINFO_SKIP_UPDATE", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 2757, i32 29}
!19 = !{ptr @XFS_RMAP_OINFO_ANY_OWNER, !20, !"XFS_RMAP_OINFO_ANY_OWNER", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 2760, i32 29}
!21 = !{ptr @XFS_RMAP_OINFO_FS, !22, !"XFS_RMAP_OINFO_FS", i1 false, i1 false}
!22 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 2763, i32 29}
!23 = !{ptr @XFS_RMAP_OINFO_LOG, !24, !"XFS_RMAP_OINFO_LOG", i1 false, i1 false}
!24 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 2766, i32 29}
!25 = !{ptr @XFS_RMAP_OINFO_AG, !26, !"XFS_RMAP_OINFO_AG", i1 false, i1 false}
!26 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 2769, i32 29}
!27 = !{ptr @XFS_RMAP_OINFO_INOBT, !28, !"XFS_RMAP_OINFO_INOBT", i1 false, i1 false}
!28 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 2772, i32 29}
!29 = !{ptr @XFS_RMAP_OINFO_INODES, !30, !"XFS_RMAP_OINFO_INODES", i1 false, i1 false}
!30 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 2775, i32 29}
!31 = !{ptr @XFS_RMAP_OINFO_REFC, !32, !"XFS_RMAP_OINFO_REFC", i1 false, i1 false}
!32 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 2778, i32 29}
!33 = !{ptr @XFS_RMAP_OINFO_COW, !34, !"XFS_RMAP_OINFO_COW", i1 false, i1 false}
!34 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 2781, i32 29}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 2788, i32 44}
!37 = !{ptr @xfs_rmap_intent_cache, !38, !"xfs_rmap_intent_cache", i1 false, i1 false}
!38 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 27, i32 20}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../fs/xfs/xfs_trace.h", i32 2816, i32 1}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!43 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!46 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../fs/xfs/xfs_trace.h", i32 2818, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../fs/xfs/xfs_trace.h", i32 2823, i32 1}
!52 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../fs/xfs/xfs_trace.h", i32 2822, i32 1}
!55 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../fs/xfs/xfs_trace.h", i32 2828, i32 1}
!58 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../fs/xfs/xfs_trace.h", i32 2825, i32 1}
!61 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../fs/xfs/xfs_trace.h", i32 2824, i32 1}
!64 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../fs/xfs/xfs_trace.h", i32 2826, i32 1}
!67 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!68 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 542, i32 7}
!70 = !{ptr @.str.14, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 579, i32 6}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../fs/xfs/xfs_trace.h", i32 2759, i32 1}
!74 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!75 = !{ptr @.str.15, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 425, i32 6}
!77 = !{ptr @.str.16, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 433, i32 6}
!79 = !{ptr @.str.17, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 443, i32 7}
!81 = !{ptr @.str.18, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 449, i32 7}
!83 = !{ptr @.str.19, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 453, i32 7}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../fs/xfs/xfs_trace.h", i32 2817, i32 1}
!87 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../fs/xfs/xfs_trace.h", i32 2815, i32 1}
!90 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../fs/xfs/xfs_trace.h", i32 2820, i32 1}
!93 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../fs/xfs/xfs_trace.h", i32 2760, i32 1}
!96 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../fs/xfs/xfs_trace.h", i32 2761, i32 1}
!99 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!100 = !{ptr @.str.20, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 775, i32 2}
!102 = !{ptr @.str.21, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 782, i32 2}
!104 = !{ptr @.str.22, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 797, i32 7}
!106 = !{ptr @.str.23, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 810, i32 6}
!108 = !{ptr @.str.24, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 829, i32 7}
!110 = !{ptr @.str.25, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 833, i32 7}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../fs/xfs/xfs_trace.h", i32 2762, i32 1}
!114 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../fs/xfs/xfs_trace.h", i32 2827, i32 1}
!117 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../fs/xfs/xfs_trace.h", i32 2763, i32 1}
!120 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../fs/xfs/xfs_trace.h", i32 2764, i32 1}
!123 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../fs/xfs/xfs_trace.h", i32 2819, i32 1}
!126 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../fs/xfs/xfs_trace.h", i32 2811, i32 1}
!129 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!130 = !{ptr @.str.26, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 1958, i32 6}
!132 = !{ptr @.str.27, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 1964, i32 6}
!134 = !{ptr @.str.28, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 1972, i32 6}
!136 = !{ptr @.str.29, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 1976, i32 6}
!138 = !{ptr @.str.30, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 1013, i32 2}
!140 = !{ptr @.str.31, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 1045, i32 2}
!142 = !{ptr @.str.32, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 1046, i32 2}
!144 = !{ptr @.str.33, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 1047, i32 2}
!146 = !{ptr @.str.34, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 1076, i32 7}
!148 = !{ptr @.str.35, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/xfs/libxfs/xfs_rmap.c", i32 1116, i32 7}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../fs/xfs/xfs_trace.h", i32 2765, i32 1}
!152 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!153 = distinct !{null, !154, !"__already_done", i1 false, i1 false}
!154 = !{!"../fs/xfs/xfs_trace.h", i32 2768, i32 1}
!155 = distinct !{null, !154, !"__warned", i1 false, i1 false}
!156 = distinct !{null, !157, !"__already_done", i1 false, i1 false}
!157 = !{!"../fs/xfs/xfs_trace.h", i32 2766, i32 1}
!158 = distinct !{null, !157, !"__warned", i1 false, i1 false}
!159 = distinct !{null, !160, !"__already_done", i1 false, i1 false}
!160 = !{!"../fs/xfs/xfs_trace.h", i32 2767, i32 1}
!161 = distinct !{null, !160, !"__warned", i1 false, i1 false}
!162 = distinct !{null, !163, !"__already_done", i1 false, i1 false}
!163 = !{!"../fs/xfs/xfs_trace.h", i32 2810, i32 1}
!164 = distinct !{null, !163, !"__warned", i1 false, i1 false}
!165 = !{!"sp"}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{!"auto-init"}
!176 = !{!"branch_weights", i32 2000, i32 1}
!177 = !{i64 2166366588}
!178 = !{i64 2166366963}
!179 = !{i64 2148316605, i64 2148316610, i64 2148316623, i64 2148316667, i64 2148316701, i64 2148316722}
!180 = !{i64 2163325568}
!181 = !{i64 2163325845}
!182 = !{i64 2150018698}
!183 = !{i64 2150019734}
!184 = !{i64 2163366566}
!185 = !{i64 2163366823}
!186 = !{i64 2163447471}
!187 = !{i64 2163447784}
!188 = !{i64 2163557698}
!189 = !{i64 2163558013}
!190 = !{i64 2163492398}
!191 = !{i64 2163492693}
!192 = !{i64 2163512396}
!193 = !{i64 2163512705}
!194 = !{i64 2166371749}
!195 = !{i64 2166372115}
!196 = !{!"branch_weights", i32 1, i32 2000}
!197 = !{i64 2166372626}
!198 = !{i64 2166373000}
!199 = !{i64 2166373618}
!200 = !{i64 2166373984}
!201 = !{i64 2166375011}
!202 = !{i64 2166375560}
!203 = !{i64 2166375944}
!204 = !{i64 2166376385}
!205 = !{i64 2166376767}
!206 = !{i64 2166377133}
!207 = !{i64 2166404626}
!208 = !{i64 2166404993}
!209 = !{i64 2166405901}
!210 = !{i64 2163247182}
!211 = !{i64 2163247489}
!212 = !{i64 2166400944}
!213 = !{i64 2166401563}
!214 = !{i64 2166401981}
!215 = !{i64 2166402531}
!216 = !{i64 2166402952}
!217 = !{i64 2166403409}
!218 = !{i64 2166403776}
!219 = !{i64 2166404143}
!220 = !{!"branch_weights", i32 4001, i32 4000000}
!221 = !{i64 2166378033}
!222 = !{i64 2166378405}
!223 = !{i64 2166379663}
!224 = !{i64 2166380175}
!225 = !{i64 2166384662}
!226 = !{i64 2166385043}
!227 = !{i64 2166385490}
!228 = !{i64 2166386056}
!229 = !{i64 2166386495}
!230 = !{i64 2166386887}
!231 = !{i64 2166387254}
!232 = !{i64 2166387646}
!233 = !{i64 2166388013}
!234 = !{i64 2166388462}
!235 = !{i64 2166388829}
!236 = !{i64 2166389248}
!237 = !{i64 2166389640}
!238 = !{i64 2166390007}
!239 = !{i64 2166390579}
!240 = !{i64 2166391043}
!241 = !{i64 2166391440}
!242 = !{i64 2166391902}
!243 = !{i64 2166392269}
!244 = !{i64 2166392645}
!245 = !{i64 2166393823}
!246 = !{i64 2166395201}
!247 = !{i64 2166395596}
!248 = !{i64 2166396043}
!249 = !{i64 2166396756}
!250 = !{i64 2166397230}
!251 = !{i64 2166397699}
!252 = !{i64 2166398144}
!253 = !{i64 2166398649}
!254 = !{i64 2166399163}
!255 = !{i64 2166399664}
!256 = !{i64 2166400141}
!257 = !{!"branch_weights", i32 4001, i32 1}
!258 = !{i64 2163426693}
!259 = !{i64 2163427014}
!260 = !{i64 2163468072}
!261 = !{i64 2163468387}
!262 = !{i64 2163027953}
!263 = !{i64 2163028220}
!264 = !{i64 2166369487}
!265 = !{i64 2166369901}
!266 = !{i64 2166370396}
!267 = !{i64 2166370813}
!268 = !{i64 2166371284}
!269 = !{i64 2163344456}
!270 = !{i64 2163344733}
!271 = !{i64 2163046852}
!272 = !{i64 2163051190}
!273 = !{i64 2163069105}
!274 = !{i64 2163069360}
!275 = !{i64 2163306680}
!276 = !{i64 2163306957}
!277 = !{i64 2163402812}
!278 = !{i64 2163403069}
!279 = !{i64 2163087839}
!280 = !{i64 2163088102}
!281 = !{i64 2163532928}
!282 = !{i64 2163533245}
!283 = !{i64 2163106552}
!284 = !{i64 2163106825}
!285 = !{i64 2163128619}
!286 = !{i64 2163128870}
!287 = !{i64 2166367427}
!288 = !{i64 2166367802}
!289 = !{i64 2163384689}
!290 = !{i64 2163384946}
!291 = !{i64 2163147401}
!292 = !{i64 2163147672}
!293 = !{i64 2163207141}
!294 = !{i64 2163207400}
!295 = !{i64 2163166486}
!296 = !{i64 2163166767}
!297 = !{i64 2163184864}
!298 = !{i64 2163185123}
!299 = !{i64 2163227089}
!300 = !{i64 2163227390}
