; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_inode_item_recover.c_pt.bc'
source_filename = "../fs/xfs/xfs_inode_item_recover.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xlog_recover_item_ops = type { i16, ptr, ptr, ptr, ptr }
%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xlog_recover_item = type { %struct.list_head, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.xfs_log_iovec = type { ptr, i32, i32 }
%struct.xfs_inode_log_format = type { i16, i16, i32, i16, i16, i32, i64, %union.anon.92, i64, i32, i32 }
%union.anon.92 = type { i32, [12 x i8] }
%struct.xfs_inode_log_format_32 = type <{ i16, i16, i32, i16, i16, i64, %union.anon.93, i64, i32, i32 }>
%union.anon.93 = type { i32, [12 x i8] }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
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
%struct.xfs_dinode = type { i16, i16, i8, i8, i16, i32, i32, i32, i16, i16, [6 x i8], i16, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, i16, i16, i32, i32, i32, i64, i64, i64, i32, [12 x i8], i64, i64, %struct.uuid_t }
%struct.xfs_log_dinode = type { i16, i16, i8, i8, [2 x i8], i32, i32, i32, i16, i16, [6 x i8], i16, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, i16, i16, i32, i32, i32, i64, i64, i64, i32, [12 x i8], i64, i64, %struct.uuid_t }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.callback_head = type { ptr, ptr }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }

@xlog_inode_item_ops = dso_local constant { %struct.xlog_recover_item_ops, [44 x i8] } { %struct.xlog_recover_item_ops { i16 4667, ptr null, ptr @xlog_recover_inode_ra_pass2, ptr null, ptr @xlog_recover_inode_commit_pass2 }, [44 x i8] zeroinitializer }, align 32
@xfs_inode_buf_ra_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_inode_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"in_f->ilf_fields & XFS_ILOG_CORE\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fs/xfs/xfs_inode_item_recover.c\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"!xfs_verify_magic16(bp, dip->di_magic)\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: Bad inode magic number, dip = %px, dino bp = %px, ino = %Ld\00", [32 x i8] zeroinitializer }, align 32
@__func__.xlog_recover_inode_commit_pass2 = private unnamed_addr constant [32 x i8] c"xlog_recover_inode_commit_pass2\00", align 1
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ldip->di_magic != XFS_DINODE_MAGIC\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Bad inode log record, rec ptr %px, ino %Ld\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xlog_recover_inode_pass2(3)\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%s: Bad regular inode log record, rec ptr %px, ino ptr = %px, ino bp = %px, ino %Ld\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xlog_recover_inode_pass2(4)\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%s: Bad dir inode log record, rec ptr %px, ino ptr = %px, ino bp = %px, ino %Ld\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xlog_recover_inode_pass2(5)\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"%s: Bad inode log record, rec ptr %px, dino ptr %px, dino bp %px, ino %Ld, total extents = %d, nblocks = %Ld\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xlog_recover_inode_pass2(6)\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"%s: Bad inode log record, rec ptr %px, dino ptr %px, dino bp %px, ino %Ld, forkoff 0x%x\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xlog_recover_inode_pass2(7)\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Bad inode log record length %d, rec ptr %px\00", [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"in_f->ilf_size <= 4\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(in_f->ilf_size == 3) || (fields & XFS_ILOG_AFORK)\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"!(fields & XFS_ILOG_DFORK) || (len == in_f->ilf_dsize)\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(fields & XFS_ILOG_DFORK) == 0\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"len == in_f->ilf_asize\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"len <= XFS_DFORK_ASIZE(dip, mp)\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: Invalid flag\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bp->b_mount == mp\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_log_recover_inode_cancel = external dso_local global %struct.tracepoint, align 4
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_log_recover_inode_cancel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_log_recover_inode_recover = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_recover_inode_recover.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_log_recover_inode_skip = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_recover_inode_skip.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"in_f->ilf_fields & (XFS_ILOG_DOWNER|XFS_ILOG_AOWNER)\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dip->di_version >= 3\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"in_f->ilf_fields & XFS_ILOG_DBROOT\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"in_f->ilf_fields & XFS_ILOG_ABROOT\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 64, i64 128, i64 256]
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"xlog_inode_item_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 485, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 241, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 248, i32 6 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 250, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 256, i32 6 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 258, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 320, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 324, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 334, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 338, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 346, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 350, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 359, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 363, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 371, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 375, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 401, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 402, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 403, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 422, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 439, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 445, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 457, i32 24 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 458, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 473, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2380, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 108, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 84, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 91, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 98, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [35 x i8] c"../fs/xfs/xfs_inode_item_recover.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 106, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @xlog_inode_item_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_inode_item_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlog_recover_inode_ra_pass2(ptr noundef %log, ptr nocapture noundef readonly %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ri_buf = getelementptr inbounds %struct.xlog_recover_item, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ri_buf, align 4
  %i_len = getelementptr inbounds %struct.xfs_log_iovec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %3)
  %cmp = icmp eq i32 %3, 56
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ilf_blkno = getelementptr inbounds %struct.xfs_inode_log_format, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %ilf_blkno to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ilf_blkno, align 8
  %ilf_len = getelementptr inbounds %struct.xfs_inode_log_format, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %ilf_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ilf_len, align 8
  tail call void @xlog_buf_readahead(ptr noundef %log, i64 noundef %7, i32 noundef %9, ptr noundef nonnull @xfs_inode_buf_ra_ops) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ilf_blkno7 = getelementptr inbounds %struct.xfs_inode_log_format_32, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %ilf_blkno7 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %ilf_blkno7, align 1
  %ilf_len8 = getelementptr inbounds %struct.xfs_inode_log_format_32, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %ilf_len8 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %ilf_len8, align 1
  tail call void @xlog_buf_readahead(ptr noundef %log, i64 noundef %11, i32 noundef %13, ptr noundef nonnull @xfs_inode_buf_ra_ops) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlog_recover_inode_commit_pass2(ptr noundef %log, ptr noundef %buffer_list, ptr noundef %item, i64 noundef %current_lsn) #0 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #7
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !85
  %ri_buf = getelementptr inbounds %struct.xlog_recover_item, ptr %item, i32 0, i32 3
  %3 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ri_buf, align 4
  %i_len = getelementptr inbounds %struct.xfs_log_iovec, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %i_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %6)
  %cmp = icmp eq i32 %6, 56
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  br label %if.end7

if.else:                                          ; preds = %entry
  %call = tail call ptr @kmem_alloc(i32 noundef 56, i32 noundef 0) #7
  %9 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ri_buf, align 4
  %call5 = tail call i32 @xfs_inode_item_format_convert(ptr noundef %10, ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.else.if.end7_crit_edge, label %if.else.if.then415_crit_edge

if.else.if.then415_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then415

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %if.then
  %in_f.0 = phi ptr [ %8, %if.then ], [ %call, %if.else.if.end7_crit_edge ]
  %ilf_blkno = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f.0, i32 0, i32 8
  %11 = ptrtoint ptr %ilf_blkno to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ilf_blkno, align 8
  %ilf_len = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f.0, i32 0, i32 9
  %13 = ptrtoint ptr %ilf_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ilf_len, align 8
  %call8 = tail call zeroext i1 @xlog_is_buffer_cancelled(ptr noundef %log, i64 noundef %12, i32 noundef %14) #7
  br i1 %call8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @trace_xfs_log_recover_inode_cancel(ptr noundef %log, ptr noundef %in_f.0)
  br label %error413

if.end10:                                         ; preds = %if.end7
  tail call fastcc void @trace_xfs_log_recover_inode_recover(ptr noundef %log, ptr noundef %in_f.0)
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_ddev_targp, align 8
  %17 = ptrtoint ptr %ilf_blkno to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ilf_blkno, align 8
  %19 = ptrtoint ptr %ilf_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ilf_len, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #7
  %21 = getelementptr inbounds i8, ptr %map.i, i32 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %21, align 8
  %23 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %18, ptr %map.i, align 8
  store i32 %20, ptr %21, align 8
  %24 = tail call ptr @llvm.returnaddress(i32 0) #7
  %call.i = call i32 @xfs_buf_read_map(ptr noundef %16, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp, ptr noundef nonnull @xfs_inode_buf_ops, ptr noundef %24) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.error413_crit_edge

if.end10.error413_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %error413

if.end16:                                         ; preds = %if.end10
  %ilf_fields = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f.0, i32 0, i32 2
  %25 = ptrtoint ptr %ilf_fields to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ilf_fields, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %cond.false, label %if.end16.cond.end_crit_edge, !prof !86

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 241) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end16.cond.end_crit_edge
  %27 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bp, align 4
  %ilf_boffset = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f.0, i32 0, i32 10
  %29 = ptrtoint ptr %ilf_boffset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ilf_boffset, align 4
  %call20 = call ptr @xfs_buf_offset(ptr noundef %28, i32 noundef %30) #7
  %31 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bp, align 4
  %33 = ptrtoint ptr %call20 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %call20, align 8
  %call21 = call zeroext i1 @xfs_verify_magic16(ptr noundef %32, i16 noundef zeroext %34) #7
  br i1 %call21, label %if.end33, label %__here, !prof !87

__here:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !88
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 248, ptr noundef blockaddress(@xlog_recover_inode_commit_pass2, %__here)) #7
  %35 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bp, align 4
  %ilf_ino = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f.0, i32 0, i32 6
  %37 = ptrtoint ptr %ilf_ino to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ilf_ino, align 8
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.xlog_recover_inode_commit_pass2, ptr noundef %call20, ptr noundef %36, i64 noundef %38) #7
  br label %out_release

if.end33:                                         ; preds = %cond.end
  %39 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ri_buf, align 4
  %arrayidx35 = getelementptr %struct.xfs_log_iovec, ptr %40, i32 1
  %41 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx35, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %42, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 18766, i16 %44)
  %cmp38.not = icmp eq i16 %44, 18766
  br i1 %cmp38.not, label %if.end52, label %__here47, !prof !87

__here47:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !89
  call void @xfs_corruption_error(ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 256, ptr noundef blockaddress(@xlog_recover_inode_commit_pass2, %__here47)) #7
  %ilf_ino51 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f.0, i32 0, i32 6
  %45 = ptrtoint ptr %ilf_ino51 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ilf_ino51, align 8
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.xlog_recover_inode_commit_pass2, ptr noundef %item, i64 noundef %46) #7
  br label %out_release

if.end52:                                         ; preds = %if.end33
  %di_version = getelementptr inbounds %struct.xfs_dinode, ptr %call20, i32 0, i32 2
  %47 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %cmp54 = icmp ugt i8 %48, 2
  br i1 %cmp54, label %if.then56, label %if.end52.if.end66_crit_edge

if.end52.if.end66_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then56:                                        ; preds = %if.end52
  %di_lsn = getelementptr inbounds %struct.xfs_dinode, ptr %call20, i32 0, i32 29
  %49 = ptrtoint ptr %di_lsn to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %di_lsn, align 8
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i64 %50, label %land.lhs.true60 [
    i64 0, label %if.then56.if.end66_crit_edge
    i64 -1, label %if.then56.if.end66_crit_edge618
  ]

if.then56.if.end66_crit_edge618:                  ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then56.if.end66_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

land.lhs.true60:                                  ; preds = %if.then56
  %51 = lshr i64 %50, 32
  %conv.i = trunc i64 %51 to i32
  %52 = lshr i64 %current_lsn, 32
  %conv2.i = trunc i64 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv2.i)
  %cmp.not.i = icmp eq i32 %conv.i, %conv2.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv2.i)
  %cmp8.i = icmp ult i32 %conv.i, %conv2.i
  br i1 %cmp8.i, label %if.then.i.if.end66_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.if.end66_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.end.i:                                         ; preds = %land.lhs.true60
  %conv11.i = trunc i64 %50 to i32
  %conv12.i = trunc i64 %current_lsn to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %conv12.i)
  %.not = icmp ugt i32 %conv11.i, %conv12.i
  br i1 %.not, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end66_crit_edge

if.end.i.if.end66_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  call fastcc void @trace_xfs_log_recover_inode_skip(ptr noundef %log, ptr noundef %in_f.0)
  br label %out_owner_change

if.end66:                                         ; preds = %if.end.i.if.end66_crit_edge, %if.then.i.if.end66_crit_edge, %if.then56.if.end66_crit_edge, %if.then56.if.end66_crit_edge618, %if.end52.if.end66_crit_edge
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %53 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %54, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true68, label %if.end66.if.end87_crit_edge

if.end66.if.end87_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

land.lhs.true68:                                  ; preds = %if.end66
  %di_flushiter = getelementptr inbounds %struct.xfs_log_dinode, ptr %42, i32 0, i32 11
  %55 = ptrtoint ptr %di_flushiter to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %di_flushiter, align 2
  %di_flushiter70 = getelementptr inbounds %struct.xfs_dinode, ptr %call20, i32 0, i32 11
  %57 = ptrtoint ptr %di_flushiter70 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %di_flushiter70, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %58)
  %cmp72 = icmp ult i16 %56, %58
  br i1 %cmp72, label %if.then74, label %land.lhs.true68.if.end87_crit_edge

land.lhs.true68.if.end87_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then74:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %58)
  %cmp77 = icmp eq i16 %58, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 32767, i16 %56)
  %cmp82 = icmp ult i16 %56, 32767
  %or.cond = select i1 %cmp77, i1 %cmp82, i1 false
  br i1 %or.cond, label %if.then74.if.end87_crit_edge, label %if.else85

if.then74.if.end87_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.else85:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @trace_xfs_log_recover_inode_skip(ptr noundef %log, ptr noundef %in_f.0)
  br label %out_release

if.end87:                                         ; preds = %if.then74.if.end87_crit_edge, %land.lhs.true68.if.end87_crit_edge, %if.end66.if.end87_crit_edge
  %di_flushiter88 = getelementptr inbounds %struct.xfs_log_dinode, ptr %42, i32 0, i32 11
  %59 = ptrtoint ptr %di_flushiter88 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %di_flushiter88, align 2
  %di_mode = getelementptr inbounds %struct.xfs_log_dinode, ptr %42, i32 0, i32 1
  %60 = ptrtoint ptr %di_mode to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %di_mode, align 2
  %62 = and i16 %61, -4096
  %63 = zext i16 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %62, label %if.end87.if.end142_crit_edge [
    i16 -32768, label %if.then99
    i16 16384, label %if.then123
  ], !prof !90

if.end87.if.end142_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

if.then99:                                        ; preds = %if.end87
  %di_format = getelementptr inbounds %struct.xfs_log_dinode, ptr %42, i32 0, i32 3
  %64 = ptrtoint ptr %di_format to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %di_format, align 1
  %66 = and i8 %65, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %switch = icmp eq i8 %66, 2
  br i1 %switch, label %if.then99.if.end142_crit_edge, label %if.then108

if.then99.if.end142_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

if.then108:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  call void @xfs_corruption_error(ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef %1, ptr noundef %42, i32 noundef 176, ptr noundef nonnull @.str.1, i32 noundef 322, ptr noundef %24) #7
  %67 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bp, align 4
  %ilf_ino109 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f.0, i32 0, i32 6
  %69 = ptrtoint ptr %ilf_ino109 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %ilf_ino109, align 8
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.xlog_recover_inode_commit_pass2, ptr noundef %item, ptr noundef %call20, ptr noundef %68, i64 noundef %70) #7
  br label %out_release

if.then123:                                       ; preds = %if.end87
  %di_format124 = getelementptr inbounds %struct.xfs_log_dinode, ptr %42, i32 0, i32 3
  %71 = ptrtoint ptr %di_format124 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %di_format124, align 1
  %.off583 = add i8 %72, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off583)
  %switch584 = icmp ult i8 %.off583, 3
  br i1 %switch584, label %if.then123.if.end142_crit_edge, label %if.then138

if.then123.if.end142_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

if.then138:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #9
  call void @xfs_corruption_error(ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef %1, ptr noundef %42, i32 noundef 176, ptr noundef nonnull @.str.1, i32 noundef 336, ptr noundef %24) #7
  %73 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bp, align 4
  %ilf_ino139 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f.0, i32 0, i32 6
  %75 = ptrtoint ptr %ilf_ino139 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ilf_ino139, align 8
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.xlog_recover_inode_commit_pass2, ptr noundef %item, ptr noundef %call20, ptr noundef %74, i64 noundef %76) #7
  br label %out_release

if.end142:                                        ; preds = %if.then123.if.end142_crit_edge, %if.then99.if.end142_crit_edge, %if.end87.if.end142_crit_edge
  %di_nextents = getelementptr inbounds %struct.xfs_log_dinode, ptr %42, i32 0, i32 18
  %77 = ptrtoint ptr %di_nextents to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %di_nextents, align 4
  %di_anextents = getelementptr inbounds %struct.xfs_log_dinode, ptr %42, i32 0, i32 19
  %79 = ptrtoint ptr %di_anextents to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %di_anextents, align 8
  %conv143 = sext i16 %80 to i32
  %add = add i32 %78, %conv143
  %conv144 = sext i32 %add to i64
  %di_nblocks = getelementptr inbounds %struct.xfs_log_dinode, ptr %42, i32 0, i32 16
  %81 = ptrtoint ptr %di_nblocks to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %di_nblocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %82, i64 %conv144)
  %cmp145 = icmp ult i64 %82, %conv144
  br i1 %cmp145, label %if.then153, label %if.end160, !prof !86

if.then153:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  call void @xfs_corruption_error(ptr noundef nonnull @.str.10, i32 noundef 1, ptr noundef %1, ptr noundef %42, i32 noundef 176, ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef %24) #7
  %83 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bp, align 4
  %ilf_ino154 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f.0, i32 0, i32 6
  %85 = ptrtoint ptr %ilf_ino154 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %ilf_ino154, align 8
  %87 = ptrtoint ptr %di_nextents to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %di_nextents, align 4
  %89 = ptrtoint ptr %di_anextents to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %di_anextents, align 8
  %conv157 = sext i16 %90 to i32
  %add158 = add i32 %88, %conv157
  %91 = ptrtoint ptr %di_nblocks to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %di_nblocks, align 8
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.xlog_recover_inode_commit_pass2, ptr noundef %item, ptr noundef %call20, ptr noundef %84, i64 noundef %86, i32 noundef %add158, i64 noundef %92) #7
  br label %out_release

if.end160:                                        ; preds = %if.end142
  %di_forkoff = getelementptr inbounds %struct.xfs_log_dinode, ptr %42, i32 0, i32 20
  %93 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %di_forkoff, align 2
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 17
  %95 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %sb_inodesize, align 8
  %97 = zext i8 %94 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %96, i16 %97)
  %cmp163 = icmp ult i16 %96, %97
  br i1 %cmp163, label %if.then171, label %if.end175, !prof !86

if.then171:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  call void @xfs_corruption_error(ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef %1, ptr noundef %42, i32 noundef 176, ptr noundef nonnull @.str.1, i32 noundef 361, ptr noundef %24) #7
  %98 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bp, align 4
  %ilf_ino172 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f.0, i32 0, i32 6
  %100 = ptrtoint ptr %ilf_ino172 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %ilf_ino172, align 8
  %102 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %di_forkoff, align 2
  %conv174 = zext i8 %103 to i32
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.xlog_recover_inode_commit_pass2, ptr noundef %item, ptr noundef %call20, ptr noundef %99, i64 noundef %101, i32 noundef %conv174) #7
  br label %out_release

if.end175:                                        ; preds = %if.end160
  %104 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %m_features.i, align 8
  %and.i587 = and i64 %105, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i587)
  %tobool.i588.not = icmp eq i64 %and.i587, 0
  %cond = select i1 %tobool.i588.not, i32 96, i32 176
  %106 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ri_buf, align 4
  %i_len180 = getelementptr %struct.xfs_log_iovec, ptr %107, i32 1, i32 1
  %108 = ptrtoint ptr %i_len180 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %i_len180, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %cond)
  %cmp181 = icmp ugt i32 %109, %cond
  br i1 %cmp181, label %if.then189, label %if.end193, !prof !86

if.then189:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #9
  call void @xfs_corruption_error(ptr noundef nonnull @.str.14, i32 noundef 1, ptr noundef %1, ptr noundef %42, i32 noundef 176, ptr noundef nonnull @.str.1, i32 noundef 373, ptr noundef %24) #7
  %110 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ri_buf, align 4
  %i_len192 = getelementptr %struct.xfs_log_iovec, ptr %111, i32 1, i32 1
  %112 = ptrtoint ptr %i_len192 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %i_len192, align 4
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.xlog_recover_inode_commit_pass2, i32 noundef %113, ptr noundef %item) #7
  br label %out_release

if.end193:                                        ; preds = %if.end175
  call fastcc void @xfs_log_dinode_to_disk(ptr noundef %42, ptr noundef %call20, i64 noundef %current_lsn)
  %114 = ptrtoint ptr %ilf_fields to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ilf_fields, align 4
  %and195 = and i32 %115, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %if.end193.if.end198_crit_edge, label %if.then197

if.end193.if.end198_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end198

if.then197:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  %ilf_u = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f.0, i32 0, i32 7
  %116 = ptrtoint ptr %ilf_u to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ilf_u, align 8
  %118 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %119)
  %cmp.i.i = icmp eq i8 %119, 3
  %..i.i = select i1 %cmp.i.i, i32 176, i32 100
  %add.ptr.i = getelementptr i8, ptr %call20, i32 %..i.i
  %120 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %117, ptr %add.ptr.i, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.then197, %if.end193.if.end198_crit_edge
  %ilf_size = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f.0, i32 0, i32 1
  %121 = ptrtoint ptr %ilf_size to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %ilf_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %122)
  %cmp200 = icmp eq i16 %122, 2
  br i1 %cmp200, label %if.end198.out_owner_change_crit_edge, label %if.end203

if.end198.out_owner_change_crit_edge:             ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_owner_change

if.end203:                                        ; preds = %if.end198
  %123 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ri_buf, align 4
  %arrayidx205 = getelementptr %struct.xfs_log_iovec, ptr %124, i32 2
  %i_len206 = getelementptr %struct.xfs_log_iovec, ptr %124, i32 2, i32 1
  %125 = ptrtoint ptr %i_len206 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %i_len206, align 4
  %127 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx205, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %122)
  %cmp212 = icmp ult i16 %122, 5
  br i1 %cmp212, label %if.end203.cond.end222_crit_edge, label %cond.false221, !prof !87

if.end203.cond.end222_crit_edge:                  ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end222

cond.false221:                                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 401) #7
  br label %cond.end222

cond.end222:                                      ; preds = %cond.false221, %if.end203.cond.end222_crit_edge
  %129 = ptrtoint ptr %ilf_size to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %ilf_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %130)
  %cmp225 = icmp eq i16 %130, 3
  %and227 = and i32 %115, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and227)
  %tobool228 = icmp ne i32 %and227, 0
  %131 = select i1 %cmp225, i1 true, i1 %tobool228
  br i1 %131, label %cond.end222.cond.end237_crit_edge, label %cond.false236, !prof !87

cond.end222.cond.end237_crit_edge:                ; preds = %cond.end222
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end237

cond.false236:                                    ; preds = %cond.end222
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 402) #7
  br label %cond.end237

cond.end237:                                      ; preds = %cond.false236, %cond.end222.cond.end237_crit_edge
  %and238 = and i32 %115, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and238)
  %cond585 = icmp eq i32 %and238, 0
  br i1 %cond585, label %cond.end237.sw.epilog_crit_edge, label %lor.rhs240, !prof !91

cond.end237.sw.epilog_crit_edge:                  ; preds = %cond.end237
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

lor.rhs240:                                       ; preds = %cond.end237
  %ilf_dsize = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f.0, i32 0, i32 4
  %132 = ptrtoint ptr %ilf_dsize to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %ilf_dsize, align 2
  %conv241 = zext i16 %133 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %conv241)
  %cmp242 = icmp eq i32 %126, %conv241
  br i1 %cmp242, label %lor.rhs240.cond.end253_crit_edge, label %cond.false252, !prof !87

lor.rhs240.cond.end253_crit_edge:                 ; preds = %lor.rhs240
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end253

cond.false252:                                    ; preds = %lor.rhs240
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 404) #7
  br label %cond.end253

cond.end253:                                      ; preds = %cond.false252, %lor.rhs240.cond.end253_crit_edge
  %134 = zext i32 %and238 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %and238, label %cond.false288 [
    i32 2, label %cond.end253.sw.bb_crit_edge
    i32 4, label %cond.end253.sw.bb_crit_edge619
    i32 8, label %sw.bb258
  ], !prof !92

cond.end253.sw.bb_crit_edge619:                   ; preds = %cond.end253
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

cond.end253.sw.bb_crit_edge:                      ; preds = %cond.end253
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %cond.end253.sw.bb_crit_edge, %cond.end253.sw.bb_crit_edge619
  %135 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %136)
  %cmp.i = icmp eq i8 %136, 3
  %..i = select i1 %cmp.i, i32 176, i32 100
  %add.ptr = getelementptr i8, ptr %call20, i32 %..i
  %137 = call ptr @memcpy(ptr %add.ptr, ptr %128, i32 %126)
  br label %sw.epilog

sw.bb258:                                         ; preds = %cond.end253
  %138 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %139)
  %cmp.i589 = icmp eq i8 %139, 3
  %..i590 = select i1 %cmp.i589, i32 176, i32 100
  %add.ptr262 = getelementptr i8, ptr %call20, i32 %..i590
  %di_forkoff263 = getelementptr inbounds %struct.xfs_dinode, ptr %call20, i32 0, i32 20
  %140 = ptrtoint ptr %di_forkoff263 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %di_forkoff263, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool265.not = icmp eq i8 %141, 0
  br i1 %tobool265.not, label %cond.false269, label %cond.true266

cond.true266:                                     ; preds = %sw.bb258
  call void @__sanitizer_cov_trace_pc() #9
  %conv264 = zext i8 %141 to i32
  %shl = shl nuw nsw i32 %conv264, 3
  br label %cond.end276

cond.false269:                                    ; preds = %sw.bb258
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %sb_inodesize, align 8
  %conv272 = zext i16 %143 to i32
  %144 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %m_features.i, align 8
  %and.i592 = and i64 %145, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i592)
  %tobool.i593.not = icmp eq i64 %and.i592, 0
  %cond275.neg = select i1 %tobool.i593.not, i32 -100, i32 -176
  %sub = add nsw i32 %cond275.neg, %conv272
  br label %cond.end276

cond.end276:                                      ; preds = %cond.false269, %cond.true266
  %cond277 = phi i32 [ %shl, %cond.true266 ], [ %sub, %cond.false269 ]
  call void @xfs_bmbt_to_bmdr(ptr noundef %1, ptr noundef %128, i32 noundef %126, ptr noundef %add.ptr262, i32 noundef %cond277) #7
  br label %sw.epilog

cond.false288:                                    ; preds = %cond.end253
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 422) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.false288, %cond.end276, %sw.bb, %cond.end237.sw.epilog_crit_edge
  %146 = ptrtoint ptr %ilf_fields to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ilf_fields, align 4
  %and291 = and i32 %147, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291)
  %tobool292.not = icmp eq i32 %and291, 0
  br i1 %tobool292.not, label %sw.epilog.out_owner_change_crit_edge, label %if.then293

sw.epilog.out_owner_change_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_owner_change

if.then293:                                       ; preds = %sw.epilog
  %and295 = and i32 %147, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and295)
  %tobool296.not = icmp eq i32 %and295, 0
  %. = select i1 %tobool296.not, i32 2, i32 3
  %148 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ri_buf, align 4
  %arrayidx301 = getelementptr %struct.xfs_log_iovec, ptr %149, i32 %.
  %i_len302 = getelementptr %struct.xfs_log_iovec, ptr %149, i32 %., i32 1
  %150 = ptrtoint ptr %i_len302 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %i_len302, align 4
  %152 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx301, align 4
  %ilf_asize = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f.0, i32 0, i32 3
  %154 = ptrtoint ptr %ilf_asize to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %ilf_asize, align 8
  %conv306 = zext i16 %155 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %conv306)
  %cmp307 = icmp eq i32 %151, %conv306
  br i1 %cmp307, label %if.then293.cond.end317_crit_edge, label %cond.false316, !prof !87

if.then293.cond.end317_crit_edge:                 ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end317

cond.false316:                                    ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 439) #7
  br label %cond.end317

cond.end317:                                      ; preds = %cond.false316, %if.then293.cond.end317_crit_edge
  %156 = ptrtoint ptr %ilf_fields to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %ilf_fields, align 4
  %and319 = and i32 %157, 448
  %158 = zext i32 %and319 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %and319, label %sw.default385 [
    i32 64, label %cond.end317.sw.bb320_crit_edge
    i32 128, label %cond.end317.sw.bb320_crit_edge620
    i32 256, label %sw.bb358
  ]

cond.end317.sw.bb320_crit_edge620:                ; preds = %cond.end317
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb320

cond.end317.sw.bb320_crit_edge:                   ; preds = %cond.end317
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb320

sw.bb320:                                         ; preds = %cond.end317.sw.bb320_crit_edge, %cond.end317.sw.bb320_crit_edge620
  %159 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %160)
  %cmp.i594 = icmp eq i8 %160, 3
  %..i595 = select i1 %cmp.i594, i32 176, i32 100
  %add.ptr324 = getelementptr i8, ptr %call20, i32 %..i595
  %di_forkoff325 = getelementptr inbounds %struct.xfs_dinode, ptr %call20, i32 0, i32 20
  %161 = ptrtoint ptr %di_forkoff325 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %di_forkoff325, align 2
  %conv326 = zext i8 %162 to i32
  %shl327 = shl nuw nsw i32 %conv326, 3
  %add.ptr328 = getelementptr i8, ptr %add.ptr324, i32 %shl327
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool331.not = icmp eq i8 %162, 0
  br i1 %tobool331.not, label %sw.bb320.cond.end345_crit_edge, label %cond.true332

sw.bb320.cond.end345_crit_edge:                   ; preds = %sw.bb320
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end345

cond.true332:                                     ; preds = %sw.bb320
  call void @__sanitizer_cov_trace_pc() #9
  %163 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %sb_inodesize, align 8
  %conv335 = zext i16 %164 to i32
  %165 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %m_features.i, align 8
  %and.i597 = and i64 %166, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i597)
  %tobool.i598.not = icmp eq i64 %and.i597, 0
  %cond338.neg = select i1 %tobool.i598.not, i32 -100, i32 -176
  %shl342.neg = mul nsw i32 %conv326, -8
  %sub339 = add nsw i32 %shl342.neg, %conv335
  %sub343 = add nsw i32 %sub339, %cond338.neg
  br label %cond.end345

cond.end345:                                      ; preds = %cond.true332, %sw.bb320.cond.end345_crit_edge
  %cond346 = phi i32 [ %sub343, %cond.true332 ], [ 0, %sw.bb320.cond.end345_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %cond346)
  %cmp347.not = icmp ugt i32 %151, %cond346
  br i1 %cmp347.not, label %cond.false356, label %cond.end345.cond.end357_crit_edge, !prof !86

cond.end345.cond.end357_crit_edge:                ; preds = %cond.end345
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end357

cond.false356:                                    ; preds = %cond.end345
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 445) #7
  br label %cond.end357

cond.end357:                                      ; preds = %cond.false356, %cond.end345.cond.end357_crit_edge
  %167 = call ptr @memcpy(ptr %add.ptr328, ptr %153, i32 %151)
  br label %out_owner_change

sw.bb358:                                         ; preds = %cond.end317
  %168 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %169)
  %cmp.i599 = icmp eq i8 %169, 3
  %..i600 = select i1 %cmp.i599, i32 176, i32 100
  %add.ptr362 = getelementptr i8, ptr %call20, i32 %..i600
  %di_forkoff363 = getelementptr inbounds %struct.xfs_dinode, ptr %call20, i32 0, i32 20
  %170 = ptrtoint ptr %di_forkoff363 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %di_forkoff363, align 2
  %conv364 = zext i8 %171 to i32
  %shl365 = shl nuw nsw i32 %conv364, 3
  %add.ptr366 = getelementptr i8, ptr %add.ptr362, i32 %shl365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool369.not = icmp eq i8 %171, 0
  br i1 %tobool369.not, label %sw.bb358.cond.end383_crit_edge, label %cond.true370

sw.bb358.cond.end383_crit_edge:                   ; preds = %sw.bb358
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end383

cond.true370:                                     ; preds = %sw.bb358
  call void @__sanitizer_cov_trace_pc() #9
  %172 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %sb_inodesize, align 8
  %conv373 = zext i16 %173 to i32
  %174 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %m_features.i, align 8
  %and.i602 = and i64 %175, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i602)
  %tobool.i603.not = icmp eq i64 %and.i602, 0
  %cond376.neg = select i1 %tobool.i603.not, i32 -100, i32 -176
  %shl380.neg = mul nsw i32 %conv364, -8
  %sub377 = add nsw i32 %shl380.neg, %conv373
  %sub381 = add nsw i32 %sub377, %cond376.neg
  br label %cond.end383

cond.end383:                                      ; preds = %cond.true370, %sw.bb358.cond.end383_crit_edge
  %cond384 = phi i32 [ %sub381, %cond.true370 ], [ 0, %sw.bb358.cond.end383_crit_edge ]
  call void @xfs_bmbt_to_bmdr(ptr noundef %1, ptr noundef %153, i32 noundef %151, ptr noundef %add.ptr366, i32 noundef %cond384) #7
  br label %out_owner_change

sw.default385:                                    ; preds = %cond.end317
  call void @__sanitizer_cov_trace_pc() #9
  %176 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %log, align 128
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %177, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.xlog_recover_inode_commit_pass2) #7
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 458) #7
  br label %out_release

out_owner_change:                                 ; preds = %cond.end383, %cond.end357, %sw.epilog.out_owner_change_crit_edge, %if.end198.out_owner_change_crit_edge, %cleanup
  %178 = ptrtoint ptr %ilf_fields to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %ilf_fields, align 4
  %and390 = and i32 %179, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and390)
  %tobool391.not = icmp eq i32 %and390, 0
  br i1 %tobool391.not, label %out_owner_change.if.end399_crit_edge, label %land.lhs.true392

out_owner_change.if.end399_crit_edge:             ; preds = %out_owner_change
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end399

land.lhs.true392:                                 ; preds = %out_owner_change
  %di_mode393 = getelementptr inbounds %struct.xfs_dinode, ptr %call20, i32 0, i32 1
  %180 = ptrtoint ptr %di_mode393 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %di_mode393, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %181)
  %cmp395.not = icmp eq i16 %181, 0
  br i1 %cmp395.not, label %land.lhs.true392.if.end399_crit_edge, label %if.then397

land.lhs.true392.if.end399_crit_edge:             ; preds = %land.lhs.true392
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end399

if.then397:                                       ; preds = %land.lhs.true392
  call void @__sanitizer_cov_trace_pc() #9
  %call398 = call fastcc i32 @xfs_recover_inode_owner_change(ptr noundef %1, ptr noundef %call20, ptr noundef %in_f.0, ptr noundef %buffer_list)
  br label %if.end399

if.end399:                                        ; preds = %if.then397, %land.lhs.true392.if.end399_crit_edge, %out_owner_change.if.end399_crit_edge
  %error.3 = phi i32 [ %call398, %if.then397 ], [ 0, %land.lhs.true392.if.end399_crit_edge ], [ 0, %out_owner_change.if.end399_crit_edge ]
  %182 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %log, align 128
  call void @xfs_dinode_calc_crc(ptr noundef %183, ptr noundef %call20) #7
  %184 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %bp, align 4
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %185, i32 0, i32 14
  %186 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %b_mount, align 4
  %cmp401 = icmp eq ptr %187, %1
  br i1 %cmp401, label %if.end399.cond.end411_crit_edge, label %cond.false410, !prof !87

if.end399.cond.end411_crit_edge:                  ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end411

cond.false410:                                    ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 473) #7
  br label %cond.end411

cond.end411:                                      ; preds = %cond.false410, %if.end399.cond.end411_crit_edge
  %188 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %bp, align 4
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %189, i32 0, i32 5
  %190 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %b_flags, align 4
  %or = or i32 %191, 262144
  store i32 %or, ptr %b_flags, align 4
  %call412 = call zeroext i1 @xfs_buf_delwri_queue(ptr noundef %189, ptr noundef %buffer_list) #7
  br label %out_release

out_release:                                      ; preds = %cond.end411, %sw.default385, %if.then189, %if.then171, %if.then153, %if.then138, %if.then108, %if.else85, %__here47, %__here
  %error.4 = phi i32 [ -117, %__here ], [ -117, %__here47 ], [ %error.3, %cond.end411 ], [ -117, %if.then108 ], [ -117, %if.then153 ], [ -117, %if.then171 ], [ -117, %if.then189 ], [ -117, %sw.default385 ], [ -117, %if.then138 ], [ 0, %if.else85 ]
  %192 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %193) #7
  call void @xfs_buf_rele(ptr noundef %193) #7
  br label %error413

error413:                                         ; preds = %out_release, %if.end10.error413_crit_edge, %if.then9
  %error.5 = phi i32 [ 0, %if.then9 ], [ %call.i, %if.end10.error413_crit_edge ], [ %error.4, %out_release ]
  br i1 %cmp, label %error413.cleanup417_crit_edge, label %error413.if.then415_crit_edge

error413.if.then415_crit_edge:                    ; preds = %error413
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then415

error413.cleanup417_crit_edge:                    ; preds = %error413
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup417

if.then415:                                       ; preds = %error413.if.then415_crit_edge, %if.else.if.then415_crit_edge
  %in_f.1613 = phi ptr [ %in_f.0, %error413.if.then415_crit_edge ], [ %call, %if.else.if.then415_crit_edge ]
  %error.5611 = phi i32 [ %error.5, %error413.if.then415_crit_edge ], [ %call5, %if.else.if.then415_crit_edge ]
  call void @kvfree(ptr noundef %in_f.1613) #7
  br label %cleanup417

cleanup417:                                       ; preds = %if.then415, %error413.cleanup417_crit_edge
  %error.5612 = phi i32 [ %error.5, %error413.cleanup417_crit_edge ], [ %error.5611, %if.then415 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #7
  ret i32 %error.5612
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xlog_buf_readahead(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_inode_item_format_convert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xlog_is_buffer_cancelled(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_log_recover_inode_cancel(ptr noundef %log, ptr noundef %in_f) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_inode_cancel, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_inode_cancel, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !87

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !94
  %call42 = tail call i32 @__traceiter_xfs_log_recover_inode_cancel(ptr noundef null, ptr noundef %log, ptr noundef %in_f) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !87

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_inode_cancel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_inode_cancel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_log_recover_inode_cancel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_log_recover_inode_cancel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 2380, ptr noundef nonnull @.str.26) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
define internal fastcc void @trace_xfs_log_recover_inode_recover(ptr noundef %log, ptr noundef %in_f) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_inode_recover, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_inode_recover, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !87

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !98
  %call42 = tail call i32 @__traceiter_xfs_log_recover_inode_recover(ptr noundef null, ptr noundef %log, ptr noundef %in_f) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !99
  %13 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !87

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_inode_recover, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_inode_recover, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_log_recover_inode_recover.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_log_recover_inode_recover.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 2379, ptr noundef nonnull @.str.26) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_buf_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_magic16(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_log_recover_inode_skip(ptr noundef %log, ptr noundef %in_f) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_inode_skip, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_inode_skip, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !87

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !100
  %call42 = tail call i32 @__traceiter_xfs_log_recover_inode_skip(ptr noundef null, ptr noundef %log, ptr noundef %in_f) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !87

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_inode_skip, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_inode_skip, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_log_recover_inode_skip.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_log_recover_inode_skip.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 2381, ptr noundef nonnull @.str.26) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @xfs_log_dinode_to_disk(ptr noundef readonly %from, ptr noundef writeonly %to, i64 noundef %lsn) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %from to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %from, align 8
  %2 = ptrtoint ptr %to to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %to, align 8
  %di_mode = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 1
  %3 = ptrtoint ptr %di_mode to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %di_mode, align 2
  %di_mode2 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 1
  %5 = ptrtoint ptr %di_mode2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %di_mode2, align 2
  %di_version = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 2
  %6 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %di_version, align 4
  %di_version3 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 2
  %8 = ptrtoint ptr %di_version3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %di_version3, align 4
  %di_format = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 3
  %9 = ptrtoint ptr %di_format to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %di_format, align 1
  %di_format4 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 3
  %11 = ptrtoint ptr %di_format4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %di_format4, align 1
  %di_onlink = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 4
  %12 = ptrtoint ptr %di_onlink to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %di_onlink, align 2
  %di_uid = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 5
  %13 = ptrtoint ptr %di_uid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %di_uid, align 8
  %di_uid5 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 5
  %15 = ptrtoint ptr %di_uid5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %di_uid5, align 8
  %di_gid = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 6
  %16 = ptrtoint ptr %di_gid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %di_gid, align 4
  %di_gid6 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 6
  %18 = ptrtoint ptr %di_gid6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %di_gid6, align 4
  %di_nlink = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 7
  %19 = ptrtoint ptr %di_nlink to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %di_nlink, align 8
  %di_nlink7 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 7
  %21 = ptrtoint ptr %di_nlink7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %di_nlink7, align 8
  %di_projid_lo = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 8
  %22 = ptrtoint ptr %di_projid_lo to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %di_projid_lo, align 4
  %di_projid_lo8 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 8
  %24 = ptrtoint ptr %di_projid_lo8 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %di_projid_lo8, align 4
  %di_projid_hi = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 9
  %25 = ptrtoint ptr %di_projid_hi to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %di_projid_hi, align 2
  %di_projid_hi9 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 9
  %27 = ptrtoint ptr %di_projid_hi9 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %di_projid_hi9, align 2
  %di_pad = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 10
  %di_pad10 = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 10
  %28 = call ptr @memcpy(ptr %di_pad, ptr %di_pad10, i32 6)
  %di_atime = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 12
  %29 = ptrtoint ptr %di_atime to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %di_atime, align 8
  %di_atime12 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 12
  %31 = ptrtoint ptr %di_atime12 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %di_atime12, align 8
  %di_mtime = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 13
  %32 = ptrtoint ptr %di_mtime to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %di_mtime, align 8
  %di_mtime14 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 13
  %34 = ptrtoint ptr %di_mtime14 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %di_mtime14, align 8
  %di_ctime = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 14
  %35 = ptrtoint ptr %di_ctime to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %di_ctime, align 8
  %di_ctime16 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 14
  %37 = ptrtoint ptr %di_ctime16 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %di_ctime16, align 8
  %di_size = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 15
  %38 = ptrtoint ptr %di_size to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %di_size, align 8
  %di_size17 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 15
  %40 = ptrtoint ptr %di_size17 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %di_size17, align 8
  %di_nblocks = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 16
  %41 = ptrtoint ptr %di_nblocks to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %di_nblocks, align 8
  %di_nblocks18 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 16
  %43 = ptrtoint ptr %di_nblocks18 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %di_nblocks18, align 8
  %di_extsize = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 17
  %44 = ptrtoint ptr %di_extsize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %di_extsize, align 8
  %di_extsize19 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 17
  %46 = ptrtoint ptr %di_extsize19 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %di_extsize19, align 8
  %di_nextents = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 18
  %47 = ptrtoint ptr %di_nextents to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %di_nextents, align 4
  %di_nextents20 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 18
  %49 = ptrtoint ptr %di_nextents20 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %di_nextents20, align 4
  %di_anextents = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 19
  %50 = ptrtoint ptr %di_anextents to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %di_anextents, align 8
  %di_anextents21 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 19
  %52 = ptrtoint ptr %di_anextents21 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %di_anextents21, align 8
  %di_forkoff = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 20
  %53 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %di_forkoff, align 2
  %di_forkoff22 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 20
  %55 = ptrtoint ptr %di_forkoff22 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %di_forkoff22, align 2
  %di_aformat = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 21
  %56 = ptrtoint ptr %di_aformat to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %di_aformat, align 1
  %di_aformat23 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 21
  %58 = ptrtoint ptr %di_aformat23 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %di_aformat23, align 1
  %di_dmevmask = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 22
  %59 = ptrtoint ptr %di_dmevmask to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %di_dmevmask, align 4
  %di_dmevmask24 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 22
  %61 = ptrtoint ptr %di_dmevmask24 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %di_dmevmask24, align 4
  %di_dmstate = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 23
  %62 = ptrtoint ptr %di_dmstate to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %di_dmstate, align 8
  %di_dmstate25 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 23
  %64 = ptrtoint ptr %di_dmstate25 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %di_dmstate25, align 8
  %di_flags = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 24
  %65 = ptrtoint ptr %di_flags to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %di_flags, align 2
  %di_flags26 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 24
  %67 = ptrtoint ptr %di_flags26 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %di_flags26, align 2
  %di_gen = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 25
  %68 = ptrtoint ptr %di_gen to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %di_gen, align 4
  %di_gen27 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 25
  %70 = ptrtoint ptr %di_gen27 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %di_gen27, align 4
  %71 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %71)
  %cmp = icmp eq i8 %71, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %di_changecount = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 28
  %72 = ptrtoint ptr %di_changecount to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %di_changecount, align 8
  %di_changecount30 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 28
  %74 = ptrtoint ptr %di_changecount30 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %di_changecount30, align 8
  %di_crtime = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 33
  %75 = ptrtoint ptr %di_crtime to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %di_crtime, align 8
  %di_crtime32 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 33
  %77 = ptrtoint ptr %di_crtime32 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %di_crtime32, align 8
  %di_flags2 = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 30
  %78 = ptrtoint ptr %di_flags2 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %di_flags2, align 8
  %di_flags233 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 30
  %80 = ptrtoint ptr %di_flags233 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %di_flags233, align 8
  %di_cowextsize = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 31
  %81 = ptrtoint ptr %di_cowextsize to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %di_cowextsize, align 8
  %di_cowextsize34 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 31
  %83 = ptrtoint ptr %di_cowextsize34 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %di_cowextsize34, align 8
  %di_ino = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 34
  %84 = ptrtoint ptr %di_ino to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %di_ino, align 8
  %di_ino35 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 34
  %86 = ptrtoint ptr %di_ino35 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %di_ino35, align 8
  %di_lsn = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 29
  %87 = ptrtoint ptr %di_lsn to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %lsn, ptr %di_lsn, align 8
  %di_pad2 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 32
  %di_pad237 = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 32
  %88 = call ptr @memcpy(ptr %di_pad2, ptr %di_pad237, i32 12)
  %di_uuid = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 35
  %di_uuid39 = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 35
  %89 = call ptr @memcpy(ptr %di_uuid, ptr %di_uuid39, i32 16)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %di_flushiter40 = getelementptr inbounds %struct.xfs_log_dinode, ptr %from, i32 0, i32 11
  %90 = ptrtoint ptr %di_flushiter40 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %di_flushiter40, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i16 [ 0, %if.then ], [ %91, %if.else ]
  %92 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 11
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %.sink, ptr %92, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_bmbt_to_bmdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_recover_inode_owner_change(ptr noundef %mp, ptr noundef %dip, ptr nocapture noundef readonly %in_f, ptr noundef %buffer_list) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ilf_fields = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f, i32 0, i32 2
  %0 = ptrtoint ptr %ilf_fields to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ilf_fields, align 4
  %and = and i32 %1, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !86

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 84) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %ilf_ino = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f, i32 0, i32 6
  %2 = ptrtoint ptr %ilf_ino to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ilf_ino, align 8
  %call = tail call ptr @xfs_inode_alloc(ptr noundef %mp, i64 noundef %3) #7
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %di_version = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 2
  %4 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ugt i8 %5, 2
  br i1 %cmp, label %if.end.cond.end13_crit_edge, label %cond.false12, !prof !87

if.end.cond.end13_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end13

cond.false12:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 91) #7
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %if.end.cond.end13_crit_edge
  %call14 = tail call i32 @xfs_inode_from_disk(ptr noundef nonnull %call, ptr noundef %dip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %cond.end13.out_free_ip_crit_edge

cond.end13.out_free_ip_crit_edge:                 ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_ip

if.end17:                                         ; preds = %cond.end13
  %6 = ptrtoint ptr %ilf_fields to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ilf_fields, align 4
  %and19 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end38_crit_edge, label %if.then21

if.end17.if.end38_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then21:                                        ; preds = %if.end17
  %and23 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %cond.false32, label %if.then21.cond.end33_crit_edge, !prof !86

if.then21.cond.end33_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end33

cond.false32:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 98) #7
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %if.then21.cond.end33_crit_edge
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_ino, align 8
  %call34 = tail call i32 @xfs_bmbt_change_owner(ptr noundef null, ptr noundef nonnull %call, i32 noundef 0, i64 noundef %9, ptr noundef %buffer_list) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cond.end33.if.end38_crit_edge, label %cond.end33.out_free_ip_crit_edge

cond.end33.out_free_ip_crit_edge:                 ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_ip

cond.end33.if.end38_crit_edge:                    ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end38:                                         ; preds = %cond.end33.if.end38_crit_edge, %if.end17.if.end38_crit_edge
  %10 = ptrtoint ptr %ilf_fields to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ilf_fields, align 4
  %and40 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.out_free_ip_crit_edge, label %if.then42

if.end38.out_free_ip_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_ip

if.then42:                                        ; preds = %if.end38
  %and44 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %cond.false53, label %if.then42.cond.end54_crit_edge, !prof !86

if.then42.cond.end54_crit_edge:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end54

cond.false53:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 106) #7
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false53, %if.then42.cond.end54_crit_edge
  %i_ino55 = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %i_ino55 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_ino55, align 8
  %call56 = tail call i32 @xfs_bmbt_change_owner(ptr noundef null, ptr noundef nonnull %call, i32 noundef 1, i64 noundef %13, ptr noundef %buffer_list) #7
  br label %out_free_ip

out_free_ip:                                      ; preds = %cond.end54, %if.end38.out_free_ip_crit_edge, %cond.end33.out_free_ip_crit_edge, %cond.end13.out_free_ip_crit_edge
  %error.1 = phi i32 [ %call14, %cond.end13.out_free_ip_crit_edge ], [ %call34, %cond.end33.out_free_ip_crit_edge ], [ %call56, %cond.end54 ], [ 0, %if.end38.out_free_ip_crit_edge ]
  tail call void @xfs_inode_free(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free_ip, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out_free_ip ], [ -12, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dinode_calc_crc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_buf_delwri_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_log_recover_inode_cancel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_log_recover_inode_recover(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_read_map(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_log_recover_inode_skip(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_inode_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_inode_from_disk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmbt_change_owner(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly mustprogress nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !63, !64, !66, !67, !69, !71, !73}
!llvm.named.register.sp = !{!75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @xlog_inode_item_ops, !1, !"xlog_inode_item_ops", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 485, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 241, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 248, i32 6}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 250, i32 2}
!9 = !{ptr @__func__.xlog_recover_inode_commit_pass2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 251, i32 4}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 256, i32 6}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 258, i32 4}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 320, i32 4}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 324, i32 3}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 334, i32 4}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 338, i32 3}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 346, i32 3}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 350, i32 2}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 359, i32 3}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 363, i32 2}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 371, i32 3}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 375, i32 4}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 401, i32 2}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 402, i32 2}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 403, i32 2}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 422, i32 3}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 439, i32 3}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 445, i32 4}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 457, i32 24}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 458, i32 4}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 473, i32 2}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../fs/xfs/xfs_trace.h", i32 2380, i32 1}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!57 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../fs/xfs/xfs_trace.h", i32 2379, i32 1}
!63 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../fs/xfs/xfs_trace.h", i32 2381, i32 1}
!66 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 84, i32 2}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 91, i32 2}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 98, i32 3}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/xfs/xfs_inode_item_recover.c", i32 106, i32 3}
!75 = !{!"sp"}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"auto-init"}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{i64 2166322628}
!89 = !{i64 2166323084}
!90 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!91 = !{!"branch_weights", i32 1, i32 1}
!92 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2001}
!93 = !{i64 2148258249, i64 2148258254, i64 2148258267, i64 2148258311, i64 2148258345, i64 2148258366}
!94 = !{i64 2162462330}
!95 = !{i64 2162462567}
!96 = !{i64 2149960342}
!97 = !{i64 2149961378}
!98 = !{i64 2162440262}
!99 = !{i64 2162444562}
!100 = !{i64 2162480205}
!101 = !{i64 2162480438}
