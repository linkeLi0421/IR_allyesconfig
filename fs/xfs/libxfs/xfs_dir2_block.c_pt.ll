; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_dir2_block.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_dir2_block.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_buf_ops = type { ptr, %union.anon, ptr, ptr, ptr }
%union.anon = type { [2 x i32] }
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
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_dir3_blk_hdr = type { i32, i32, i64, i64, %struct.uuid_t, i64 }
%struct.xfs_da_geometry = type { i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%struct.xfs_da_args = type { ptr, ptr, i32, i8, ptr, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_dir2_block_tail = type { i32, i32 }
%struct.xfs_dir2_leaf_entry = type { i32, i32 }
%struct.xfs_dir2_data_free = type { i16, i16 }
%struct.xfs_dir2_data_unused = type { i16, i16, i16 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_dir2_data_entry = type { i64, i8, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_dir2_sf_hdr = type { i8, i8, [8 x i8] }
%struct.xfs_dir3_icleaf_hdr = type { i32, i32, i16, i16, i16, ptr }
%struct.xfs_name = type { ptr, i32, i32 }
%struct.xfs_dir2_sf_entry = type { i8, [2 x i8], [0 x i8] }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@xfs_dir_hash_dot = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@xfs_dir_hash_dotdot = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xfs_dir3_block\00", [17 x i8] zeroinitializer }, align 32
@xfs_dir3_block_buf_ops = dso_local constant { %struct.xfs_buf_ops, [40 x i8] } { %struct.xfs_buf_ops { ptr @.str.2, %union.anon { [2 x i32] [i32 1480864322, i32 1480868403] }, ptr @xfs_dir3_block_read_verify, ptr @xfs_dir3_block_write_verify, ptr @xfs_dir3_block_verify }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"highstale < be32_to_cpu(btp->count)\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fs/xfs/libxfs/xfs_dir2_block.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"be64_to_cpu(dep->inumber) != args->inumber\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"leafhdr.magic == XFS_DIR2_LEAF1_MAGIC || leafhdr.magic == XFS_DIR3_LEAF1_MAGIC\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"hdr->magic == cpu_to_be32(XFS_DIR2_DATA_MAGIC) || hdr->magic == cpu_to_be32(XFS_DIR3_DATA_MAGIC)\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"to == be32_to_cpu(btp->count)\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ifp->if_format == XFS_DINODE_FMT_LOCAL\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"dp->i_disk_size >= offsetof(struct xfs_dir2_sf_hdr, parent)\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ifp->if_bytes == dp->i_disk_size\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ifp->if_u1.if_data != NULL\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"dp->i_disk_size >= xfs_dir2_sf_hdr_size(oldsfp->i8count)\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dp->i_df.if_nextents == 0\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"needscan == 0\00", [18 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dir2_block_addname = external dso_local global %struct.tracepoint, align 4
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_dir2_block_addname.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dir2_block_lookup = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_block_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"low <= high\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"args->op_flags & XFS_DA_OP_OKNOENT\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dir2_block_removename = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_block_removename.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dir2_block_replace = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_block_replace.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dir2_leaf_to_block = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_leaf_to_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dir2_sf_to_block = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_sf_to_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 54001]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1480864324, i64 1480868915]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 42, i32 54 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"xfs_dir_hash_dot\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 34, i32 21 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 43, i32 57 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"xfs_dir_hash_dotdot\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 34, i32 39 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 109, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant [23 x i8] c"xfs_dir3_block_buf_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 108, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 538, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 890, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 956, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 987, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1038, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1099, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1100, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1104, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1105, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1106, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1107, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1150, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1963, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 108, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 711, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [34 x i8] c"../fs/xfs/libxfs/xfs_dir2_block.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 720, i32 4 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @.str, ptr @xfs_dir_hash_dot, ptr @.str.1, ptr @xfs_dir_hash_dotdot, ptr @.str.2, ptr @xfs_dir3_block_buf_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dir_hash_dot to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dir_hash_dotdot to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dir3_block_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir_startup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfs_da_hashname(ptr noundef nonnull @.str, i32 noundef 1) #8
  store i32 %call, ptr @xfs_dir_hash_dot, align 4
  %call1 = tail call i32 @xfs_da_hashname(ptr noundef nonnull @.str.1, i32 noundef 2) #8
  store i32 %call1, ptr @xfs_dir_hash_dotdot, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_hashname(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_dir3_block_read_verify(ptr noundef %bp) #0 align 64 {
entry:
  %zero.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero.i.i.i) #8
  %8 = ptrtoint ptr %zero.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %zero.i.i.i, align 4
  %call.i.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %5, i32 noundef 4) #8
  %call1.i.i.i = call i32 @crc32c(i32 noundef %call.i.i.i, ptr noundef nonnull %zero.i.i.i, i32 noundef 4) #8
  %arrayidx.i.i.i = getelementptr i8, ptr %5, i32 8
  %sub.i.i.i = add i32 %shl.i, -8
  %call3.i.i.i = call i32 @crc32c(i32 noundef %call1.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef %sub.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero.i.i.i) #8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %11 = xor i32 %call3.i.i.i, -1
  %12 = call i32 @llvm.bswap.i32(i32 %11) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i.i.not = icmp eq i32 %10, %12
  br i1 %cmp.i.i.not, label %land.lhs.true.if.else_crit_edge, label %__here

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

__here:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !74
  call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -74, ptr noundef blockaddress(@xfs_dir3_block_read_verify, %__here)) #8
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call2 = call ptr @xfs_dir3_block_verify(ptr noundef %bp)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else.if.end5_crit_edge, label %if.then4

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call2) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else.if.end5_crit_edge, %__here
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_dir3_block_write_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call = tail call ptr @xfs_dir3_block_verify(ptr noundef %bp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %li_lsn = getelementptr inbounds %struct.xfs_log_item, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %li_lsn, align 8
  %lsn = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %lsn to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %lsn, align 8
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
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %add.ptr.i.i.i, align 4
  %call.i.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %12, i32 noundef %shl.i) #8
  %16 = xor i32 %call.i.i.i, -1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %add.ptr.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_dir3_block_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call = tail call zeroext i1 @xfs_verify_magic(ptr noundef %bp, i32 noundef %5) #8
  br i1 %call, label %if.end, label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !75
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end18_crit_edge, label %if.then2

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then2:                                         ; preds = %if.end
  %uuid = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %3, i32 0, i32 4
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 54
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %uuid, ptr noundef dereferenceable(16) %sb_meta_uuid, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end7, label %__here5

__here5:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !76
  br label %cleanup

if.end7:                                          ; preds = %if.then2
  %blkno = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %blkno, align 8
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %10 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_maps.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %13)
  %cmp.not = icmp eq i64 %9, %13
  br i1 %cmp.not, label %if.end12, label %__here10

__here10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !77
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %lsn = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %lsn to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %lsn, align 8
  %call13 = tail call zeroext i1 @xfs_log_check_lsn(ptr noundef %1, i64 noundef %15) #8
  br i1 %call13, label %if.end12.if.end18_crit_edge, label %__here15

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

__here15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !78
  br label %cleanup

if.end18:                                         ; preds = %if.end12.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %call19 = tail call ptr @__xfs_dir3_data_check(ptr noundef null, ptr noundef %bp) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %__here15, %__here10, %__here5, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_dir3_block_verify, %__here10), %__here10 ], [ %call19, %if.end18 ], [ blockaddress(@xfs_dir3_block_verify, %__here15), %__here15 ], [ blockaddress(@xfs_dir3_block_verify, %__here5), %__here5 ], [ blockaddress(@xfs_dir3_block_verify, %__here), %__here ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir3_block_read(ptr noundef %tp, ptr noundef %dp, ptr noundef %bpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_dir_geo, align 4
  %datablk = getelementptr inbounds %struct.xfs_da_geometry, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %datablk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %datablk, align 4
  %call = tail call i32 @xfs_da_read_buf(ptr noundef %tp, ptr noundef %dp, i32 noundef %5, i32 noundef 0, ptr noundef %bpp, i32 noundef 0, ptr noundef nonnull @xfs_dir3_block_buf_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bpp, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call fastcc ptr @xfs_dir3_block_header_check(ptr noundef %dp, ptr noundef nonnull %7)
  %tobool3.not = icmp eq ptr %call2, null
  %8 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bpp, align 4
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__xfs_buf_mark_corrupt(ptr noundef %9, ptr noundef nonnull %call2) #8
  %10 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bpp, align 4
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %11) #8
  %12 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %bpp, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_trans_buf_set_type(ptr noundef %tp, ptr noundef %9, i32 noundef 10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %if.then4 ], [ 0, %if.end5 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_read_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_dir3_block_header_check(ptr nocapture noundef readonly %dp, ptr nocapture noundef readonly %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup3_crit_edge, label %if.then

entry.cleanup3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

if.then:                                          ; preds = %entry
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %4 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_addr, align 4
  %owner = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %owner, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 4
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp.not = icmp eq i64 %7, %9
  br i1 %cmp.not, label %if.then.cleanup3_crit_edge, label %__here

if.then.cleanup3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  br label %cleanup3

cleanup3:                                         ; preds = %__here, %if.then.cleanup3_crit_edge, %entry.cleanup3_crit_edge
  %retval.1 = phi ptr [ blockaddress(@xfs_dir3_block_header_check, %__here), %__here ], [ null, %entry.cleanup3_crit_edge ], [ null, %if.then.cleanup3_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfs_buf_mark_corrupt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_buf_set_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_block_addname(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %needscan.i = alloca i32, align 4
  %bp = alloca ptr, align 4
  %needlog = alloca i32, align 4
  %needscan = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needlog) #8
  %1 = ptrtoint ptr %needlog to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %needlog, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needscan) #8
  %2 = ptrtoint ptr %needscan to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %needscan, align 4, !annotation !80
  tail call fastcc void @trace_xfs_dir2_block_addname(ptr noundef %args)
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %3 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dp1, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans, align 4
  %call = call i32 @xfs_dir3_block_read(ptr noundef %6, ptr noundef %4, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup199_crit_edge

entry.cleanup199_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup199

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %9 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %namelen, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %8, i32 0, i32 61
  %11 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %spec.select.v.i = select i1 %tobool.i.not.i, i32 11, i32 12
  %spec.select.i = add i32 %10, -1
  %sub.i = add i32 %spec.select.i, %spec.select.v.i
  %or.i = or i32 %sub.i, 7
  %add3.i = add i32 %or.i, 1
  %13 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_addr, align 4
  %17 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %args, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %20
  %add.ptr1.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i, i32 -1
  %21 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %22
  %add.ptr.i366 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i, i32 %idx.neg.i
  %call.i = call ptr @xfs_dir2_data_bestfree_p(ptr noundef %8, ptr noundef %16) #8
  %stale.i = getelementptr inbounds %struct.xfs_dir2_block_tail, ptr %add.ptr1.i, i32 0, i32 1
  %23 = ptrtoint ptr %stale.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end28.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %length.i = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %conv.i)
  %cmp.not.i = icmp sgt i32 %add3.i, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %call.i, align 2
  %conv4.i = zext i16 %28 to i32
  %add.ptr.i367 = getelementptr i8, ptr %16, i32 %conv4.i
  br label %xfs_dir2_block_need_space.exit

if.end.i:                                         ; preds = %if.then.i
  %add.ptr5.i = getelementptr i16, ptr %add.ptr.i366, i32 -1
  %29 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr5.i, align 2
  %conv6.i = zext i16 %30 to i32
  %add.ptr7.i = getelementptr i8, ptr %16, i32 %conv6.i
  %31 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %32)
  %cmp9.i = icmp eq i16 %32, -1
  br i1 %cmp9.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %length12.i = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr7.i, i32 0, i32 1
  %33 = ptrtoint ptr %length12.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %length12.i, align 2
  %conv13.i = zext i16 %34 to i32
  %sub.i368 = shl i32 %24, 3
  %mul.i = add i32 %sub.i368, -8
  %add.i = add i32 %mul.i, %conv13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add3.i)
  %cmp15.i = icmp ult i32 %add.i, %add3.i
  %spec.select.i369 = select i1 %cmp15.i, ptr null, ptr %add.ptr7.i
  br label %xfs_dir2_block_need_space.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub20.i = shl i32 %24, 3
  %mul21.i = add i32 %sub20.i, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul21.i, i32 %add3.i)
  %cmp22.i = icmp ult i32 %mul21.i, %add3.i
  %.blp.i = select i1 %cmp22.i, ptr null, ptr %add.ptr.i366
  br label %xfs_dir2_block_need_space.exit

if.end28.i:                                       ; preds = %if.end
  %add.ptr29.i = getelementptr i16, ptr %add.ptr.i366, i32 -1
  %35 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr29.i, align 2
  %conv30.i = zext i16 %36 to i32
  %add.ptr31.i = getelementptr i8, ptr %16, i32 %conv30.i
  %37 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr31.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %38)
  %cmp34.i = icmp eq i16 %38, -1
  br i1 %cmp34.i, label %if.then36.i, label %if.end28.i.xfs_dir2_block_need_space.exit_crit_edge

if.end28.i.xfs_dir2_block_need_space.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_block_need_space.exit

if.then36.i:                                      ; preds = %if.end28.i
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %call.i, align 2
  %conv39.i = zext i16 %40 to i32
  %add.ptr40.i = getelementptr i8, ptr %16, i32 %conv39.i
  %cmp41.not.i = icmp eq ptr %add.ptr40.i, %add.ptr31.i
  br i1 %cmp41.not.i, label %if.end50.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  %length44.i = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr40.i, i32 0, i32 1
  %41 = ptrtoint ptr %length44.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %length44.i, align 2
  %conv45.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %conv45.i)
  %cmp46.i = icmp sgt i32 %add3.i, %conv45.i
  %spec.store.select.i = select i1 %cmp46.i, ptr null, ptr %add.ptr40.i
  br label %xfs_dir2_block_need_space.exit

if.end50.i:                                       ; preds = %if.then36.i
  %length51.i = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr31.i, i32 0, i32 1
  %43 = ptrtoint ptr %length51.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %length51.i, align 2
  %conv52.i = zext i16 %44 to i32
  %add53.i = add i32 %or.i, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %add53.i, i32 %conv52.i)
  %cmp54.i = icmp ugt i32 %add53.i, %conv52.i
  br i1 %cmp54.i, label %if.then56.i, label %if.end50.i.xfs_dir2_block_need_space.exit_crit_edge

if.end50.i.xfs_dir2_block_need_space.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_block_need_space.exit

if.then56.i:                                      ; preds = %if.end50.i
  %length58.i = getelementptr %struct.xfs_dir2_data_free, ptr %call.i, i32 1, i32 1
  %45 = ptrtoint ptr %length58.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %length58.i, align 2
  %conv59.i = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %conv59.i)
  %cmp60.not.i = icmp sgt i32 %add3.i, %conv59.i
  br i1 %cmp60.not.i, label %if.then56.i.xfs_dir2_block_need_space.exit_crit_edge, label %if.then62.i

if.then56.i.xfs_dir2_block_need_space.exit_crit_edge: ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_block_need_space.exit

if.then62.i:                                      ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx57.i = getelementptr %struct.xfs_dir2_data_free, ptr %call.i, i32 1
  %47 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx57.i, align 2
  %conv65.i = zext i16 %48 to i32
  %add.ptr66.i = getelementptr i8, ptr %16, i32 %conv65.i
  br label %xfs_dir2_block_need_space.exit

xfs_dir2_block_need_space.exit:                   ; preds = %if.then62.i, %if.then56.i.xfs_dir2_block_need_space.exit_crit_edge, %if.end50.i.xfs_dir2_block_need_space.exit_crit_edge, %if.then43.i, %if.end28.i.xfs_dir2_block_need_space.exit_crit_edge, %if.else.i, %if.then11.i, %if.then2.i
  %tobool21.not = phi i1 [ true, %if.then2.i ], [ false, %if.then11.i ], [ false, %if.else.i ], [ true, %if.end28.i.xfs_dir2_block_need_space.exit_crit_edge ], [ true, %if.then43.i ], [ true, %if.end50.i.xfs_dir2_block_need_space.exit_crit_edge ], [ true, %if.then56.i.xfs_dir2_block_need_space.exit_crit_edge ], [ true, %if.then62.i ]
  %dup.0.i = phi ptr [ %add.ptr.i367, %if.then2.i ], [ %spec.select.i369, %if.then11.i ], [ %.blp.i, %if.else.i ], [ null, %if.end28.i.xfs_dir2_block_need_space.exit_crit_edge ], [ %spec.store.select.i, %if.then43.i ], [ %add.ptr31.i, %if.end50.i.xfs_dir2_block_need_space.exit_crit_edge ], [ null, %if.then56.i.xfs_dir2_block_need_space.exit_crit_edge ], [ %add.ptr66.i, %if.then62.i ]
  %enddup.0.i = phi ptr [ null, %if.then2.i ], [ null, %if.then11.i ], [ null, %if.else.i ], [ %add.ptr31.i, %if.end28.i.xfs_dir2_block_need_space.exit_crit_edge ], [ %add.ptr31.i, %if.then43.i ], [ %add.ptr31.i, %if.end50.i.xfs_dir2_block_need_space.exit_crit_edge ], [ %add.ptr31.i, %if.then56.i.xfs_dir2_block_need_space.exit_crit_edge ], [ %add.ptr31.i, %if.then62.i ]
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %49 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %op_flags, align 8
  %and = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %xfs_dir2_block_need_space.exit
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %6, ptr noundef %52) #8
  %tobool7.not = icmp eq ptr %dup.0.i, null
  %. = select i1 %tobool7.not, i32 -28, i32 0
  br label %cleanup199

if.end10:                                         ; preds = %xfs_dir2_block_need_space.exit
  %tobool11.not = icmp eq ptr %dup.0.i, null
  br i1 %tobool11.not, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end10
  %total = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 12
  %53 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %total, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp = icmp eq i32 %54, 0
  br i1 %cmp, label %if.then12.cleanup199_crit_edge, label %if.end14

if.then12.cleanup199_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup199

if.end14:                                         ; preds = %if.then12
  %55 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bp, align 4
  %call15 = call i32 @xfs_dir2_block_to_leaf(ptr noundef %args, ptr noundef %56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup199_crit_edge

if.end14.cleanup199_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup199

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = call i32 @xfs_dir2_leaf_addname(ptr noundef %args) #8
  br label %cleanup199

if.end20:                                         ; preds = %if.end10
  %57 = ptrtoint ptr %needscan to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %needscan, align 4
  %58 = ptrtoint ptr %needlog to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %needlog, align 4
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  %59 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needscan.i) #8
  %61 = ptrtoint ptr %needscan.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %needscan.i, align 4
  %62 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr1.i, align 4
  %sub.i370 = add i32 %63, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i370)
  %cmp55.i = icmp sgt i32 %sub.i370, -1
  br i1 %cmp55.i, label %if.then22.for.body.i_crit_edge, label %if.then22.for.end.i_crit_edge

if.then22.for.end.i_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.then22.for.body.i_crit_edge:                   ; preds = %if.then22
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then22.for.body.i_crit_edge
  %lfloghigh.0 = phi i32 [ %lfloghigh.1, %for.inc.i.for.body.i_crit_edge ], [ -1, %if.then22.for.body.i_crit_edge ]
  %highstale.061.i = phi i32 [ %highstale.2.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %if.then22.for.body.i_crit_edge ]
  %toidx.058.i = phi i32 [ %toidx.1.i, %for.inc.i.for.body.i_crit_edge ], [ %sub.i370, %if.then22.for.body.i_crit_edge ]
  %fromidx.056.i = phi i32 [ %dec13.i, %for.inc.i.for.body.i_crit_edge ], [ %sub.i370, %if.then22.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i366, i32 %fromidx.056.i
  %address.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i366, i32 %fromidx.056.i, i32 1
  %64 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %address.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp1.i = icmp eq i32 %65, 0
  br i1 %cmp1.i, label %if.then.i371, label %for.body.i.if.end7.i_crit_edge

for.body.i.if.end7.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then.i371:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %highstale.061.i)
  %cmp2.i = icmp eq i32 %highstale.061.i, -1
  br i1 %cmp2.i, label %if.then.i371.if.end7.i_crit_edge, label %if.else.i372

if.then.i371.if.end7.i_crit_edge:                 ; preds = %if.then.i371
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.else.i372:                                     ; preds = %if.then.i371
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lfloghigh.0)
  %cmp4.i = icmp eq i32 %lfloghigh.0, -1
  %spec.select = select i1 %cmp4.i, i32 %toidx.058.i, i32 %lfloghigh.0
  br label %for.inc.i

if.end7.i:                                        ; preds = %if.then.i371.if.end7.i_crit_edge, %for.body.i.if.end7.i_crit_edge
  %highstale.1.i = phi i32 [ %highstale.061.i, %for.body.i.if.end7.i_crit_edge ], [ %toidx.058.i, %if.then.i371.if.end7.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %fromidx.056.i, i32 %toidx.058.i)
  %cmp8.i = icmp slt i32 %fromidx.056.i, %toidx.058.i
  br i1 %cmp8.i, label %if.then9.i, label %if.end7.i.if.end12.i_crit_edge

if.end7.i.if.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i366, i32 %toidx.058.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %67 = load i64, ptr %arrayidx.i, align 4
  %68 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 8)
  store i64 %67, ptr %arrayidx10.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end12.i_crit_edge
  %dec.i = add i32 %toidx.058.i, -1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i, %if.else.i372
  %lfloghigh.1 = phi i32 [ %lfloghigh.0, %if.end12.i ], [ %spec.select, %if.else.i372 ]
  %toidx.1.i = phi i32 [ %dec.i, %if.end12.i ], [ %toidx.058.i, %if.else.i372 ]
  %highstale.2.i = phi i32 [ %highstale.1.i, %if.end12.i ], [ %highstale.061.i, %if.else.i372 ]
  %dec13.i = add nsw i32 %fromidx.056.i, -1
  %cmp.i = icmp sgt i32 %fromidx.056.i, 0
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then22.for.end.i_crit_edge
  %lfloghigh.2 = phi i32 [ -1, %if.then22.for.end.i_crit_edge ], [ %lfloghigh.1, %for.inc.i.for.end.i_crit_edge ]
  %toidx.0.lcssa.i = phi i32 [ %sub.i370, %if.then22.for.end.i_crit_edge ], [ %toidx.1.i, %for.inc.i.for.end.i_crit_edge ]
  %69 = ptrtoint ptr %stale.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %stale.i, align 4
  %.neg.i = add i32 %toidx.0.lcssa.i, 2
  %sub15.i = sub i32 %.neg.i, %70
  %sub17.neg.i = sub i32 1, %70
  %sub18.i = add i32 %sub17.neg.i, %lfloghigh.2
  %71 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr1.i, align 4
  %add.i.i = add i32 %sub17.neg.i, %72
  store i32 %add.i.i, ptr %add.ptr1.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i366 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub24.i = shl i32 %70, 3
  %mul.i374 = add i32 %sub24.i, -8
  call void @xfs_dir2_data_make_free(ptr noundef %args, ptr noundef %60, i32 noundef %sub.ptr.sub.i, i32 noundef %mul.i374, ptr noundef nonnull %needlog, ptr noundef nonnull %needscan.i) #8
  %73 = ptrtoint ptr %stale.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %stale.i, align 4
  %74 = ptrtoint ptr %needscan.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %needscan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i375 = icmp eq i32 %75, 0
  br i1 %tobool.not.i375, label %for.end.i.xfs_dir2_block_compact.exit_crit_edge, label %if.then26.i

for.end.i.xfs_dir2_block_compact.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_block_compact.exit

if.then26.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dp1, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  call void @xfs_dir2_data_freescan(ptr noundef %79, ptr noundef %16, ptr noundef nonnull %needlog) #8
  br label %xfs_dir2_block_compact.exit

xfs_dir2_block_compact.exit:                      ; preds = %if.then26.i, %for.end.i.xfs_dir2_block_compact.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needscan.i) #8
  %80 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i376 = sub i32 0, %81
  %add.ptr.i377 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i, i32 %idx.neg.i376
  br label %if.end27

if.else:                                          ; preds = %if.end20
  %82 = ptrtoint ptr %stale.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %stale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool24.not = icmp eq i32 %83, 0
  br i1 %tobool24.not, label %if.else.if.end27_crit_edge, label %if.then25

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr1.i, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.else.if.end27_crit_edge, %xfs_dir2_block_compact.exit
  %lfloghigh.3 = phi i32 [ 0, %if.else.if.end27_crit_edge ], [ -1, %if.then25 ], [ %sub18.i, %xfs_dir2_block_compact.exit ]
  %lfloglow.0 = phi i32 [ 0, %if.else.if.end27_crit_edge ], [ %85, %if.then25 ], [ %sub15.i, %xfs_dir2_block_compact.exit ]
  %blp.0 = phi ptr [ %add.ptr.i366, %if.else.if.end27_crit_edge ], [ %add.ptr.i366, %if.then25 ], [ %add.ptr.i377, %xfs_dir2_block_compact.exit ]
  %86 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr1.i, align 4
  %sub = add i32 %87, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp29.not410 = icmp slt i32 %sub, 0
  br i1 %cmp29.not410, label %if.end27.land.rhs.lr.ph_crit_edge, label %for.body.lr.ph

if.end27.land.rhs.lr.ph_crit_edge:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.lr.ph

for.body.lr.ph:                                   ; preds = %if.end27
  %hashval30 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  %88 = ptrtoint ptr %hashval30 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %hashval30, align 8
  br label %for.body

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %for.body.lr.ph
  %low.0412 = phi i32 [ 0, %for.body.lr.ph ], [ %low.1, %if.end33.for.body_crit_edge ]
  %high.0411 = phi i32 [ %sub, %for.body.lr.ph ], [ %high.1, %if.end33.for.body_crit_edge ]
  %add = add i32 %low.0412, %high.0411
  %shr = ashr i32 %add, 1
  %arrayidx = getelementptr %struct.xfs_dir2_leaf_entry, ptr %blp.0, i32 %shr
  %90 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %89)
  %cmp31 = icmp eq i32 %91, %89
  br i1 %cmp31, label %for.body.for.end_crit_edge, label %if.end33

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end33:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %89)
  %cmp35 = icmp ult i32 %91, %89
  %add37 = add nsw i32 %shr, 1
  %sub39 = add nsw i32 %shr, -1
  %high.1 = select i1 %cmp35, i32 %high.0411, i32 %sub39
  %low.1 = select i1 %cmp35, i32 %add37, i32 %low.0412
  %cmp29.not = icmp sgt i32 %low.1, %high.1
  br i1 %cmp29.not, label %if.end33.for.end_crit_edge, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end33.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add)
  %cmp41414 = icmp sgt i32 %add, -1
  br i1 %cmp41414, label %for.end.land.rhs.lr.ph_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

for.end.land.rhs.lr.ph_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %for.end.land.rhs.lr.ph_crit_edge, %if.end27.land.rhs.lr.ph_crit_edge
  %mid.1437 = phi i32 [ %shr, %for.end.land.rhs.lr.ph_crit_edge ], [ 0, %if.end27.land.rhs.lr.ph_crit_edge ]
  %hashval44 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  %92 = ptrtoint ptr %hashval44 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %hashval44, align 8
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %mid.2415 = phi i32 [ %mid.1437, %land.rhs.lr.ph ], [ %dec, %while.body.land.rhs_crit_edge ]
  %arrayidx42 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %blp.0, i32 %mid.2415
  %94 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %93)
  %cmp45.not = icmp ult i32 %95, %93
  br i1 %cmp45.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %dec = add nsw i32 %mid.2415, -1
  %cmp41 = icmp sgt i32 %mid.2415, 0
  br i1 %cmp41, label %while.body.land.rhs_crit_edge, label %while.end.thread

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %for.end.while.end_crit_edge
  %mid.2.lcssa = phi i32 [ %shr, %for.end.while.end_crit_edge ], [ %mid.2415, %land.rhs.while.end_crit_edge ]
  %96 = ptrtoint ptr %stale.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %stale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool47.not = icmp eq i32 %97, 0
  br i1 %tobool47.not, label %while.end.if.then48_crit_edge, label %for.cond65.preheader

while.end.if.then48_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48

while.end.thread:                                 ; preds = %while.body
  %98 = ptrtoint ptr %stale.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %stale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool47.not439 = icmp eq i32 %99, 0
  br i1 %tobool47.not439, label %while.end.thread.if.then48_crit_edge, label %while.end.thread.for.end75_crit_edge

while.end.thread.for.end75_crit_edge:             ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end75

while.end.thread.if.then48_crit_edge:             ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48

for.cond65.preheader:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mid.2.lcssa)
  %cmp66418 = icmp sgt i32 %mid.2.lcssa, -1
  br i1 %cmp66418, label %for.cond65.preheader.land.rhs68_crit_edge, label %for.cond65.preheader.for.end75_crit_edge

for.cond65.preheader.for.end75_crit_edge:         ; preds = %for.cond65.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end75

for.cond65.preheader.land.rhs68_crit_edge:        ; preds = %for.cond65.preheader
  br label %land.rhs68

if.then48:                                        ; preds = %while.end.thread.if.then48_crit_edge, %while.end.if.then48_crit_edge
  %mid.2.lcssa442 = phi i32 [ -1, %while.end.thread.if.then48_crit_edge ], [ %mid.2.lcssa, %while.end.if.then48_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %enddup.0.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i32
  %length = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %enddup.0.i, i32 0, i32 1
  %100 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %length, align 2
  %conv = zext i16 %101 to i32
  %sub.ptr.sub = sub i32 -8, %sub.ptr.rhs.cast
  %add49 = add i32 %sub.ptr.sub, %sub.ptr.lhs.cast
  %sub50 = add i32 %add49, %conv
  %102 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bp, align 4
  %call51 = call i32 @xfs_dir2_data_use_free(ptr noundef %args, ptr noundef %103, ptr noundef %enddup.0.i, i32 noundef %sub50, i32 noundef 8, ptr noundef nonnull %needlog, ptr noundef nonnull %needscan) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.then48.cleanup199_crit_edge

if.then48.cleanup199_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup199

if.end54:                                         ; preds = %if.then48
  %104 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr1.i, align 4
  %add.i378 = add i32 %105, 1
  store i32 %add.i378, ptr %add.ptr1.i, align 4
  %106 = ptrtoint ptr %needscan to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %needscan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool56.not = icmp eq i32 %107, 0
  br i1 %tobool56.not, label %if.end54.if.end59_crit_edge, label %if.then57

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %4, align 8
  call void @xfs_dir2_data_freescan(ptr noundef %109, ptr noundef %16, ptr noundef nonnull %needlog) #8
  %110 = ptrtoint ptr %needscan to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %needscan, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end54.if.end59_crit_edge
  %incdec.ptr = getelementptr %struct.xfs_dir2_leaf_entry, ptr %blp.0, i32 -1
  %inc = add i32 %mid.2.lcssa442, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool60.not = icmp eq i32 %inc, 0
  br i1 %tobool60.not, label %if.end59.if.end161_crit_edge, label %if.then61

if.end59.if.end161_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl i32 %inc, 3
  %111 = call ptr @memmove(ptr %incdec.ptr, ptr %blp.0, i32 %mul)
  br label %if.end161

land.rhs68:                                       ; preds = %for.inc.land.rhs68_crit_edge, %for.cond65.preheader.land.rhs68_crit_edge
  %lowstale.0419 = phi i32 [ %dec74, %for.inc.land.rhs68_crit_edge ], [ %mid.2.lcssa, %for.cond65.preheader.land.rhs68_crit_edge ]
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %blp.0, i32 %lowstale.0419, i32 1
  %112 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp70.not = icmp eq i32 %113, 0
  br i1 %cmp70.not, label %land.rhs68.for.end75_crit_edge, label %for.inc

land.rhs68.for.end75_crit_edge:                   ; preds = %land.rhs68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end75

for.inc:                                          ; preds = %land.rhs68
  %dec74 = add nsw i32 %lowstale.0419, -1
  %cmp66 = icmp sgt i32 %lowstale.0419, 0
  br i1 %cmp66, label %for.inc.land.rhs68_crit_edge, label %for.inc.for.end75_crit_edge

for.inc.for.end75_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end75

for.inc.land.rhs68_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs68

for.end75:                                        ; preds = %for.inc.for.end75_crit_edge, %land.rhs68.for.end75_crit_edge, %for.cond65.preheader.for.end75_crit_edge, %while.end.thread.for.end75_crit_edge
  %mid.2.lcssa440445 = phi i32 [ %mid.2.lcssa, %for.cond65.preheader.for.end75_crit_edge ], [ -1, %while.end.thread.for.end75_crit_edge ], [ %mid.2.lcssa, %for.inc.for.end75_crit_edge ], [ %mid.2.lcssa, %land.rhs68.for.end75_crit_edge ]
  %lowstale.0.lcssa = phi i32 [ %mid.2.lcssa, %for.cond65.preheader.for.end75_crit_edge ], [ -1, %while.end.thread.for.end75_crit_edge ], [ %lowstale.0419, %land.rhs68.for.end75_crit_edge ], [ -1, %for.inc.for.end75_crit_edge ]
  %cmp66.lcssa = phi i1 [ false, %for.cond65.preheader.for.end75_crit_edge ], [ false, %while.end.thread.for.end75_crit_edge ], [ %cmp70.not, %for.inc.for.end75_crit_edge ], [ %cmp70.not, %land.rhs68.for.end75_crit_edge ]
  %add76 = add i32 %mid.2.lcssa440445, 1
  %sub88 = sub i32 %mid.2.lcssa440445, %lowstale.0.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %add76, i32 %87)
  %cmp79425 = icmp ult i32 %add76, %87
  br i1 %cmp79425, label %land.lhs.true.lr.ph, label %for.end75.for.end96_crit_edge

for.end75.for.end96_crit_edge:                    ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end96

land.lhs.true.lr.ph:                              ; preds = %for.end75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lowstale.0.lcssa)
  %cmp86 = icmp slt i32 %lowstale.0.lcssa, 0
  %address82450 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %blp.0, i32 %add76, i32 1
  %114 = ptrtoint ptr %address82450 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %address82450, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp83.not451 = icmp eq i32 %115, 0
  br i1 %cmp83.not451, label %land.lhs.true.lr.ph.for.end96_crit_edge, label %land.lhs.true.lr.ph.land.rhs85_crit_edge

land.lhs.true.lr.ph.land.rhs85_crit_edge:         ; preds = %land.lhs.true.lr.ph
  br label %land.rhs85

land.lhs.true.lr.ph.for.end96_crit_edge:          ; preds = %land.lhs.true.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end96

land.lhs.true:                                    ; preds = %for.inc94
  %address82 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %blp.0, i32 %inc95, i32 1
  %116 = ptrtoint ptr %address82 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %address82, align 4
  %cmp83.not = icmp eq i32 %117, 0
  br i1 %cmp83.not, label %land.lhs.true.for.end96_crit_edge, label %land.lhs.true.land.rhs85_crit_edge

land.lhs.true.land.rhs85_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs85

land.lhs.true.for.end96_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end96

land.rhs85:                                       ; preds = %land.lhs.true.land.rhs85_crit_edge, %land.lhs.true.lr.ph.land.rhs85_crit_edge
  %highstale.0426453 = phi i32 [ %inc95, %land.lhs.true.land.rhs85_crit_edge ], [ %add76, %land.lhs.true.lr.ph.land.rhs85_crit_edge ]
  %cmp79428452 = phi i1 [ %cmp79, %land.lhs.true.land.rhs85_crit_edge ], [ true, %land.lhs.true.lr.ph.land.rhs85_crit_edge ]
  %sub89 = sub i32 %highstale.0426453, %mid.2.lcssa440445
  call void @__sanitizer_cov_trace_cmp4(i32 %sub88, i32 %sub89)
  %cmp90 = icmp sgt i32 %sub88, %sub89
  %or.cond = select i1 %cmp86, i1 true, i1 %cmp90
  br i1 %or.cond, label %for.inc94, label %land.rhs85.for.end96_crit_edge

land.rhs85.for.end96_crit_edge:                   ; preds = %land.rhs85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end96

for.inc94:                                        ; preds = %land.rhs85
  %inc95 = add i32 %highstale.0426453, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc95, i32 %87)
  %cmp79 = icmp ult i32 %inc95, %87
  call void @__sanitizer_cov_trace_cmp4(i32 %inc95, i32 %87)
  %exitcond.not = icmp eq i32 %inc95, %87
  br i1 %exitcond.not, label %for.inc94.for.end96_crit_edge, label %land.lhs.true

for.inc94.for.end96_crit_edge:                    ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end96

for.end96:                                        ; preds = %for.inc94.for.end96_crit_edge, %land.rhs85.for.end96_crit_edge, %land.lhs.true.for.end96_crit_edge, %land.lhs.true.lr.ph.for.end96_crit_edge, %for.end75.for.end96_crit_edge
  %highstale.0.lcssa = phi i32 [ %add76, %for.end75.for.end96_crit_edge ], [ %add76, %land.lhs.true.lr.ph.for.end96_crit_edge ], [ %highstale.0426453, %land.rhs85.for.end96_crit_edge ], [ %inc95, %land.lhs.true.for.end96_crit_edge ], [ %87, %for.inc94.for.end96_crit_edge ]
  %cmp79.lcssa = phi i1 [ false, %for.end75.for.end96_crit_edge ], [ true, %land.lhs.true.lr.ph.for.end96_crit_edge ], [ %cmp79428452, %land.rhs85.for.end96_crit_edge ], [ %cmp79, %land.lhs.true.for.end96_crit_edge ], [ %cmp79, %for.inc94.for.end96_crit_edge ]
  br i1 %cmp66.lcssa, label %land.lhs.true99, label %for.end96.if.else126_crit_edge

for.end96.if.else126_crit_edge:                   ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else126

land.lhs.true99:                                  ; preds = %for.end96
  call void @__sanitizer_cov_trace_cmp4(i32 %highstale.0.lcssa, i32 %87)
  %cmp101 = icmp ne i32 %highstale.0.lcssa, %87
  %sub104 = sub i32 %highstale.0.lcssa, %mid.2.lcssa440445
  call void @__sanitizer_cov_trace_cmp4(i32 %sub88, i32 %sub104)
  %cmp105.not = icmp sgt i32 %sub88, %sub104
  %or.cond447 = select i1 %cmp101, i1 %cmp105.not, i1 false
  br i1 %or.cond447, label %land.lhs.true99.if.else126_crit_edge, label %if.then107

land.lhs.true99.if.else126_crit_edge:             ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else126

if.then107:                                       ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_cmp4(i32 %mid.2.lcssa440445, i32 %lowstale.0.lcssa)
  %tobool109.not = icmp eq i32 %mid.2.lcssa440445, %lowstale.0.lcssa
  br i1 %tobool109.not, label %if.then107.if.end159_crit_edge, label %if.then110

if.then107.if.end159_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

if.then110:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  %add112 = add nuw i32 %lowstale.0.lcssa, 1
  br label %if.end159.sink.split

if.else126:                                       ; preds = %land.lhs.true99.if.else126_crit_edge, %for.end96.if.else126_crit_edge
  br i1 %cmp79.lcssa, label %if.else126.cond.end134_crit_edge, label %cond.false133, !prof !81

if.else126.cond.end134_crit_edge:                 ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end134

cond.false133:                                    ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 538) #8
  br label %cond.end134

cond.end134:                                      ; preds = %cond.false133, %if.else126.cond.end134_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %highstale.0.lcssa, i32 %add76)
  %tobool137.not = icmp eq i32 %highstale.0.lcssa, %add76
  br i1 %tobool137.not, label %cond.end134.if.end159_crit_edge, label %if.then138

cond.end134.if.end159_crit_edge:                  ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

if.then138:                                       ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #10
  %sub136 = sub i32 %highstale.0.lcssa, %add76
  %add139 = add i32 %mid.2.lcssa440445, 2
  br label %if.end159.sink.split

if.end159.sink.split:                             ; preds = %if.then138, %if.then110
  %add76.sink448 = phi i32 [ %add76, %if.then138 ], [ %add112, %if.then110 ]
  %sub136.sink = phi i32 [ %sub136, %if.then138 ], [ %sub88, %if.then110 ]
  %add139.pn = phi i32 [ %add139, %if.then138 ], [ %lowstale.0.lcssa, %if.then110 ]
  %add76.sink.ph = phi i32 [ %add76, %if.then138 ], [ %lowstale.0.lcssa, %if.then110 ]
  %highstale.0.lcssa.sink.ph = phi i32 [ %highstale.0.lcssa, %if.then138 ], [ %mid.2.lcssa440445, %if.then110 ]
  %mid.4.ph = phi i32 [ %add76, %if.then138 ], [ %mid.2.lcssa440445, %if.then110 ]
  %arrayidx140.sink = getelementptr %struct.xfs_dir2_leaf_entry, ptr %blp.0, i32 %add139.pn
  %arrayidx141 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %blp.0, i32 %add76.sink448
  %mul143 = shl i32 %sub136.sink, 3
  %118 = call ptr @memmove(ptr %arrayidx140.sink, ptr %arrayidx141, i32 %mul143)
  br label %if.end159

if.end159:                                        ; preds = %if.end159.sink.split, %cond.end134.if.end159_crit_edge, %if.then107.if.end159_crit_edge
  %add76.sink = phi i32 [ %lowstale.0.lcssa, %if.then107.if.end159_crit_edge ], [ %add76, %cond.end134.if.end159_crit_edge ], [ %add76.sink.ph, %if.end159.sink.split ]
  %highstale.0.lcssa.sink = phi i32 [ %mid.2.lcssa440445, %if.then107.if.end159_crit_edge ], [ %highstale.0.lcssa, %cond.end134.if.end159_crit_edge ], [ %highstale.0.lcssa.sink.ph, %if.end159.sink.split ]
  %mid.4 = phi i32 [ %mid.2.lcssa440445, %if.then107.if.end159_crit_edge ], [ %add76, %cond.end134.if.end159_crit_edge ], [ %mid.4.ph, %if.end159.sink.split ]
  %119 = call i32 @llvm.smin.i32(i32 %add76.sink, i32 %lfloglow.0)
  %120 = call i32 @llvm.smax.i32(i32 %highstale.0.lcssa.sink, i32 %lfloghigh.3)
  %121 = ptrtoint ptr %stale.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %stale.i, align 4
  %add.i379 = add i32 %122, -1
  store i32 %add.i379, ptr %stale.i, align 4
  %.pre = ptrtoint ptr %16 to i32
  br label %if.end161

if.end161:                                        ; preds = %if.end159, %if.then61, %if.end59.if.end161_crit_edge
  %sub.ptr.rhs.cast166.pre-phi = phi i32 [ %sub.ptr.rhs.cast, %if.then61 ], [ %sub.ptr.rhs.cast, %if.end59.if.end161_crit_edge ], [ %.pre, %if.end159 ]
  %lfloghigh.5 = phi i32 [ %inc, %if.then61 ], [ 0, %if.end59.if.end161_crit_edge ], [ %120, %if.end159 ]
  %lfloglow.3 = phi i32 [ 0, %if.then61 ], [ 0, %if.end59.if.end161_crit_edge ], [ %119, %if.end159 ]
  %mid.5 = phi i32 [ %inc, %if.then61 ], [ 0, %if.end59.if.end161_crit_edge ], [ %mid.4, %if.end159 ]
  %blp.2 = phi ptr [ %incdec.ptr, %if.then61 ], [ %incdec.ptr, %if.end59.if.end161_crit_edge ], [ %blp.0, %if.end159 ]
  %hashval162 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  %123 = ptrtoint ptr %hashval162 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %hashval162, align 8
  %arrayidx163 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %blp.2, i32 %mid.5
  %125 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %arrayidx163, align 4
  %sub.ptr.lhs.cast165 = ptrtoint ptr %dup.0.i to i32
  %sub.ptr.sub167 = sub i32 %sub.ptr.lhs.cast165, %sub.ptr.rhs.cast166.pre-phi
  %conv.i380 = ashr i32 %sub.ptr.sub167, 3
  %address171 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %blp.2, i32 %mid.5, i32 1
  %126 = ptrtoint ptr %address171 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %conv.i380, ptr %address171, align 4
  %127 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bp, align 4
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %128, i32 0, i32 16
  %129 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %b_addr.i, align 4
  %t_mountp.i = getelementptr inbounds %struct.xfs_trans, ptr %6, i32 0, i32 10
  %131 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %t_mountp.i, align 4
  %m_dir_geo.i = getelementptr inbounds %struct.xfs_mount, ptr %132, i32 0, i32 6
  %133 = ptrtoint ptr %m_dir_geo.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %m_dir_geo.i, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 4
  %add.ptr.i.i = getelementptr i8, ptr %130, i32 %136
  %add.ptr1.i.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i.i, i32 -1
  %137 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %add.ptr1.i.i, align 4
  %idx.neg.i.i = sub i32 0, %138
  %add.ptr.i11.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i.i, i32 %idx.neg.i.i
  %arrayidx.i381 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i11.i, i32 %lfloglow.3
  %sub.ptr.lhs.cast.i382 = ptrtoint ptr %arrayidx.i381 to i32
  %sub.ptr.rhs.cast.i383 = ptrtoint ptr %130 to i32
  %sub.ptr.sub.i384 = sub i32 %sub.ptr.lhs.cast.i382, %sub.ptr.rhs.cast.i383
  %add.i385 = add i32 %lfloghigh.5, 1
  %arrayidx2.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i11.i, i32 %add.i385
  %sub.ptr.lhs.cast3.i = ptrtoint ptr %arrayidx2.i to i32
  %139 = xor i32 %sub.ptr.rhs.cast.i383, -1
  %sub.i386 = add i32 %sub.ptr.lhs.cast3.i, %139
  call void @xfs_trans_log_buf(ptr noundef %6, ptr noundef %128, i32 noundef %sub.ptr.sub.i384, i32 noundef %sub.i386) #8
  %140 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bp, align 4
  %call175 = call i32 @xfs_dir2_data_use_free(ptr noundef %args, ptr noundef %141, ptr noundef nonnull %dup.0.i, i32 noundef %sub.ptr.sub167, i32 noundef %add3.i, ptr noundef nonnull %needlog, ptr noundef nonnull %needscan) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.end178, label %if.end161.cleanup199_crit_edge

if.end161.cleanup199_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup199

if.end178:                                        ; preds = %if.end161
  %inumber = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 9
  %142 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %inumber, align 8
  %144 = ptrtoint ptr %dup.0.i to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %143, ptr %dup.0.i, align 8
  %145 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %namelen, align 8
  %conv181 = trunc i32 %146 to i8
  %namelen182 = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %dup.0.i, i32 0, i32 1
  %147 = ptrtoint ptr %namelen182 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv181, ptr %namelen182, align 8
  %name = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %dup.0.i, i32 0, i32 2
  %name183 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %148 = ptrtoint ptr %name183 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name183, align 4
  %150 = load i32, ptr %namelen, align 8
  %151 = call ptr @memcpy(ptr %name, ptr %149, i32 %150)
  %152 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %4, align 8
  %filetype = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 3
  %154 = ptrtoint ptr %filetype to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %filetype, align 4
  call void @xfs_dir2_data_put_ftype(ptr noundef %153, ptr noundef nonnull %dup.0.i, i8 noundef zeroext %155) #8
  %156 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %4, align 8
  %call187 = call ptr @xfs_dir2_data_entry_tag_p(ptr noundef %157, ptr noundef nonnull %dup.0.i) #8
  %conv191 = trunc i32 %sub.ptr.sub167 to i16
  %158 = ptrtoint ptr %call187 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv191, ptr %call187, align 2
  %159 = ptrtoint ptr %needscan to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %needscan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool192.not = icmp eq i32 %160, 0
  br i1 %tobool192.not, label %if.end178.if.end195_crit_edge, label %if.then193

if.end178.if.end195_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195

if.then193:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  %161 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %4, align 8
  call void @xfs_dir2_data_freescan(ptr noundef %162, ptr noundef %16, ptr noundef nonnull %needlog) #8
  br label %if.end195

if.end195:                                        ; preds = %if.then193, %if.end178.if.end195_crit_edge
  %163 = ptrtoint ptr %needlog to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %needlog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool196.not = icmp eq i32 %164, 0
  br i1 %tobool196.not, label %if.end195.if.end198_crit_edge, label %if.then197

if.end195.if.end198_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198

if.then197:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  %165 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %bp, align 4
  call void @xfs_dir2_data_log_header(ptr noundef %args, ptr noundef %166) #8
  br label %if.end198

if.end198:                                        ; preds = %if.then197, %if.end195.if.end198_crit_edge
  %167 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %bp, align 4
  %b_addr.i387 = getelementptr inbounds %struct.xfs_buf, ptr %168, i32 0, i32 16
  %169 = ptrtoint ptr %b_addr.i387 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %b_addr.i387, align 4
  %171 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %t_mountp.i, align 4
  %m_dir_geo.i389 = getelementptr inbounds %struct.xfs_mount, ptr %172, i32 0, i32 6
  %173 = ptrtoint ptr %m_dir_geo.i389 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %m_dir_geo.i389, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %174, align 4
  %add.ptr.i.i390 = getelementptr i8, ptr %170, i32 %176
  %add.ptr1.i.i391 = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i.i390, i32 -1
  %sub.ptr.lhs.cast.i392 = ptrtoint ptr %add.ptr1.i.i391 to i32
  %sub.ptr.rhs.cast.i393 = ptrtoint ptr %170 to i32
  %sub.ptr.sub.i394 = sub i32 %sub.ptr.lhs.cast.i392, %sub.ptr.rhs.cast.i393
  %add.ptr.i395 = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr1.i.i391, i32 1
  %sub.ptr.lhs.cast1.i = ptrtoint ptr %add.ptr.i395 to i32
  %177 = xor i32 %sub.ptr.rhs.cast.i393, -1
  %sub.i396 = add i32 %sub.ptr.lhs.cast1.i, %177
  call void @xfs_trans_log_buf(ptr noundef %6, ptr noundef %168, i32 noundef %sub.ptr.sub.i394, i32 noundef %sub.i396) #8
  %178 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %bp, align 4
  call void @xfs_dir2_data_log_entry(ptr noundef %args, ptr noundef %179, ptr noundef nonnull %dup.0.i) #8
  %180 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %bp, align 4
  call void @xfs_dir3_data_check(ptr noundef %4, ptr noundef %181) #8
  br label %cleanup199

cleanup199:                                       ; preds = %if.end198, %if.end161.cleanup199_crit_edge, %if.then48.cleanup199_crit_edge, %if.end18, %if.end14.cleanup199_crit_edge, %if.then12.cleanup199_crit_edge, %if.then6, %entry.cleanup199_crit_edge
  %retval.1 = phi i32 [ 0, %if.end198 ], [ %call19, %if.end18 ], [ %call, %entry.cleanup199_crit_edge ], [ %., %if.then6 ], [ -28, %if.then12.cleanup199_crit_edge ], [ %call15, %if.end14.cleanup199_crit_edge ], [ %call175, %if.end161.cleanup199_crit_edge ], [ %call51, %if.then48.cleanup199_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needscan) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needlog) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_block_addname(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_addname, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_block_addname, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !83
  %call42 = tail call i32 @__traceiter_xfs_dir2_block_addname(ptr noundef null, ptr noundef %args) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !84
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_addname, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_addname, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_block_addname.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_block_addname.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 1963, ptr noundef nonnull @.str.17) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
declare dso_local i32 @xfs_dir2_block_to_leaf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_leaf_addname(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_data_use_free(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_data_freescan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_dir2_block_log_leaf(ptr noundef %tp, ptr noundef %bp, i32 noundef %first, i32 noundef %last) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %2 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_mountp, align 4
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_dir_geo, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %7
  %add.ptr1.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i, i32 -1
  %8 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %9
  %add.ptr.i11 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i, i32 %idx.neg.i
  %arrayidx = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i11, i32 %first
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add i32 %last, 1
  %arrayidx2 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i11, i32 %add
  %sub.ptr.lhs.cast3 = ptrtoint ptr %arrayidx2 to i32
  %10 = xor i32 %sub.ptr.rhs.cast, -1
  %sub = add i32 %sub.ptr.lhs.cast3, %10
  tail call void @xfs_trans_log_buf(ptr noundef %tp, ptr noundef %bp, i32 noundef %sub.ptr.sub, i32 noundef %sub) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_data_put_ftype(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_dir2_data_entry_tag_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_data_log_header(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_dir2_block_log_tail(ptr noundef %tp, ptr noundef %bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %2 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_mountp, align 4
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_dir_geo, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %7
  %add.ptr1.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i, i32 -1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr1.i, i32 1
  %sub.ptr.lhs.cast1 = ptrtoint ptr %add.ptr to i32
  %8 = xor i32 %sub.ptr.rhs.cast, -1
  %sub = add i32 %sub.ptr.lhs.cast1, %8
  tail call void @xfs_trans_log_buf(ptr noundef %tp, ptr noundef %bp, i32 noundef %sub.ptr.sub, i32 noundef %sub) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_data_log_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir3_data_check(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_block_lookup(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  %ent = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ent) #8
  %1 = ptrtoint ptr %ent to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ent, align 4, !annotation !80
  tail call fastcc void @trace_xfs_dir2_block_lookup(ptr noundef %args)
  %call = call fastcc i32 @xfs_dir2_block_lookup_int(ptr noundef %args, ptr noundef nonnull %bp, ptr noundef nonnull %ent)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_addr, align 4
  tail call void @xfs_dir3_data_check(ptr noundef %3, ptr noundef %5) #8
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %11
  %add.ptr1.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i, i32 -1
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %13
  %add.ptr.i30 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i, i32 %idx.neg.i
  %14 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ent, align 4
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i30, i32 %15, i32 1
  %16 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %address, align 4
  %shl.i.i = shl i32 %17, 3
  %sub.i.i = add i32 %11, -1
  %conv1.i.i = and i32 %shl.i.i, %sub.i.i
  %add.ptr = getelementptr i8, ptr %7, i32 %conv1.i.i
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr, align 8
  %inumber6 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 9
  %20 = ptrtoint ptr %inumber6 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %inumber6, align 8
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 8
  %call7 = tail call zeroext i8 @xfs_dir2_data_get_ftype(ptr noundef %22, ptr noundef %add.ptr) #8
  %filetype = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 3
  %23 = ptrtoint ptr %filetype to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call7, ptr %filetype, align 4
  %name = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 2
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 1
  %24 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %namelen, align 8
  %conv = zext i8 %25 to i32
  %call8 = tail call i32 @xfs_dir_cilookup_result(ptr noundef %args, ptr noundef %name, i32 noundef %conv) #8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %26 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trans, align 4
  tail call void @xfs_trans_brelse(ptr noundef %27, ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ent) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_block_lookup(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_lookup, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_block_lookup, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !87
  %call42 = tail call i32 @__traceiter_xfs_dir2_block_lookup(ptr noundef null, ptr noundef %args) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !88
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_lookup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_lookup, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_block_lookup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_block_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 1964, ptr noundef nonnull @.str.17) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
define internal fastcc i32 @xfs_dir2_block_lookup_int(ptr noundef %args, ptr nocapture noundef writeonly %bpp, ptr nocapture noundef writeonly %entno) unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !80
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %1 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp1, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %3 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans, align 4
  %call = call i32 @xfs_dir3_block_read(ptr noundef %4, ptr noundef %2, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_addr, align 4
  call void @xfs_dir3_data_check(ptr noundef %2, ptr noundef %6) #8
  %9 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %12
  %add.ptr1.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i, i32 -1
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %14
  %add.ptr.i135 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i, i32 %idx.neg.i
  %sub = add i32 %14, -1
  %hashval7 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %if.end10.for.cond_crit_edge, %if.end
  %high.0 = phi i32 [ %sub, %if.end ], [ %high.1, %if.end10.for.cond_crit_edge ]
  %low.0 = phi i32 [ 0, %if.end ], [ %low.1, %if.end10.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %low.0, i32 %high.0)
  %cmp4.not = icmp sgt i32 %low.0, %high.0
  br i1 %cmp4.not, label %cond.false, label %for.cond.cond.end_crit_edge, !prof !89

for.cond.cond.end_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.4, i32 noundef 711) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.cond.cond.end_crit_edge
  %add = add i32 %low.0, %high.0
  %shr = ashr i32 %add, 1
  %arrayidx = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i135, i32 %shr
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %hashval7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hashval7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp8 = icmp eq i32 %16, %18
  br i1 %cmp8, label %while.cond.preheader, label %if.end10

while.cond.preheader:                             ; preds = %cond.end
  %smin = call i32 @llvm.smin.i32(i32 %shr, i32 0)
  br label %while.cond

if.end10:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp12 = icmp ult i32 %16, %18
  %add14 = add nsw i32 %shr, 1
  %sub15 = add nsw i32 %shr, -1
  %high.1 = select i1 %cmp12, i32 %high.0, i32 %sub15
  %low.1 = select i1 %cmp12, i32 %add14, i32 %low.0
  %cmp17 = icmp sgt i32 %low.1, %high.1
  br i1 %cmp17, label %if.then18, label %if.end10.for.cond_crit_edge

if.end10.for.cond_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then18:                                        ; preds = %if.end10
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %19 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %op_flags, align 8
  %and = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %cond.false27, label %if.then18.cleanup.sink.split_crit_edge, !prof !89

if.then18.cleanup.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cond.false27:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.4, i32 noundef 720) #8
  br label %cleanup.sink.split

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %while.cond.preheader
  %mid.0 = phi i32 [ %sub31, %land.rhs.while.cond_crit_edge ], [ %shr, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mid.0)
  %cmp30 = icmp sgt i32 %mid.0, 0
  br i1 %cmp30, label %land.rhs, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %sub31 = add nsw i32 %mid.0, -1
  %arrayidx32 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i135, i32 %sub31
  %21 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx32, align 4
  %cmp35 = icmp eq i32 %22, %16
  br i1 %cmp35, label %land.rhs.while.cond_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %mid.0.lcssa = phi i32 [ %smin, %while.cond.while.end_crit_edge ], [ %mid.0, %land.rhs.while.end_crit_edge ]
  %cmpresult = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 25
  br label %do.body

do.body:                                          ; preds = %land.rhs57.do.body_crit_edge, %while.end
  %mid.1 = phi i32 [ %mid.0.lcssa, %while.end ], [ %inc, %land.rhs57.do.body_crit_edge ]
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i135, i32 %mid.1, i32 1
  %23 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp37 = icmp eq i32 %24, 0
  br i1 %cmp37, label %do.body.do.cond_crit_edge, label %if.end39

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

if.end39:                                         ; preds = %do.body
  %25 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %args, align 8
  %shl.i.i = shl i32 %24, 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %sub.i.i = add i32 %28, -1
  %conv1.i.i = and i32 %sub.i.i, %shl.i.i
  %add.ptr = getelementptr i8, ptr %8, i32 %conv1.i.i
  %name = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 2
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 1
  %29 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %namelen, align 8
  %conv = zext i8 %30 to i32
  %call42 = call i32 @xfs_dir2_compname(ptr noundef %args, ptr noundef %name, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 0
  br i1 %cmp43.not, label %if.end39.do.cond_crit_edge, label %land.lhs.true

if.end39.do.cond_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

land.lhs.true:                                    ; preds = %if.end39
  %31 = ptrtoint ptr %cmpresult to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cmpresult, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call42, i32 %32)
  %cmp45.not = icmp eq i32 %call42, %32
  br i1 %cmp45.not, label %land.lhs.true.do.cond_crit_edge, label %if.then47

land.lhs.true.do.cond_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

if.then47:                                        ; preds = %land.lhs.true
  %33 = ptrtoint ptr %cmpresult to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call42, ptr %cmpresult, align 4
  %34 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bp, align 4
  %36 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %bpp, align 4
  %37 = ptrtoint ptr %entno to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mid.1, ptr %entno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call42)
  %cmp49 = icmp eq i32 %call42, 1
  br i1 %cmp49, label %if.then47.cleanup_crit_edge, label %if.then47.do.cond_crit_edge

if.then47.do.cond_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond:                                          ; preds = %if.then47.do.cond_crit_edge, %land.lhs.true.do.cond_crit_edge, %if.end39.do.cond_crit_edge, %do.body.do.cond_crit_edge
  %inc = add i32 %mid.1, 1
  %38 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %39)
  %cmp55 = icmp ult i32 %inc, %39
  br i1 %cmp55, label %land.rhs57, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.rhs57:                                       ; preds = %do.cond
  %arrayidx58 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i135, i32 %inc
  %40 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx58, align 4
  %cmp60 = icmp eq i32 %41, %16
  br i1 %cmp60, label %land.rhs57.do.body_crit_edge, label %land.rhs57.do.end_crit_edge

land.rhs57.do.end_crit_edge:                      ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.rhs57.do.body_crit_edge:                     ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %land.rhs57.do.end_crit_edge, %do.cond.do.end_crit_edge
  %op_flags63 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %42 = ptrtoint ptr %op_flags63 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %op_flags63, align 8
  %and64 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %cond.false73, label %do.end.cond.end74_crit_edge, !prof !89

do.end.cond.end74_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end74

cond.false73:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.4, i32 noundef 759) #8
  br label %cond.end74

cond.end74:                                       ; preds = %cond.false73, %do.end.cond.end74_crit_edge
  %44 = ptrtoint ptr %cmpresult to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cmpresult, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp76 = icmp eq i32 %45, 2
  br i1 %cmp76, label %cond.end74.cleanup_crit_edge, label %cond.end74.cleanup.sink.split_crit_edge

cond.end74.cleanup.sink.split_crit_edge:          ; preds = %cond.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cond.end74.cleanup_crit_edge:                     ; preds = %cond.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %cond.end74.cleanup.sink.split_crit_edge, %cond.false27, %if.then18.cleanup.sink.split_crit_edge
  %46 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %46)
  %.sink = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %4, ptr noundef %.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cond.end74.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %cond.end74.cleanup_crit_edge ], [ -2, %cleanup.sink.split ], [ 0, %if.then47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @xfs_dir2_data_get_ftype(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir_cilookup_result(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_block_removename(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  %ent = alloca i32, align 4
  %needlog = alloca i32, align 4
  %needscan = alloca i32, align 4
  %sfh = alloca %struct.xfs_dir2_sf_hdr, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ent) #8
  %1 = ptrtoint ptr %ent to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ent, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needlog) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needscan) #8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %sfh) #8
  %2 = call ptr @memset(ptr %sfh, i32 255, i32 10)
  tail call fastcc void @trace_xfs_dir2_block_removename(ptr noundef %args)
  %call = call fastcc i32 @xfs_dir2_block_lookup_int(ptr noundef %args, ptr noundef nonnull %bp, ptr noundef nonnull %ent)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %3 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dp1, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans, align 4
  %7 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_addr, align 4
  %11 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %args, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %14
  %add.ptr1.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i, i32 -1
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %16
  %add.ptr.i68 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i, i32 %idx.neg.i
  %17 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ent, align 4
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i68, i32 %18, i32 1
  %19 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %address, align 4
  %shl.i.i = shl i32 %20, 3
  %sub.i.i = add i32 %14, -1
  %conv1.i.i = and i32 %shl.i.i, %sub.i.i
  %add.ptr = getelementptr i8, ptr %10, i32 %conv1.i.i
  %21 = ptrtoint ptr %needscan to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %needscan, align 4
  %22 = ptrtoint ptr %needlog to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %needlog, align 4
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %4, align 8
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 1
  %25 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %namelen, align 8
  %conv = zext i8 %26 to i32
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %24, i32 0, i32 61
  %27 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %28, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %spec.select.v.i = select i1 %tobool.i.not.i, i32 11, i32 12
  %spec.select.i = add nsw i32 %conv, -1
  %sub.i = add nsw i32 %spec.select.i, %spec.select.v.i
  %or.i = or i32 %sub.i, 7
  %add3.i = add nsw i32 %or.i, 1
  call void @xfs_dir2_data_make_free(ptr noundef %args, ptr noundef %8, i32 noundef %conv1.i.i, i32 noundef %add3.i, ptr noundef nonnull %needlog, ptr noundef nonnull %needscan) #8
  %stale = getelementptr inbounds %struct.xfs_dir2_block_tail, ptr %add.ptr1.i, i32 0, i32 1
  %29 = ptrtoint ptr %stale to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stale, align 4
  %add.i = add i32 %30, 1
  store i32 %add.i, ptr %stale, align 4
  %31 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_addr, align 4
  %t_mountp.i = getelementptr inbounds %struct.xfs_trans, ptr %6, i32 0, i32 10
  %33 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %t_mountp.i, align 4
  %m_dir_geo.i = getelementptr inbounds %struct.xfs_mount, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %m_dir_geo.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %m_dir_geo.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %38
  %add.ptr1.i.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i.i, i32 -1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.ptr.i69 = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr1.i.i, i32 1
  %sub.ptr.lhs.cast1.i = ptrtoint ptr %add.ptr.i69 to i32
  %39 = xor i32 %sub.ptr.rhs.cast.i, -1
  %sub.i70 = add i32 %sub.ptr.lhs.cast1.i, %39
  call void @xfs_trans_log_buf(ptr noundef %6, ptr noundef %8, i32 noundef %sub.ptr.sub.i, i32 noundef %sub.i70) #8
  %40 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %address, align 4
  %41 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_addr, align 4
  %43 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %t_mountp.i, align 4
  %m_dir_geo.i73 = getelementptr inbounds %struct.xfs_mount, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %m_dir_geo.i73 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %m_dir_geo.i73, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %add.ptr.i.i74 = getelementptr i8, ptr %42, i32 %48
  %add.ptr1.i.i75 = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i.i74, i32 -1
  %49 = ptrtoint ptr %add.ptr1.i.i75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr1.i.i75, align 4
  %idx.neg.i.i = sub i32 0, %50
  %add.ptr.i11.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i.i75, i32 %idx.neg.i.i
  %arrayidx.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i11.i, i32 %18
  %sub.ptr.lhs.cast.i76 = ptrtoint ptr %arrayidx.i to i32
  %sub.ptr.rhs.cast.i77 = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i78 = sub i32 %sub.ptr.lhs.cast.i76, %sub.ptr.rhs.cast.i77
  %add.i79 = add i32 %18, 1
  %arrayidx2.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i11.i, i32 %add.i79
  %sub.ptr.lhs.cast3.i = ptrtoint ptr %arrayidx2.i to i32
  %51 = xor i32 %sub.ptr.rhs.cast.i77, -1
  %sub.i80 = add i32 %sub.ptr.lhs.cast3.i, %51
  call void @xfs_trans_log_buf(ptr noundef %6, ptr noundef %8, i32 noundef %sub.ptr.sub.i78, i32 noundef %sub.i80) #8
  %52 = ptrtoint ptr %needscan to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %needscan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool9.not = icmp eq i32 %53, 0
  br i1 %tobool9.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %4, align 8
  call void @xfs_dir2_data_freescan(ptr noundef %55, ptr noundef %10, ptr noundef nonnull %needlog) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %56 = ptrtoint ptr %needlog to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %needlog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool13.not = icmp eq i32 %57, 0
  br i1 %tobool13.not, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_dir2_data_log_header(ptr noundef %args, ptr noundef %8) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  call void @xfs_dir3_data_check(ptr noundef %4, ptr noundef %8) #8
  %call16 = call i32 @xfs_dir2_block_sfsize(ptr noundef %4, ptr noundef %10, ptr noundef nonnull %sfh) #8
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %4, i32 0, i32 23
  %58 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp.not = icmp eq i8 %59, 0
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %conv17 = zext i8 %59 to i32
  %shl = shl nuw nsw i32 %conv17, 3
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %4, align 8
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %61, i32 0, i32 17
  %62 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %sb_inodesize, align 8
  %conv22 = zext i16 %63 to i32
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %61, i32 0, i32 61
  %64 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %65, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond.neg = select i1 %tobool.i.not, i32 -100, i32 -176
  %sub = add nsw i32 %cond.neg, %conv22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond26 = phi i32 [ %shl, %cond.true ], [ %sub, %cond.false ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call16, i32 %cond26)
  %cmp27 = icmp ugt i32 %call16, %cond26
  br i1 %cmp27, label %cond.end.cleanup_crit_edge, label %if.end30

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = call i32 @xfs_dir2_block_to_sf(ptr noundef %args, ptr noundef %8, i32 noundef %call16, ptr noundef nonnull %sfh) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.end30 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %sfh) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needscan) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needlog) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ent) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_block_removename(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_removename, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_block_removename, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !90
  %call42 = tail call i32 @__traceiter_xfs_dir2_block_removename(ptr noundef null, ptr noundef %args) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !91
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_removename, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_removename, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_block_removename.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_block_removename.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 1966, ptr noundef nonnull @.str.17) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
declare dso_local void @xfs_dir2_data_make_free(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_block_sfsize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_block_to_sf(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_block_replace(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  %ent = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ent) #8
  %1 = ptrtoint ptr %ent to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ent, align 4, !annotation !80
  tail call fastcc void @trace_xfs_dir2_block_replace(ptr noundef %args)
  %call = call fastcc i32 @xfs_dir2_block_lookup_int(ptr noundef %args, ptr noundef nonnull %bp, ptr noundef nonnull %ent)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_addr, align 4
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %11
  %add.ptr1.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i, i32 -1
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %13
  %add.ptr.i31 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i, i32 %idx.neg.i
  %14 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ent, align 4
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i31, i32 %15, i32 1
  %16 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %address, align 4
  %shl.i.i = shl i32 %17, 3
  %sub.i.i = add i32 %11, -1
  %conv1.i.i = and i32 %shl.i.i, %sub.i.i
  %add.ptr = getelementptr i8, ptr %7, i32 %conv1.i.i
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr, align 8
  %inumber6 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 9
  %20 = ptrtoint ptr %inumber6 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %inumber6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp.not = icmp eq i64 %19, %21
  br i1 %cmp.not, label %cond.false, label %if.end.cond.end_crit_edge, !prof !89

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 890) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %22 = ptrtoint ptr %inumber6 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %inumber6, align 8
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %add.ptr, align 8
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %filetype = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 3
  %27 = ptrtoint ptr %filetype to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %filetype, align 4
  tail call void @xfs_dir2_data_put_ftype(ptr noundef %26, ptr noundef %add.ptr, i8 noundef zeroext %28) #8
  tail call void @xfs_dir2_data_log_entry(ptr noundef %args, ptr noundef %5, ptr noundef %add.ptr) #8
  tail call void @xfs_dir3_data_check(ptr noundef %3, ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ent) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_block_replace(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_replace, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_block_replace, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !92
  %call42 = tail call i32 @__traceiter_xfs_dir2_block_replace(ptr noundef null, ptr noundef %args) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !93
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_replace, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_replace, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_block_replace.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_block_replace.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 1965, ptr noundef nonnull @.str.17) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
define dso_local i32 @xfs_dir2_leaf_to_block(ptr noundef %args, ptr noundef %lbp, ptr noundef %dbp) local_unnamed_addr #0 align 64 {
entry:
  %dbp.addr = alloca ptr, align 4
  %needlog = alloca i32, align 4
  %needscan = alloca i32, align 4
  %sfh = alloca %struct.xfs_dir2_sf_hdr, align 1
  %leafhdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dbp.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dbp, ptr %dbp.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needlog) #8
  %1 = ptrtoint ptr %needlog to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %needlog, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needscan) #8
  %2 = ptrtoint ptr %needscan to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %needscan, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %sfh) #8
  %3 = call ptr @memset(ptr %sfh, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr) #8
  %4 = call ptr @memset(ptr %leafhdr, i32 255, i32 20)
  tail call fastcc void @trace_xfs_dir2_leaf_to_block(ptr noundef %args)
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %5 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dp1, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %7 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %lbp, i32 0, i32 16
  %11 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_addr, align 4
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %10, ptr noundef nonnull %leafhdr, ptr noundef %12) #8
  %13 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %args, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %16
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %magic = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 2
  %17 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %magic, align 4
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i16 %18, label %cond.false [
    i16 -11535, label %entry.cond.end_crit_edge
    i16 15857, label %entry.cond.end_crit_edge255
  ]

entry.cond.end_crit_edge255:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef 957) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge255
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 18
  br label %while.cond

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %cond.end
  %20 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_disk_size, align 8
  %22 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %args, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %conv9 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %conv9)
  %cmp10 = icmp sgt i64 %21, %conv9
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %data_entry_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %data_entry_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_entry_offset, align 4
  %28 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %29
  %add.ptr.i226 = getelementptr i16, ptr %add.ptr1.i, i32 %idx.neg.i
  %sub = add i32 %29, -1
  %arrayidx = getelementptr i16, ptr %add.ptr.i226, i32 %sub
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx, align 2
  %conv14 = zext i16 %31 to i32
  %sub17 = sub i32 %25, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17, i32 %conv14)
  %cmp18 = icmp eq i32 %sub17, %conv14
  br i1 %cmp18, label %cleanup, label %while.body.cleanup145_crit_edge

while.body.cleanup145_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

cleanup:                                          ; preds = %while.body
  %call22 = call i32 @xfs_dir2_leaf_trim_data(ptr noundef %args, ptr noundef %lbp, i32 noundef %sub) #8
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup.while.cond_crit_edge, label %cleanup.cleanup145_crit_edge

cleanup.cleanup145_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = ptrtoint ptr %dbp.addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dbp.addr, align 4
  %tobool26.not = icmp eq ptr %33, null
  br i1 %tobool26.not, label %if.then27, label %while.end.if.end33_crit_edge

while.end.if.end33_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then27:                                        ; preds = %while.end
  %datablk = getelementptr inbounds %struct.xfs_da_geometry, ptr %23, i32 0, i32 7
  %34 = ptrtoint ptr %datablk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %datablk, align 4
  %call29 = call i32 @xfs_dir3_data_read(ptr noundef %8, ptr noundef %6, i32 noundef %35, i32 noundef 0, ptr noundef nonnull %dbp.addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then27.if.end33_crit_edge, label %if.then27.cleanup145_crit_edge

if.then27.cleanup145_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end33:                                         ; preds = %if.then27.if.end33_crit_edge, %while.end.if.end33_crit_edge
  %36 = ptrtoint ptr %dbp.addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dbp.addr, align 4
  %b_addr34 = getelementptr inbounds %struct.xfs_buf, ptr %37, i32 0, i32 16
  %38 = ptrtoint ptr %b_addr34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_addr34, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %41, label %cond.false50 [
    i32 1480868915, label %if.end33.cond.end51_crit_edge
    i32 1480864324, label %if.end33.cond.end51_crit_edge256
  ]

if.end33.cond.end51_crit_edge256:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end51

if.end33.cond.end51_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end51

cond.false50:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, i32 noundef 988) #8
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false50, %if.end33.cond.end51_crit_edge, %if.end33.cond.end51_crit_edge256
  %count = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %43 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %count, align 2
  %conv52 = zext i16 %44 to i32
  %stale = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %45 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %stale, align 4
  %conv53 = zext i16 %46 to i32
  %sub54 = sub nsw i32 %conv52, %conv53
  %mul = shl nsw i32 %sub54, 3
  %add = add nsw i32 %mul, 8
  %47 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %args, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 %50
  %add.ptr57 = getelementptr i16, ptr %add.ptr, i32 -1
  %51 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %add.ptr57, align 2
  %conv58 = zext i16 %52 to i32
  %add.ptr59 = getelementptr i8, ptr %39, i32 %conv58
  %53 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr59, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %54)
  %cmp61.not = icmp eq i16 %54, -1
  br i1 %cmp61.not, label %lor.lhs.false, label %cond.end51.cleanup145_crit_edge

cond.end51.cleanup145_crit_edge:                  ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

lor.lhs.false:                                    ; preds = %cond.end51
  %length = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr59, i32 0, i32 1
  %55 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %length, align 2
  %conv63 = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv63)
  %cmp64 = icmp sgt i32 %add, %conv63
  br i1 %cmp64, label %lor.lhs.false.cleanup145_crit_edge, label %if.end67

lor.lhs.false.cleanup145_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

if.end67:                                         ; preds = %lor.lhs.false
  %57 = ptrtoint ptr %dbp.addr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dbp.addr, align 4
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_addr.i, align 4
  %b_ops.i = getelementptr inbounds %struct.xfs_buf, ptr %58, i32 0, i32 35
  %61 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @xfs_dir3_block_buf_ops, ptr %b_ops.i, align 4
  call void @xfs_trans_buf_set_type(ptr noundef %8, ptr noundef %58, i32 noundef 10) #8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 61
  %62 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %63, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %64 = call ptr @memset(ptr %60, i32 0, i32 48)
  %65 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1480868403, ptr %60, align 8
  %b_maps.i.i = getelementptr inbounds %struct.xfs_buf, ptr %58, i32 0, i32 24
  %66 = ptrtoint ptr %b_maps.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_maps.i.i, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %67, align 8
  %blkno.i = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %60, i32 0, i32 2
  %70 = ptrtoint ptr %blkno.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %blkno.i, align 8
  %i_ino.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 4
  %71 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %i_ino.i, align 8
  %owner.i = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %60, i32 0, i32 5
  %73 = ptrtoint ptr %owner.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %owner.i, align 8
  %uuid.i = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %60, i32 0, i32 4
  %sb_meta_uuid.i = getelementptr inbounds %struct.xfs_sb, ptr %10, i32 0, i32 54
  %74 = call ptr @memcpy(ptr %uuid.i, ptr %sb_meta_uuid.i, i32 16)
  br label %xfs_dir3_block_init.exit

if.end.i:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1480864322, ptr %60, align 8
  br label %xfs_dir3_block_init.exit

xfs_dir3_block_init.exit:                         ; preds = %if.end.i, %if.then.i
  %76 = ptrtoint ptr %needlog to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %needlog, align 4
  %77 = ptrtoint ptr %needscan to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %needscan, align 4
  %78 = ptrtoint ptr %dbp.addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dbp.addr, align 4
  %80 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %args, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %sub70 = sub i32 %83, %add
  %call71 = call i32 @xfs_dir2_data_use_free(ptr noundef %args, ptr noundef %79, ptr noundef %add.ptr59, i32 noundef %sub70, i32 noundef %add, ptr noundef nonnull %needlog, ptr noundef nonnull %needscan) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %xfs_dir3_block_init.exit.cleanup145_crit_edge

xfs_dir3_block_init.exit.cleanup145_crit_edge:    ; preds = %xfs_dir3_block_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

if.end74:                                         ; preds = %xfs_dir3_block_init.exit
  %84 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %args, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %add.ptr.i227 = getelementptr i8, ptr %39, i32 %87
  %add.ptr1.i228 = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i227, i32 -1
  %88 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %count, align 2
  %conv78 = zext i16 %89 to i32
  %90 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %stale, align 4
  %conv80 = zext i16 %91 to i32
  %sub81 = sub nsw i32 %conv78, %conv80
  %92 = ptrtoint ptr %add.ptr1.i228 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %sub81, ptr %add.ptr1.i228, align 4
  %stale83 = getelementptr inbounds %struct.xfs_dir2_block_tail, ptr %add.ptr1.i228, i32 0, i32 1
  %93 = ptrtoint ptr %stale83 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %stale83, align 4
  %94 = ptrtoint ptr %dbp.addr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dbp.addr, align 4
  %b_addr.i229 = getelementptr inbounds %struct.xfs_buf, ptr %95, i32 0, i32 16
  %96 = ptrtoint ptr %b_addr.i229 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %b_addr.i229, align 4
  %t_mountp.i = getelementptr inbounds %struct.xfs_trans, ptr %8, i32 0, i32 10
  %98 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %t_mountp.i, align 4
  %m_dir_geo.i = getelementptr inbounds %struct.xfs_mount, ptr %99, i32 0, i32 6
  %100 = ptrtoint ptr %m_dir_geo.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %m_dir_geo.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %add.ptr.i.i = getelementptr i8, ptr %97, i32 %103
  %add.ptr1.i.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i.i, i32 -1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %97 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.ptr.i230 = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr1.i.i, i32 1
  %sub.ptr.lhs.cast1.i = ptrtoint ptr %add.ptr.i230 to i32
  %104 = xor i32 %sub.ptr.rhs.cast.i, -1
  %sub.i = add i32 %sub.ptr.lhs.cast1.i, %104
  call void @xfs_trans_log_buf(ptr noundef %8, ptr noundef %95, i32 noundef %sub.ptr.sub.i, i32 noundef %sub.i) #8
  %105 = ptrtoint ptr %add.ptr1.i228 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr1.i228, align 4
  %idx.neg.i231 = sub i32 0, %106
  %add.ptr.i232 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i228, i32 %idx.neg.i231
  %107 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %cmp87246.not = icmp eq i16 %108, 0
  br i1 %cmp87246.not, label %if.end74.for.end_crit_edge, label %for.body.lr.ph

if.end74.for.end_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end74
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %to.0249 = phi i32 [ 0, %for.body.lr.ph ], [ %to.1, %for.inc.for.body_crit_edge ]
  %from.0247 = phi i32 [ 0, %for.body.lr.ph ], [ %inc97, %for.inc.for.body_crit_edge ]
  %109 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ents, align 4
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %110, i32 %from.0247, i32 1
  %111 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp90 = icmp eq i32 %112, 0
  br i1 %cmp90, label %for.body.for.inc_crit_edge, label %if.end93

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end93:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx89 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %110, i32 %from.0247
  %inc = add i32 %to.0249, 1
  %arrayidx94 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i232, i32 %to.0249
  %113 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 8)
  %114 = load i64, ptr %arrayidx89, align 4
  %115 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 8)
  store i64 %114, ptr %arrayidx94, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end93, %for.body.for.inc_crit_edge
  %to.1 = phi i32 [ %to.0249, %for.body.for.inc_crit_edge ], [ %inc, %if.end93 ]
  %inc97 = add nuw nsw i32 %from.0247, 1
  %116 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %count, align 2
  %conv86 = zext i16 %117 to i32
  %cmp87 = icmp ult i32 %inc97, %conv86
  br i1 %cmp87, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end74.for.end_crit_edge
  %to.0.lcssa = phi i32 [ 0, %if.end74.for.end_crit_edge ], [ %to.1, %for.inc.for.end_crit_edge ]
  %118 = ptrtoint ptr %add.ptr1.i228 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %add.ptr1.i228, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %to.0.lcssa, i32 %119)
  %cmp99 = icmp eq i32 %to.0.lcssa, %119
  br i1 %cmp99, label %for.end.cond.end109_crit_edge, label %cond.false108, !prof !81

for.end.cond.end109_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end109

cond.false108:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, i32 noundef 1038) #8
  br label %cond.end109

cond.end109:                                      ; preds = %cond.false108, %for.end.cond.end109_crit_edge
  %120 = ptrtoint ptr %dbp.addr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dbp.addr, align 4
  %122 = ptrtoint ptr %add.ptr1.i228 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr1.i228, align 4
  %b_addr.i233 = getelementptr inbounds %struct.xfs_buf, ptr %121, i32 0, i32 16
  %124 = ptrtoint ptr %b_addr.i233 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %b_addr.i233, align 4
  %126 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %t_mountp.i, align 4
  %m_dir_geo.i235 = getelementptr inbounds %struct.xfs_mount, ptr %127, i32 0, i32 6
  %128 = ptrtoint ptr %m_dir_geo.i235 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %m_dir_geo.i235, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  %add.ptr.i.i236 = getelementptr i8, ptr %125, i32 %131
  %add.ptr1.i.i237 = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i.i236, i32 -1
  %132 = ptrtoint ptr %add.ptr1.i.i237 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %add.ptr1.i.i237, align 4
  %idx.neg.i.i = sub i32 0, %133
  %add.ptr.i11.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i.i237, i32 %idx.neg.i.i
  %sub.ptr.lhs.cast.i238 = ptrtoint ptr %add.ptr.i11.i to i32
  %sub.ptr.rhs.cast.i239 = ptrtoint ptr %125 to i32
  %sub.ptr.sub.i240 = sub i32 %sub.ptr.lhs.cast.i238, %sub.ptr.rhs.cast.i239
  %arrayidx2.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i11.i, i32 %123
  %sub.ptr.lhs.cast3.i = ptrtoint ptr %arrayidx2.i to i32
  %134 = xor i32 %sub.ptr.rhs.cast.i239, -1
  %sub.i241 = add i32 %sub.ptr.lhs.cast3.i, %134
  call void @xfs_trans_log_buf(ptr noundef %8, ptr noundef %121, i32 noundef %sub.ptr.sub.i240, i32 noundef %sub.i241) #8
  %135 = ptrtoint ptr %needscan to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %needscan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool112.not = icmp eq i32 %136, 0
  br i1 %tobool112.not, label %cond.end109.if.end115_crit_edge, label %if.then113

cond.end109.if.end115_crit_edge:                  ; preds = %cond.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then113:                                       ; preds = %cond.end109
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %6, align 8
  call void @xfs_dir2_data_freescan(ptr noundef %138, ptr noundef %39, ptr noundef nonnull %needlog) #8
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %cond.end109.if.end115_crit_edge
  %139 = ptrtoint ptr %needlog to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %needlog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool116.not = icmp eq i32 %140, 0
  br i1 %tobool116.not, label %if.end115.if.end118_crit_edge, label %if.then117

if.end115.if.end118_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then117:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %dbp.addr to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dbp.addr, align 4
  call void @xfs_dir2_data_log_header(ptr noundef %args, ptr noundef %142) #8
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %if.end115.if.end118_crit_edge
  %143 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %args, align 8
  %leafblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %144, i32 0, i32 10
  %145 = ptrtoint ptr %leafblk to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %leafblk, align 4
  %call120 = call i32 @xfs_da_shrink_inode(ptr noundef %args, i32 noundef %146, ptr noundef %lbp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %if.end118.cleanup145_crit_edge

if.end118.cleanup145_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

if.end123:                                        ; preds = %if.end118
  %call124 = call i32 @xfs_dir2_block_sfsize(ptr noundef %6, ptr noundef %39, ptr noundef nonnull %sfh) #8
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 23
  %147 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %cmp126.not = icmp eq i8 %148, 0
  br i1 %cmp126.not, label %cond.false131, label %cond.true128

cond.true128:                                     ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  %conv125 = zext i8 %148 to i32
  %shl = shl nuw nsw i32 %conv125, 3
  br label %cond.end138

cond.false131:                                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %6, align 8
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %150, i32 0, i32 17
  %151 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %sb_inodesize, align 8
  %conv133 = zext i16 %152 to i32
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %150, i32 0, i32 61
  %153 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %154, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond.neg = select i1 %tobool.i.not, i32 -100, i32 -176
  %sub137 = add nsw i32 %cond.neg, %conv133
  br label %cond.end138

cond.end138:                                      ; preds = %cond.false131, %cond.true128
  %cond139 = phi i32 [ %shl, %cond.true128 ], [ %sub137, %cond.false131 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call124, i32 %cond139)
  %cmp140 = icmp ugt i32 %call124, %cond139
  br i1 %cmp140, label %cond.end138.cleanup145_crit_edge, label %if.end143

cond.end138.cleanup145_crit_edge:                 ; preds = %cond.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

if.end143:                                        ; preds = %cond.end138
  call void @__sanitizer_cov_trace_pc() #10
  %155 = ptrtoint ptr %dbp.addr to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dbp.addr, align 4
  %call144 = call i32 @xfs_dir2_block_to_sf(ptr noundef %args, ptr noundef %156, i32 noundef %call124, ptr noundef nonnull %sfh) #8
  br label %cleanup145

cleanup145:                                       ; preds = %if.end143, %cond.end138.cleanup145_crit_edge, %if.end118.cleanup145_crit_edge, %xfs_dir3_block_init.exit.cleanup145_crit_edge, %lor.lhs.false.cleanup145_crit_edge, %cond.end51.cleanup145_crit_edge, %if.then27.cleanup145_crit_edge, %cleanup.cleanup145_crit_edge, %while.body.cleanup145_crit_edge
  %retval.2 = phi i32 [ %call144, %if.end143 ], [ %call29, %if.then27.cleanup145_crit_edge ], [ 0, %lor.lhs.false.cleanup145_crit_edge ], [ 0, %cond.end51.cleanup145_crit_edge ], [ %call71, %xfs_dir3_block_init.exit.cleanup145_crit_edge ], [ %call120, %if.end118.cleanup145_crit_edge ], [ 0, %cond.end138.cleanup145_crit_edge ], [ 0, %while.body.cleanup145_crit_edge ], [ %call22, %cleanup.cleanup145_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #8
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %sfh) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needscan) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needlog) #8
  ret i32 %retval.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_leaf_to_block(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_to_block, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_leaf_to_block, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !94
  %call42 = tail call i32 @__traceiter_xfs_dir2_leaf_to_block(ptr noundef null, ptr noundef %args) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_to_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_to_block, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_leaf_to_block.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_leaf_to_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 1973, ptr noundef nonnull @.str.17) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
declare dso_local void @xfs_dir2_leaf_hdr_from_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_leaf_trim_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_data_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_shrink_inode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_sf_to_block(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %blkno = alloca i32, align 4
  %bp = alloca ptr, align 4
  %dummy = alloca i32, align 4
  %needlog = alloca i32, align 4
  %needscan = alloca i32, align 4
  %name = alloca %struct.xfs_name, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blkno) #8
  %8 = ptrtoint ptr %blkno to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %blkno, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %9 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #8
  %10 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %dummy, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needlog) #8
  %11 = ptrtoint ptr %needlog to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %needlog, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needscan) #8
  %12 = ptrtoint ptr %needscan to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %needscan, align 4, !annotation !80
  %data_entry_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %7, i32 0, i32 15
  %13 = ptrtoint ptr %data_entry_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_entry_offset, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name) #8
  %15 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !80
  %16 = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4, !annotation !80
  %18 = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %18, align 4, !annotation !80
  tail call fastcc void @trace_xfs_dir2_sf_to_block(ptr noundef %args)
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 8, i32 6
  %20 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp = icmp eq i8 %21, 1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !81

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, i32 noundef 1099) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 18
  %22 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %23)
  %cmp5 = icmp sgt i64 %23, 1
  br i1 %cmp5, label %cond.end.cond.end15_crit_edge, label %cond.false14, !prof !81

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, i32 noundef 1100) #8
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.end.cond.end15_crit_edge
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 8, i32 4
  %24 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %if_u1, align 4
  %26 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %i_df, align 8
  %28 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %29)
  %cmp17 = icmp eq i64 %27, %29
  br i1 %cmp17, label %cond.end15.cond.end27_crit_edge, label %cond.false26, !prof !81

cond.end15.cond.end27_crit_edge:                  ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end27

cond.false26:                                     ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.4, i32 noundef 1104) #8
  %30 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load ptr, ptr %if_u1, align 4
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false26, %cond.end15.cond.end27_crit_edge
  %31 = phi ptr [ %25, %cond.end15.cond.end27_crit_edge ], [ %.pr, %cond.false26 ]
  %cmp29.not = icmp eq ptr %31, null
  br i1 %cmp29.not, label %cond.false38, label %cond.end27.cond.end39_crit_edge, !prof !89

cond.end27.cond.end39_crit_edge:                  ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end39

cond.false38:                                     ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, i32 noundef 1105) #8
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false38, %cond.end27.cond.end39_crit_edge
  %32 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %i_disk_size, align 8
  %i8count = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %25, i32 0, i32 1
  %34 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp.i = icmp eq i8 %35, 0
  %36 = select i1 %cmp.i, i64 6, i64 10
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %36)
  %cmp43.not = icmp slt i64 %33, %36
  br i1 %cmp43.not, label %cond.false52, label %cond.end39.cond.end53_crit_edge, !prof !89

cond.end39.cond.end53_crit_edge:                  ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end53

cond.false52:                                     ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.4, i32 noundef 1106) #8
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false52, %cond.end39.cond.end53_crit_edge
  %if_nextents = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 8, i32 7
  %37 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp55 = icmp eq i32 %38, 0
  br i1 %cmp55, label %cond.end53.cond.end65_crit_edge, label %cond.false64, !prof !81

cond.end53.cond.end65_crit_edge:                  ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end65

cond.false64:                                     ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.4, i32 noundef 1107) #8
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false64, %cond.end53.cond.end65_crit_edge
  %39 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %i_df, align 8
  %conv67 = trunc i64 %40 to i32
  %call68 = tail call ptr @kmem_alloc(i32 noundef %conv67, i32 noundef 0) #8
  %41 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %i_df, align 8
  %conv70 = trunc i64 %42 to i32
  %43 = call ptr @memcpy(ptr %call68, ptr %25, i32 %conv70)
  %44 = load i64, ptr %i_df, align 8
  %sub = sub i64 0, %44
  tail call void @xfs_idata_realloc(ptr noundef %3, i64 noundef %sub, i32 noundef 0) #8
  tail call void @xfs_bmap_local_to_extents_empty(ptr noundef %1, ptr noundef %3, i32 noundef 0) #8
  %45 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %i_disk_size, align 8
  %call73 = call i32 @xfs_dir2_grow_inode(ptr noundef %args, i32 noundef 0, ptr noundef nonnull %blkno) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end, label %cond.end65.out_free_crit_edge

cond.end65.out_free_crit_edge:                    ; preds = %cond.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end:                                           ; preds = %cond.end65
  %46 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %blkno, align 4
  %call75 = call i32 @xfs_dir3_data_init(ptr noundef %args, i32 noundef %47, ptr noundef nonnull %bp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end.out_free_crit_edge

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end78:                                         ; preds = %if.end
  %48 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bp, align 4
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %49, i32 0, i32 16
  %50 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %b_addr.i, align 4
  %b_ops.i = getelementptr inbounds %struct.xfs_buf, ptr %49, i32 0, i32 35
  %52 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @xfs_dir3_block_buf_ops, ptr %b_ops.i, align 4
  call void @xfs_trans_buf_set_type(ptr noundef %1, ptr noundef %49, i32 noundef 10) #8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 61
  %53 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %54, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %55 = call ptr @memset(ptr %51, i32 0, i32 48)
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1480868403, ptr %51, align 8
  %b_maps.i.i = getelementptr inbounds %struct.xfs_buf, ptr %49, i32 0, i32 24
  %57 = ptrtoint ptr %b_maps.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %b_maps.i.i, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %58, align 8
  %blkno.i = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %51, i32 0, i32 2
  %61 = ptrtoint ptr %blkno.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %blkno.i, align 8
  %i_ino.i = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 4
  %62 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %i_ino.i, align 8
  %owner.i = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %51, i32 0, i32 5
  %64 = ptrtoint ptr %owner.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %owner.i, align 8
  %uuid.i = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %51, i32 0, i32 4
  %sb_meta_uuid.i = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 54
  %65 = call ptr @memcpy(ptr %uuid.i, ptr %sb_meta_uuid.i, i32 16)
  br label %xfs_dir3_block_init.exit

if.end.i:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1480864322, ptr %51, align 8
  br label %xfs_dir3_block_init.exit

xfs_dir3_block_init.exit:                         ; preds = %if.end.i, %if.then.i
  %67 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %68, i32 0, i32 16
  %69 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %b_addr, align 4
  %71 = ptrtoint ptr %call68 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %call68, align 1
  %conv79 = zext i8 %72 to i32
  %add = shl nuw nsw i32 %conv79, 3
  %add80 = add nuw nsw i32 %add, 24
  %add.ptr = getelementptr i8, ptr %70, i32 %14
  %73 = ptrtoint ptr %needscan to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %needscan, align 4
  %74 = ptrtoint ptr %needlog to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %needlog, align 4
  %75 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %args, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %sub83 = sub i32 %78, %add80
  %call84 = call i32 @xfs_dir2_data_use_free(ptr noundef %args, ptr noundef %68, ptr noundef %add.ptr, i32 noundef %sub83, i32 noundef %add80, ptr noundef nonnull %needlog, ptr noundef nonnull %needscan) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %xfs_dir3_block_init.exit.out_free_crit_edge

xfs_dir3_block_init.exit.out_free_crit_edge:      ; preds = %xfs_dir3_block_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end87:                                         ; preds = %xfs_dir3_block_init.exit
  %79 = ptrtoint ptr %needscan to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %needscan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp88 = icmp eq i32 %80, 0
  br i1 %cmp88, label %if.end87.cond.end98_crit_edge, label %cond.false97, !prof !81

if.end87.cond.end98_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end98

cond.false97:                                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, i32 noundef 1150) #8
  br label %cond.end98

cond.end98:                                       ; preds = %cond.false97, %if.end87.cond.end98_crit_edge
  %81 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %args, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %add.ptr.i = getelementptr i8, ptr %70, i32 %84
  %add.ptr1.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i, i32 -1
  %85 = ptrtoint ptr %call68 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %call68, align 1
  %conv102 = zext i8 %86 to i32
  %add103 = add nuw nsw i32 %conv102, 2
  %87 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add103, ptr %add.ptr1.i, align 4
  %stale = getelementptr inbounds %struct.xfs_dir2_block_tail, ptr %add.ptr1.i, i32 0, i32 1
  %88 = ptrtoint ptr %stale to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %stale, align 4
  %idx.neg.i = sub nuw nsw i32 -2, %conv102
  %add.ptr.i396 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i, i32 %idx.neg.i
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i396 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %70 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %89 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bp, align 4
  %length = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr, i32 0, i32 1
  %91 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %length, align 2
  %conv109 = zext i16 %92 to i32
  %call110 = call i32 @xfs_dir2_data_use_free(ptr noundef %args, ptr noundef %90, ptr noundef %add.ptr, i32 noundef %14, i32 noundef %conv109, ptr noundef nonnull %needlog, ptr noundef nonnull %needscan) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %cond.end98.out_free_crit_edge

cond.end98.out_free_crit_edge:                    ; preds = %cond.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end113:                                        ; preds = %cond.end98
  %93 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bp, align 4
  %b_addr114 = getelementptr inbounds %struct.xfs_buf, ptr %94, i32 0, i32 16
  %95 = ptrtoint ptr %b_addr114 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %b_addr114, align 4
  %add.ptr115 = getelementptr i8, ptr %96, i32 %14
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 4
  %97 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %i_ino, align 8
  %99 = ptrtoint ptr %add.ptr115 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %add.ptr115, align 8
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr115, i32 0, i32 1
  %100 = ptrtoint ptr %namelen to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %namelen, align 8
  %name116 = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr115, i32 0, i32 2
  %101 = ptrtoint ptr %name116 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 46, ptr %name116, align 1
  call void @xfs_dir2_data_put_ftype(ptr noundef %5, ptr noundef %add.ptr115, i8 noundef zeroext 2) #8
  %call117 = call ptr @xfs_dir2_data_entry_tag_p(ptr noundef %5, ptr noundef %add.ptr115) #8
  %conv118 = trunc i32 %14 to i16
  %102 = ptrtoint ptr %call117 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv118, ptr %call117, align 2
  %103 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bp, align 4
  call void @xfs_dir2_data_log_entry(ptr noundef %args, ptr noundef %104, ptr noundef %add.ptr115) #8
  %105 = load i32, ptr @xfs_dir_hash_dot, align 4
  %106 = ptrtoint ptr %add.ptr.i396 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %add.ptr.i396, align 4
  %107 = lshr i32 %14, 3
  %address = getelementptr inbounds %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i396, i32 0, i32 1
  %108 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %address, align 4
  %109 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %namelen, align 8
  %conv124 = zext i8 %110 to i32
  %111 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %m_features.i.i, align 8
  %and.i.i398 = and i64 %112, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i398)
  %tobool.i.not.i399 = icmp eq i64 %and.i.i398, 0
  %spec.select.v.i = select i1 %tobool.i.not.i399, i32 11, i32 12
  %spec.select.i = add nsw i32 %conv124, -1
  %sub.i400 = add nsw i32 %spec.select.i, %spec.select.v.i
  %or.i = or i32 %sub.i400, 7
  %add3.i = add i32 %14, 1
  %add126 = add i32 %add3.i, %or.i
  %113 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bp, align 4
  %b_addr127 = getelementptr inbounds %struct.xfs_buf, ptr %114, i32 0, i32 16
  %115 = ptrtoint ptr %b_addr127 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %b_addr127, align 4
  %add.ptr128 = getelementptr i8, ptr %116, i32 %add126
  %call129 = call i64 @xfs_dir2_sf_get_parent_ino(ptr noundef %call68) #8
  %117 = ptrtoint ptr %add.ptr128 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %call129, ptr %add.ptr128, align 8
  %namelen131 = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr128, i32 0, i32 1
  %118 = ptrtoint ptr %namelen131 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 2, ptr %namelen131, align 8
  %name132 = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr128, i32 0, i32 2
  %arrayidx133 = getelementptr [0 x i8], ptr %name132, i32 0, i32 1
  %119 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 46, ptr %arrayidx133, align 1
  %120 = ptrtoint ptr %name132 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 46, ptr %name132, align 1
  call void @xfs_dir2_data_put_ftype(ptr noundef %5, ptr noundef %add.ptr128, i8 noundef zeroext 2) #8
  %call136 = call ptr @xfs_dir2_data_entry_tag_p(ptr noundef %5, ptr noundef %add.ptr128) #8
  %conv137 = trunc i32 %add126 to i16
  %121 = ptrtoint ptr %call136 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv137, ptr %call136, align 2
  %122 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bp, align 4
  call void @xfs_dir2_data_log_entry(ptr noundef %args, ptr noundef %123, ptr noundef %add.ptr128) #8
  %124 = load i32, ptr @xfs_dir_hash_dotdot, align 4
  %arrayidx138 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i396, i32 1
  %125 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %arrayidx138, align 4
  %126 = lshr i32 %add126, 3
  %address143 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i396, i32 1, i32 1
  %127 = ptrtoint ptr %address143 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %address143, align 4
  %128 = ptrtoint ptr %namelen131 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %namelen131, align 8
  %conv145 = zext i8 %129 to i32
  %130 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %m_features.i.i, align 8
  %and.i.i403 = and i64 %131, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i403)
  %tobool.i.not.i404 = icmp eq i64 %and.i.i403, 0
  %spec.select.v.i405 = select i1 %tobool.i.not.i404, i32 11, i32 12
  %spec.select.i406 = add nsw i32 %conv145, -1
  %sub.i407 = add nsw i32 %spec.select.i406, %spec.select.v.i405
  %or.i408 = or i32 %sub.i407, 7
  %add3.i409 = add i32 %add126, 1
  %add147 = add i32 %add3.i409, %or.i408
  %132 = ptrtoint ptr %call68 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %call68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool149.not = icmp eq i8 %133, 0
  br i1 %tobool149.not, label %if.end113.if.end152_crit_edge, label %if.else

if.end113.if.end152_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152

if.else:                                          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  %i8count.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %call68, i32 0, i32 1
  %134 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %cmp.i.i = icmp eq i8 %135, 0
  %sub.i.i = select i1 %cmp.i.i, i32 6, i32 10
  %add.ptr.i410 = getelementptr i8, ptr %call68, i32 %sub.i.i
  br label %if.end152

if.end152:                                        ; preds = %if.else, %if.end113.if.end152_crit_edge
  %sfep.0 = phi ptr [ %add.ptr.i410, %if.else ], [ null, %if.end113.if.end152_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add147, i32 %sub.ptr.sub)
  %cmp153416418 = icmp ult i32 %add147, %sub.ptr.sub
  br i1 %cmp153416418, label %if.end152.while.body.lr.ph_crit_edge, label %if.end152.while.end_crit_edge

if.end152.while.end_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end152.while.body.lr.ph_crit_edge:             ; preds = %if.end152
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end216.while.body.lr.ph_crit_edge, %if.end152.while.body.lr.ph_crit_edge
  %sfep.1.ph421 = phi ptr [ %sfep.2, %if.end216.while.body.lr.ph_crit_edge ], [ %sfep.0, %if.end152.while.body.lr.ph_crit_edge ]
  %offset.0.ph420 = phi i32 [ %sub.ptr.sub208, %if.end216.while.body.lr.ph_crit_edge ], [ %add147, %if.end152.while.body.lr.ph_crit_edge ]
  %i.0.ph419 = phi i32 [ %inc, %if.end216.while.body.lr.ph_crit_edge ], [ 0, %if.end152.while.body.lr.ph_crit_edge ]
  %cmp155 = icmp eq ptr %sfep.1.ph421, null
  %offset.i = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.1.ph421, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.then163.while.body_crit_edge, %while.body.lr.ph
  %offset.0417 = phi i32 [ %offset.0.ph420, %while.body.lr.ph ], [ %add175, %if.then163.while.body_crit_edge ]
  br i1 %cmp155, label %while.body.if.end160_crit_edge, label %if.else158

while.body.if.end160_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end160

if.else158:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %136 = ptrtoint ptr %offset.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 2)
  %137 = load i16, ptr %offset.i, align 1
  %conv.i411 = zext i16 %137 to i32
  br label %if.end160

if.end160:                                        ; preds = %if.else158, %while.body.if.end160_crit_edge
  %newoffset.0 = phi i32 [ %conv.i411, %if.else158 ], [ %sub.ptr.sub, %while.body.if.end160_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %newoffset.0, i32 %offset.0417)
  %cmp161 = icmp ugt i32 %newoffset.0, %offset.0417
  %138 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bp, align 4
  %b_addr164 = getelementptr inbounds %struct.xfs_buf, ptr %139, i32 0, i32 16
  %140 = ptrtoint ptr %b_addr164 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %b_addr164, align 4
  br i1 %cmp161, label %if.then163, label %if.end176

if.then163:                                       ; preds = %if.end160
  %add.ptr165 = getelementptr i8, ptr %141, i32 %offset.0417
  %142 = ptrtoint ptr %add.ptr165 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 -1, ptr %add.ptr165, align 2
  %sub166 = sub i32 %newoffset.0, %offset.0417
  %conv167 = trunc i32 %sub166 to i16
  %length168 = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr165, i32 0, i32 1
  %143 = ptrtoint ptr %length168 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv167, ptr %length168, align 2
  %conv169 = trunc i32 %offset.0417 to i16
  %conv.i412 = and i32 %sub166, 65535
  %add.ptr.i413 = getelementptr i8, ptr %add.ptr165, i32 -2
  %add.ptr1.i414 = getelementptr i8, ptr %add.ptr.i413, i32 %conv.i412
  %144 = ptrtoint ptr %add.ptr1.i414 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv169, ptr %add.ptr1.i414, align 2
  %145 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bp, align 4
  call void @xfs_dir2_data_log_unused(ptr noundef %args, ptr noundef %146, ptr noundef %add.ptr165) #8
  %call171 = call ptr @xfs_dir2_data_bestfree_p(ptr noundef %5, ptr noundef %70) #8
  %call172 = call ptr @xfs_dir2_data_freeinsert(ptr noundef %70, ptr noundef %call171, ptr noundef %add.ptr165, ptr noundef nonnull %dummy) #8
  %147 = ptrtoint ptr %length168 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %length168, align 2
  %conv174 = zext i16 %148 to i32
  %add175 = add i32 %offset.0417, %conv174
  %cmp153 = icmp ult i32 %add175, %sub.ptr.sub
  br i1 %cmp153, label %if.then163.while.body_crit_edge, label %if.then163.while.end_crit_edge

if.then163.while.end_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then163.while.body_crit_edge:                  ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end176:                                        ; preds = %if.end160
  %add.ptr178 = getelementptr i8, ptr %141, i32 %newoffset.0
  %call179 = call i64 @xfs_dir2_sf_get_ino(ptr noundef %5, ptr noundef %call68, ptr noundef %sfep.1.ph421) #8
  %149 = ptrtoint ptr %add.ptr178 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %call179, ptr %add.ptr178, align 8
  %150 = ptrtoint ptr %sfep.1.ph421 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %sfep.1.ph421, align 1
  %namelen182 = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr178, i32 0, i32 1
  %152 = ptrtoint ptr %namelen182 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %namelen182, align 8
  %call183 = call zeroext i8 @xfs_dir2_sf_get_ftype(ptr noundef %5, ptr noundef %sfep.1.ph421) #8
  call void @xfs_dir2_data_put_ftype(ptr noundef %5, ptr noundef %add.ptr178, i8 noundef zeroext %call183) #8
  %name184 = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr178, i32 0, i32 2
  %name185 = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.1.ph421, i32 0, i32 2
  %153 = ptrtoint ptr %namelen182 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %namelen182, align 8
  %conv188 = zext i8 %154 to i32
  %155 = call ptr @memcpy(ptr %name184, ptr %name185, i32 %conv188)
  %call189 = call ptr @xfs_dir2_data_entry_tag_p(ptr noundef %5, ptr noundef %add.ptr178) #8
  %conv190 = trunc i32 %newoffset.0 to i16
  %156 = ptrtoint ptr %call189 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %conv190, ptr %call189, align 2
  %157 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %bp, align 4
  call void @xfs_dir2_data_log_entry(ptr noundef %args, ptr noundef %158, ptr noundef %add.ptr178) #8
  %159 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %name185, ptr %name, align 4
  %160 = ptrtoint ptr %sfep.1.ph421 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %sfep.1.ph421, align 1
  %conv195 = zext i8 %161 to i32
  %162 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %conv195, ptr %16, align 4
  %call196 = call i32 @xfs_dir2_hashname(ptr noundef %5, ptr noundef nonnull %name) #8
  %add197 = add i32 %i.0.ph419, 2
  %arrayidx198 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i396, i32 %add197
  %163 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %call196, ptr %arrayidx198, align 4
  %conv.i415 = ashr i32 %newoffset.0, 3
  %address204 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i396, i32 %add197, i32 1
  %164 = ptrtoint ptr %address204 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %conv.i415, ptr %address204, align 4
  %add.ptr205 = getelementptr i16, ptr %call189, i32 1
  %sub.ptr.lhs.cast206 = ptrtoint ptr %add.ptr205 to i32
  %sub.ptr.sub208 = sub i32 %sub.ptr.lhs.cast206, %sub.ptr.rhs.cast
  %inc = add i32 %i.0.ph419, 1
  %165 = ptrtoint ptr %call68 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %call68, align 1
  %conv210 = zext i8 %166 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv210)
  %cmp211 = icmp eq i32 %inc, %conv210
  br i1 %cmp211, label %if.end176.if.end216_crit_edge, label %if.else214

if.end176.if.end216_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end216

if.else214:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  %call215 = call ptr @xfs_dir2_sf_nextentry(ptr noundef %5, ptr noundef %call68, ptr noundef %sfep.1.ph421) #8
  br label %if.end216

if.end216:                                        ; preds = %if.else214, %if.end176.if.end216_crit_edge
  %sfep.2 = phi ptr [ %call215, %if.else214 ], [ null, %if.end176.if.end216_crit_edge ]
  %cmp153416 = icmp ult i32 %sub.ptr.sub208, %sub.ptr.sub
  br i1 %cmp153416, label %if.end216.while.body.lr.ph_crit_edge, label %if.end216.while.end_crit_edge

if.end216.while.end_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end216.while.body.lr.ph_crit_edge:             ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.lr.ph

while.end:                                        ; preds = %if.end216.while.end_crit_edge, %if.then163.while.end_crit_edge, %if.end152.while.end_crit_edge
  call void @kvfree(ptr noundef %call68) #8
  %167 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %add.ptr1.i, align 4
  call void @sort(ptr noundef %add.ptr.i396, i32 noundef %168, i32 noundef 8, ptr noundef nonnull @xfs_dir2_block_sort, ptr noundef null) #8
  %169 = ptrtoint ptr %needscan to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %needscan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp218 = icmp eq i32 %170, 0
  br i1 %cmp218, label %while.end.cond.end228_crit_edge, label %cond.false227, !prof !81

while.end.cond.end228_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end228

cond.false227:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, i32 noundef 1267) #8
  br label %cond.end228

cond.end228:                                      ; preds = %cond.false227, %while.end.cond.end228_crit_edge
  %171 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bp, align 4
  %173 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %add.ptr1.i, align 4
  %sub230 = add i32 %174, -1
  call fastcc void @xfs_dir2_block_log_leaf(ptr noundef %1, ptr noundef %172, i32 noundef 0, i32 noundef %sub230)
  %175 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %bp, align 4
  call fastcc void @xfs_dir2_block_log_tail(ptr noundef %1, ptr noundef %176)
  %177 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %bp, align 4
  call void @xfs_dir3_data_check(ptr noundef %3, ptr noundef %178) #8
  br label %cleanup

out_free:                                         ; preds = %cond.end98.out_free_crit_edge, %xfs_dir3_block_init.exit.out_free_crit_edge, %if.end.out_free_crit_edge, %cond.end65.out_free_crit_edge
  %error.0 = phi i32 [ %call73, %cond.end65.out_free_crit_edge ], [ %call75, %if.end.out_free_crit_edge ], [ %call84, %xfs_dir3_block_init.exit.out_free_crit_edge ], [ %call110, %cond.end98.out_free_crit_edge ]
  call void @kvfree(ptr noundef %call68) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free, %cond.end228
  %retval.0 = phi i32 [ %error.0, %out_free ], [ 0, %cond.end228 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needscan) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needlog) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blkno) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_sf_to_block(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_to_block, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_sf_to_block, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  %call42 = tail call i32 @__traceiter_xfs_dir2_sf_to_block(ptr noundef null, ptr noundef %args) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !97
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_to_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_to_block, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_sf_to_block.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_sf_to_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 1962, ptr noundef nonnull @.str.17) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #8
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
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_idata_realloc(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_bmap_local_to_extents_empty(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_grow_inode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_data_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_dir2_sf_get_parent_ino(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_data_log_unused(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_dir2_data_freeinsert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_dir2_data_bestfree_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_dir2_sf_get_ino(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @xfs_dir2_sf_get_ftype(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_hashname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_dir2_sf_nextentry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_dir2_block_sort(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp4 = icmp ugt i32 %1, %3
  %cond = zext i1 %cmp4 to i32
  %cond5 = select i1 %cmp, i32 -1, i32 %cond
  ret i32 %cond5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_verifier_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_magic(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_log_check_lsn(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xfs_dir3_data_check(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_block_addname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_block_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_compname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_block_removename(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_block_replace(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_leaf_to_block(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_sf_to_block(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !47, !48, !50, !52, !54, !55, !57, !58, !60, !61, !63}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 42, i32 54}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 43, i32 57}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 109, i32 10}
!6 = !{ptr @xfs_dir3_block_buf_ops, !7, !"xfs_dir3_block_buf_ops", i1 false, i1 false}
!7 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 108, i32 26}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 538, i32 4}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 890, i32 2}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 956, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 987, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 1038, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 1099, i32 2}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 1100, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 1104, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 1105, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 1106, i32 2}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 1107, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 1150, i32 2}
!33 = !{ptr @xfs_dir_hash_dot, !34, !"xfs_dir_hash_dot", i1 false, i1 false}
!34 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 34, i32 21}
!35 = !{ptr @xfs_dir_hash_dotdot, !36, !"xfs_dir_hash_dotdot", i1 false, i1 false}
!36 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 34, i32 39}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../fs/xfs/xfs_trace.h", i32 1963, i32 1}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!41 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../fs/xfs/xfs_trace.h", i32 1964, i32 1}
!47 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 711, i32 3}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/xfs/libxfs/xfs_dir2_block.c", i32 720, i32 4}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../fs/xfs/xfs_trace.h", i32 1966, i32 1}
!54 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../fs/xfs/xfs_trace.h", i32 1965, i32 1}
!57 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../fs/xfs/xfs_trace.h", i32 1973, i32 1}
!60 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../fs/xfs/xfs_trace.h", i32 1962, i32 1}
!63 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2166343483}
!75 = !{i64 2166342819}
!76 = !{i64 2166342910}
!77 = !{i64 2166343056}
!78 = !{i64 2166343200}
!79 = !{i64 2166344016}
!80 = !{!"auto-init"}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 2148278884, i64 2148278889, i64 2148278902, i64 2148278946, i64 2148278980, i64 2148279001}
!83 = !{i64 2160798613}
!84 = !{i64 2160798828}
!85 = !{i64 2149980977}
!86 = !{i64 2149982013}
!87 = !{i64 2160819451}
!88 = !{i64 2160819664}
!89 = !{!"branch_weights", i32 1, i32 2000}
!90 = !{i64 2160853146}
!91 = !{i64 2160853367}
!92 = !{i64 2160836213}
!93 = !{i64 2160836428}
!94 = !{i64 2160978770}
!95 = !{i64 2160978985}
!96 = !{i64 2160781905}
!97 = !{i64 2160782116}
