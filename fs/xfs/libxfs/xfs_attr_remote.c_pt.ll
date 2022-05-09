; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_attr_remote.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_attr_remote.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_attr3_rmt_hdr = type { i32, i32, i32, i32, %struct.uuid_t, i64, i64, i64 }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xfs_da_args = type { ptr, ptr, i32, i8, ptr, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_delattr_context = type { ptr, %struct.xfs_bmbt_irec, i32, i32, ptr, i32, i32 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xfs_attr3_rmt\00", [18 x i8] zeroinitializer }, align 32
@xfs_attr3_rmt_buf_ops = dso_local constant { %struct.xfs_buf_ops, [40 x i8] } { %struct.xfs_buf_ops { ptr @.str, %union.anon.87 { [2 x i32] [i32 0, i32 1480675917] }, ptr @xfs_attr3_rmt_read_verify, ptr @xfs_attr3_rmt_write_verify, ptr @xfs_attr3_rmt_verify_struct }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"args->valuelen != 0\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fs/xfs/libxfs/xfs_attr_remote.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"args->rmtvaluelen == args->valuelen\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nmap >= 1\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"(map[i].br_startblock != DELAYSTARTBLOCK) && (map[i].br_startblock != HOLESTARTBLOCK)\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"valuelen == 0\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"blkcnt > 0\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nmap == 1\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"(map.br_startblock != DELAYSTARTBLOCK) && (map.br_startblock != HOLESTARTBLOCK)\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xfs_isilocked(ip, XFS_ILOCK_EXCL)\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"map->br_startblock == DELAYSTARTBLOCK\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"map->br_startblock == HOLESTARTBLOCK\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"(map->br_startblock != DELAYSTARTBLOCK) && (map->br_startblock != HOLESTARTBLOCK)\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nmap != 1\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"len >= blksize\00", [17 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_attr_rmtval_get = external dso_local global %struct.tracepoint, align 4
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_attr_rmtval_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"remote attribute header mismatch bno/off/len/owner (0x%llx/0x%x/Ox%x/0x%llx)\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"*valuelen - byte_cnt == 0\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"len == blksize\00", [17 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_attr_rmtval_remove_return = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_rmtval_remove_return.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 -2, i64 -1]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 231, i32 10 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"xfs_attr3_rmt_buf_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 230, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 398, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 399, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 409, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 415, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 436, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 500, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 508, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 509, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 547, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 549, i32 6 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 550, i32 6 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 617, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 656, i32 7 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 135, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 2066, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 108, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 303, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 356, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [35 x i8] c"../fs/xfs/libxfs/xfs_attr_remote.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 357, i32 4 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @.str, ptr @xfs_attr3_rmt_buf_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_attr3_rmt_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_attr3_rmt_blocks(ptr nocapture noundef readonly %mp, i32 noundef %attrlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 1
  %2 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_blocksize, align 4
  %sub = add i32 %3, -56
  %add = add i32 %attrlen, -1
  %sub2 = add i32 %add, %sub
  %div = sdiv i32 %sub2, %sub
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = sext i32 %attrlen to i64
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 31
  %4 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_blockmask, align 8
  %conv3 = zext i32 %5 to i64
  %add4 = add nsw i64 %conv3, %conv
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %6 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %7 to i64
  %shr = lshr i64 %add4, %sh_prom
  %conv7 = trunc i64 %shr to i32
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %div, %if.then ], [ %conv7, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_attr3_rmt_read_verify(ptr noundef %bp) #2 align 64 {
entry:
  %fa = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fa) #11
  %0 = ptrtoint ptr %fa to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fa, align 4, !annotation !60
  %call = call fastcc i32 @__xfs_attr3_rmt_read_verify(ptr noundef %bp, i1 noundef zeroext true, ptr noundef nonnull %fa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fa, align 4
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef %call, ptr noundef %2) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fa) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_attr3_rmt_write_verify(ptr noundef %bp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_attr_geo, align 32
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup20_crit_edge, label %if.end

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup20

if.end:                                           ; preds = %entry
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %8 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_addr, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %10 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_maps.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %11, align 8
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %14 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_length, align 8
  %shl = shl i32 %15, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %5)
  %cmp.not = icmp slt i32 %shl, %5
  br i1 %cmp.not, label %cond.false, label %if.end.cond.end_crit_edge, !prof !61

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 200) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %cmp457 = icmp sgt i32 %shl, 0
  br i1 %cmp457, label %while.body.lr.ph, label %cond.end.while.end_crit_edge

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %cond.end
  %conv = sext i32 %5 to i64
  %sub12 = add nsw i64 %conv, 511
  %shr = lshr i64 %sub12, 9
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %bno.060 = phi i64 [ %13, %while.body.lr.ph ], [ %add13, %cleanup.while.body_crit_edge ]
  %len.059 = phi i32 [ %shl, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %ptr.058 = phi ptr [ %9, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %call5 = tail call fastcc ptr @xfs_attr3_rmt_verify(ptr noundef %1, ptr noundef %bp, ptr noundef %ptr.058, i32 noundef %5, i64 noundef %bno.060)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call5) #11
  br label %cleanup20

if.end8:                                          ; preds = %while.body
  %rm_lsn = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, ptr %ptr.058, i32 0, i32 7
  %16 = ptrtoint ptr %rm_lsn to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rm_lsn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %17)
  %cmp9.not = icmp eq i64 %17, -1
  br i1 %cmp9.not, label %cleanup, label %__here

__here:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !62
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef blockaddress(@xfs_attr3_rmt_write_verify, %__here)) #11
  br label %cleanup20

cleanup:                                          ; preds = %if.end8
  %add.ptr.i.i = getelementptr i8, ptr %ptr.058, i32 12
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %add.ptr.i.i, align 4
  %call.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %ptr.058, i32 noundef %5) #11
  %19 = xor i32 %call.i.i, -1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #11
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %add.ptr.i.i, align 4
  %sub = sub i32 %len.059, %5
  %add.ptr = getelementptr i8, ptr %ptr.058, i32 %5
  %add13 = add i64 %bno.060, %shr
  %cmp4 = icmp sgt i32 %sub, 0
  br i1 %cmp4, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cond.end.while.end_crit_edge
  %len.0.lcssa = phi i32 [ %shl, %cond.end.while.end_crit_edge ], [ %sub, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.lcssa)
  %cmp14.not = icmp eq i32 %len.0.lcssa, 0
  br i1 %cmp14.not, label %while.end.cleanup20_crit_edge, label %__here17

while.end.cleanup20_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup20

__here17:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !63
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef blockaddress(@xfs_attr3_rmt_write_verify, %__here17)) #11
  br label %cleanup20

cleanup20:                                        ; preds = %__here17, %while.end.cleanup20_crit_edge, %__here, %if.then7, %entry.cleanup20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_attr3_rmt_verify_struct(ptr noundef %bp) #2 align 64 {
entry:
  %fa = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fa) #11
  %0 = ptrtoint ptr %fa to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fa, align 4, !annotation !60
  %call = call fastcc i32 @__xfs_attr3_rmt_read_verify(ptr noundef %bp, i1 noundef zeroext false, ptr noundef nonnull %fa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fa, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %2, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fa) #11
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_rmtval_get(ptr noundef %args) local_unnamed_addr #2 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %map = alloca [1 x %struct.xfs_bmbt_irec], align 8
  %bp = alloca ptr, align 4
  %dst = alloca ptr, align 4
  %valuelen = alloca i32, align 4
  %nmap = alloca i32, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map) #11
  %0 = call ptr @memset(ptr %map, i32 255, i32 32)
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %1 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #11
  %5 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !60
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 16
  %6 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmtblkno, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst) #11
  %value = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 4
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %value, align 8
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dst, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %valuelen) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmap) #11
  %11 = ptrtoint ptr %nmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %nmap, align 4, !annotation !60
  %rmtblkcnt = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 17
  %12 = ptrtoint ptr %rmtblkcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmtblkcnt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #11
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %offset, align 4
  tail call fastcc void @trace_xfs_attr_rmtval_get(ptr noundef %args)
  %valuelen1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 5
  %15 = ptrtoint ptr %valuelen1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %valuelen1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not = icmp eq i32 %16, 0
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !61

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 398) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %rmtvaluelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 18
  %17 = ptrtoint ptr %rmtvaluelen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rmtvaluelen, align 8
  %19 = ptrtoint ptr %valuelen1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %valuelen1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp4 = icmp eq i32 %18, %20
  br i1 %cmp4, label %cond.end.cond.end13_crit_edge, label %cond.false12, !prof !64

cond.end.cond.end13_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 399) #11
  %21 = ptrtoint ptr %rmtvaluelen to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr173 = load i32, ptr %rmtvaluelen, align 8
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.end.cond.end13_crit_edge
  %22 = phi i32 [ %18, %cond.end.cond.end13_crit_edge ], [ %.pr173, %cond.false12 ]
  %23 = ptrtoint ptr %valuelen to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %valuelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp15166 = icmp sgt i32 %22, 0
  br i1 %cmp15166, label %while.body.lr.ph, label %cond.end13.while.end_crit_edge

cond.end13.while.end_crit_edge:                   ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %cond.end13
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %4, i32 0, i32 24
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %4, i32 0, i32 11
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 28
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 13
  %24 = getelementptr inbounds i8, ptr %map.i, i32 8
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %blkcnt.0168 = phi i32 [ %13, %while.body.lr.ph ], [ %blkcnt.1.lcssa.ph, %for.end.while.body_crit_edge ]
  %lblkno.0167 = phi i32 [ %7, %while.body.lr.ph ], [ %lblkno.1.lcssa.ph, %for.end.while.body_crit_edge ]
  %25 = ptrtoint ptr %nmap to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %nmap, align 4
  %26 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dp, align 8
  %conv = zext i32 %lblkno.0167 to i64
  %conv17 = sext i32 %blkcnt.0168 to i64
  %call = call i32 @xfs_bmapi_read(ptr noundef %27, i64 noundef %conv, i64 noundef %conv17, ptr noundef nonnull %map, ptr noundef nonnull %nmap, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.end, label %while.body.cleanup105_crit_edge

while.body.cleanup105_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup105

if.end:                                           ; preds = %while.body
  %28 = ptrtoint ptr %nmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp19 = icmp sgt i32 %29, 0
  br i1 %cmp19, label %if.end.land.rhs.preheader_crit_edge, label %cond.end29, !prof !64

if.end.land.rhs.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.preheader

cond.end29:                                       ; preds = %if.end
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 409) #11
  %30 = ptrtoint ptr %nmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr174 = load i32, ptr %nmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr174)
  %cmp30159 = icmp sgt i32 %.pr174, 0
  br i1 %cmp30159, label %cond.end29.land.rhs.preheader_crit_edge, label %cond.end29.for.end_crit_edge

cond.end29.for.end_crit_edge:                     ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cond.end29.land.rhs.preheader_crit_edge:          ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %cond.end29.land.rhs.preheader_crit_edge, %if.end.land.rhs.preheader_crit_edge
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.preheader
  %i.0162 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %blkcnt.1161 = phi i32 [ %conv92, %for.inc.land.rhs_crit_edge ], [ %blkcnt.0168, %land.rhs.preheader ]
  %lblkno.1160 = phi i32 [ %conv88, %for.inc.land.rhs_crit_edge ], [ %lblkno.0167, %land.rhs.preheader ]
  %31 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %valuelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp32 = icmp sgt i32 %32, 0
  br i1 %cmp32, label %for.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

for.body:                                         ; preds = %land.rhs
  %br_startblock = getelementptr [1 x %struct.xfs_bmbt_irec], ptr %map, i32 0, i32 %i.0162, i32 1
  %33 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %34)
  %35 = icmp ult i64 %34, -2
  br i1 %35, label %for.body.cond.end50_crit_edge, label %cond.false49, !prof !64

for.body.cond.end50_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end50

cond.false49:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 416) #11
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false49, %for.body.cond.end50_crit_edge
  %36 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %br_startblock, align 8
  %38 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sb_agblklog, align 4
  %conv53 = zext i8 %39 to i32
  %sh_prom = zext i8 %39 to i64
  %shr = lshr i64 %37, %sh_prom
  %conv55 = and i64 %shr, 4294967295
  %40 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sb_agblocks, align 4
  %conv57 = zext i32 %41 to i64
  %mul = mul nuw i64 %conv55, %conv57
  %notmask.i = shl nsw i32 -1, %conv53
  %sub.i = xor i32 %notmask.i, -1
  %42 = trunc i64 %37 to i32
  %conv65 = and i32 %sub.i, %42
  %conv66 = zext i32 %conv65 to i64
  %add = add nuw i64 %mul, %conv66
  %43 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom68 = zext i8 %44 to i64
  %shl = shl i64 %add, %sh_prom68
  %br_blockcount = getelementptr [1 x %struct.xfs_bmbt_irec], ptr %map, i32 0, i32 %i.0162, i32 2
  %45 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %br_blockcount, align 8
  %shl73 = shl i64 %46, %sh_prom68
  %conv74 = trunc i64 %shl73 to i32
  %47 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %m_ddev_targp, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #11
  %49 = ptrtoint ptr %24 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 -1, ptr %24, align 8
  %50 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %shl, ptr %map.i, align 8
  store i32 %conv74, ptr %24, align 8
  %51 = call ptr @llvm.returnaddress(i32 0) #11
  %call.i = call i32 @xfs_buf_read_map(ptr noundef %48, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp, ptr noundef nonnull @xfs_attr3_rmt_buf_ops, ptr noundef %51) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool76.not = icmp eq i32 %call.i, 0
  br i1 %tobool76.not, label %if.end78, label %cond.end50.cleanup105_crit_edge

cond.end50.cleanup105_crit_edge:                  ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup105

if.end78:                                         ; preds = %cond.end50
  %52 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bp, align 4
  %54 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dp, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %i_ino, align 8
  %call80 = call fastcc i32 @xfs_attr_rmtval_copyout(ptr noundef %4, ptr noundef %53, i64 noundef %57, ptr noundef nonnull %offset, ptr noundef nonnull %valuelen, ptr noundef nonnull %dst)
  %58 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %59) #11
  call void @xfs_buf_rele(ptr noundef %59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %for.inc, label %if.end78.cleanup105_crit_edge

if.end78.cleanup105_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup105

for.inc:                                          ; preds = %if.end78
  %60 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %br_blockcount, align 8
  %62 = trunc i64 %61 to i32
  %conv88 = add i32 %lblkno.1160, %62
  %conv92 = sub i32 %blkcnt.1161, %62
  %inc = add nuw nsw i32 %i.0162, 1
  %63 = ptrtoint ptr %nmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nmap, align 4
  %cmp30 = icmp slt i32 %inc, %64
  br i1 %cmp30, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end29.for.end_crit_edge
  %lblkno.1.lcssa.ph = phi i32 [ %lblkno.0167, %cond.end29.for.end_crit_edge ], [ %conv88, %for.inc.for.end_crit_edge ]
  %blkcnt.1.lcssa.ph = phi i32 [ %blkcnt.0168, %cond.end29.for.end_crit_edge ], [ %conv92, %for.inc.for.end_crit_edge ]
  %65 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr.pr = load i32, ptr %valuelen, align 4
  %cmp15 = icmp sgt i32 %.pr.pr, 0
  br i1 %cmp15, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %for.end.while.end_crit_edge, %land.rhs.while.end_crit_edge, %cond.end13.while.end_crit_edge
  %.lcssa = phi i32 [ %22, %cond.end13.while.end_crit_edge ], [ %32, %land.rhs.while.end_crit_edge ], [ %.pr.pr, %for.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %cmp94 = icmp eq i32 %.lcssa, 0
  br i1 %cmp94, label %while.end.cleanup105_crit_edge, label %cond.false103, !prof !64

while.end.cleanup105_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup105

cond.false103:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 436) #11
  br label %cleanup105

cleanup105:                                       ; preds = %cond.false103, %while.end.cleanup105_crit_edge, %if.end78.cleanup105_crit_edge, %cond.end50.cleanup105_crit_edge, %while.body.cleanup105_crit_edge
  %retval.3 = phi i32 [ 0, %while.end.cleanup105_crit_edge ], [ 0, %cond.false103 ], [ %call.i, %cond.end50.cleanup105_crit_edge ], [ %call80, %if.end78.cleanup105_crit_edge ], [ %call, %while.body.cleanup105_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmap) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %valuelen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map) #11
  ret i32 %retval.3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_rmtval_get(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_rmtval_get, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_rmtval_get, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !65

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !64

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !50) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !66
  %call42 = tail call i32 @__traceiter_xfs_attr_rmtval_get(ptr noundef null, ptr noundef %args) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !67
  %13 = tail call i32 @llvm.read_register.i32(metadata !50) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !50) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !64

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !50) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_rmtval_get, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_rmtval_get, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_rmtval_get.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_attr_rmtval_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 2066, ptr noundef nonnull @.str.17) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !69
  %31 = tail call i32 @llvm.read_register.i32(metadata !50) #11
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
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_read(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_rmtval_copyout(ptr noundef %mp, ptr nocapture noundef readonly %bp, i64 noundef %ino, ptr nocapture noundef %offset, ptr nocapture noundef %valuelen, ptr nocapture noundef %dst) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %2 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_maps.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %6 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_length, align 8
  %shl = shl i32 %7, 9
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 7
  %8 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_attr_geo, align 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %11)
  %cmp.not = icmp slt i32 %shl, %11
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !61

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 291) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %cmp366 = icmp sgt i32 %shl, 0
  br i1 %cmp366, label %land.rhs.lr.ph, label %cond.end.cleanup24_crit_edge

cond.end.cleanup24_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup24

land.rhs.lr.ph:                                   ; preds = %cond.end
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %conv = sext i32 %11 to i64
  %sub18 = add nsw i64 %conv, 511
  %shr = lshr i64 %sub18, 9
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %len.070 = phi i32 [ %shl, %land.rhs.lr.ph ], [ %sub16, %cleanup.land.rhs_crit_edge ]
  %bno.068 = phi i64 [ %5, %land.rhs.lr.ph ], [ %add19, %cleanup.land.rhs_crit_edge ]
  %src.067 = phi ptr [ %1, %land.rhs.lr.ph ], [ %add.ptr17, %cleanup.land.rhs_crit_edge ]
  %12 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %valuelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4 = icmp sgt i32 %13, 0
  br i1 %cmp4, label %while.body, label %land.rhs.cleanup24_crit_edge

land.rhs.cleanup24_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup24

while.body:                                       ; preds = %land.rhs
  %14 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond.neg = select i1 %tobool.i.not, i32 0, i32 -56
  %sub = add i32 %cond.neg, %11
  %16 = tail call i32 @llvm.smin.i32(i32 %13, i32 %sub)
  br i1 %tobool.i.not, label %while.body.cleanup_crit_edge, label %if.then

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %while.body
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %call12 = tail call fastcc ptr @xfs_attr3_rmt_hdr_ok(ptr noundef %src.067, i64 noundef %ino, i32 noundef %18, i32 noundef %16, i64 noundef %bno.068)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then.cleanup_crit_edge, label %cleanup.thread

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.19, i64 noundef %bno.068, i32 noundef %20, i32 noundef %16, i64 noundef %ino) #11
  br label %cleanup24

cleanup:                                          ; preds = %if.then.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %hdr_size.0 = phi i32 [ 0, %while.body.cleanup_crit_edge ], [ 56, %if.then.cleanup_crit_edge ]
  %21 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dst, align 4
  %add.ptr = getelementptr i8, ptr %src.067, i32 %hdr_size.0
  %23 = call ptr @memcpy(ptr %22, ptr %add.ptr, i32 %16)
  %sub16 = sub i32 %len.070, %11
  %add.ptr17 = getelementptr i8, ptr %src.067, i32 %11
  %add19 = add i64 %bno.068, %shr
  %24 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %valuelen, align 4
  %sub20 = sub i32 %25, %16
  store i32 %sub20, ptr %valuelen, align 4
  %26 = load ptr, ptr %dst, align 4
  %add.ptr21 = getelementptr i8, ptr %26, i32 %16
  store ptr %add.ptr21, ptr %dst, align 4
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset, align 4
  %add22 = add i32 %28, %16
  store i32 %add22, ptr %offset, align 4
  %cmp3 = icmp sgt i32 %sub16, 0
  br i1 %cmp3, label %cleanup.land.rhs_crit_edge, label %cleanup.cleanup24_crit_edge

cleanup.cleanup24_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup24

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

cleanup24:                                        ; preds = %cleanup.cleanup24_crit_edge, %cleanup.thread, %land.rhs.cleanup24_crit_edge, %cond.end.cleanup24_crit_edge
  %retval.2 = phi i32 [ -117, %cleanup.thread ], [ 0, %cond.end.cleanup24_crit_edge ], [ 0, %land.rhs.cleanup24_crit_edge ], [ 0, %cleanup.cleanup24_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_rmt_find_hole(ptr nocapture noundef %args) local_unnamed_addr #2 align 64 {
entry:
  %lfileoff = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lfileoff) #11
  %4 = ptrtoint ptr %lfileoff to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %lfileoff, align 8
  %rmtvaluelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 18
  %5 = ptrtoint ptr %rmtvaluelen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rmtvaluelen, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %7 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sb_blocksize.i = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %sb_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_blocksize.i, align 4
  %sub.i = add i32 %10, -56
  %add.i = add i32 %6, -1
  %sub2.i = add i32 %add.i, %sub.i
  %div.i = sdiv i32 %sub2.i, %sub.i
  br label %xfs_attr3_rmt_blocks.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = sext i32 %6 to i64
  %m_blockmask.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 31
  %11 = ptrtoint ptr %m_blockmask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m_blockmask.i, align 8
  %conv3.i = zext i32 %12 to i64
  %add4.i = add nsw i64 %conv3.i, %conv.i
  %sb_blocklog.i = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 20
  %13 = ptrtoint ptr %sb_blocklog.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sb_blocklog.i, align 8
  %sh_prom.i = zext i8 %14 to i64
  %shr.i = lshr i64 %add4.i, %sh_prom.i
  %conv7.i = trunc i64 %shr.i to i32
  br label %xfs_attr3_rmt_blocks.exit

xfs_attr3_rmt_blocks.exit:                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %div.i, %if.then.i ], [ %conv7.i, %if.end.i ]
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %15 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trans, align 4
  %call3 = call i32 @xfs_bmap_first_unused(ptr noundef %16, ptr noundef %1, i32 noundef %retval.0.i, ptr noundef nonnull %lfileoff, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %xfs_attr3_rmt_blocks.exit.cleanup_crit_edge

xfs_attr3_rmt_blocks.exit.cleanup_crit_edge:      ; preds = %xfs_attr3_rmt_blocks.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %xfs_attr3_rmt_blocks.exit
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %lfileoff to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %lfileoff, align 8
  %conv = trunc i64 %18 to i32
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 16
  %19 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %rmtblkno, align 8
  %rmtblkcnt = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 17
  %20 = ptrtoint ptr %rmtblkcnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i, ptr %rmtblkcnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xfs_attr3_rmt_blocks.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lfileoff) #11
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_first_unused(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_rmtval_set_value(ptr nocapture noundef readonly %args) local_unnamed_addr #2 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %map = alloca %struct.xfs_bmbt_irec, align 8
  %src = alloca ptr, align 4
  %valuelen = alloca i32, align 4
  %nmap = alloca i32, align 4
  %offset = alloca i32, align 4
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map) #11
  %4 = call ptr @memset(ptr %map, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #11
  %value = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 4
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %value, align 8
  %7 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %valuelen) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmap) #11
  %8 = ptrtoint ptr %nmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %nmap, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #11
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %offset, align 4
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 16
  %10 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rmtblkno, align 8
  %rmtblkcnt = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 17
  %12 = ptrtoint ptr %rmtblkcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmtblkcnt, align 4
  %rmtvaluelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 18
  %14 = ptrtoint ptr %rmtvaluelen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rmtvaluelen, align 8
  %16 = ptrtoint ptr %valuelen to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %valuelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp117 = icmp sgt i32 %15, 0
  br i1 %cmp117, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 1
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 24
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 11
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 28
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 2
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 13
  %17 = getelementptr inbounds i8, ptr %map.i, i32 8
  br label %while.body

while.condthread-pre-split:                       ; preds = %if.end55
  %18 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %br_blockcount, align 8
  %20 = trunc i64 %19 to i32
  %conv64 = add i32 %lblkno.0118, %20
  %conv67 = sub i32 %blkcnt.0119, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #11
  %21 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %valuelen, align 4
  %cmp = icmp sgt i32 %.pr, 0
  br i1 %cmp, label %while.condthread-pre-split.while.body_crit_edge, label %while.condthread-pre-split.while.end_crit_edge

while.condthread-pre-split.while.end_crit_edge:   ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.condthread-pre-split.while.body_crit_edge:  ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body:                                       ; preds = %while.condthread-pre-split.while.body_crit_edge, %while.body.lr.ph
  %blkcnt.0119 = phi i32 [ %13, %while.body.lr.ph ], [ %conv67, %while.condthread-pre-split.while.body_crit_edge ]
  %lblkno.0118 = phi i32 [ %11, %while.body.lr.ph ], [ %conv64, %while.condthread-pre-split.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #11
  %22 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blkcnt.0119)
  %cmp2 = icmp sgt i32 %blkcnt.0119, 0
  br i1 %cmp2, label %while.body.cond.end_crit_edge, label %cond.false, !prof !64

while.body.cond.end_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 500) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %while.body.cond.end_crit_edge
  %23 = ptrtoint ptr %nmap to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %nmap, align 4
  %conv = zext i32 %lblkno.0118 to i64
  %conv4 = sext i32 %blkcnt.0119 to i64
  %call = call i32 @xfs_bmapi_read(ptr noundef %1, i64 noundef %conv, i64 noundef %conv4, ptr noundef nonnull %map, ptr noundef nonnull %nmap, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end, label %cond.end.cleanup.thread_crit_edge

cond.end.cleanup.thread_crit_edge:                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end:                                           ; preds = %cond.end
  %24 = ptrtoint ptr %nmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp6 = icmp eq i32 %25, 1
  br i1 %cmp6, label %if.end.cond.end16_crit_edge, label %cond.false15, !prof !64

if.end.cond.end16_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end16

cond.false15:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 508) #11
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %if.end.cond.end16_crit_edge
  %26 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %27)
  %28 = icmp ult i64 %27, -2
  br i1 %28, label %cond.end16.cond.end30_crit_edge, label %cond.false29, !prof !64

cond.end16.cond.end30_crit_edge:                  ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 510) #11
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %cond.end16.cond.end30_crit_edge
  %29 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %br_startblock, align 8
  %31 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sb_agblklog, align 4
  %conv32 = zext i8 %32 to i32
  %sh_prom = zext i8 %32 to i64
  %shr = lshr i64 %30, %sh_prom
  %conv34 = and i64 %shr, 4294967295
  %33 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sb_agblocks, align 4
  %conv36 = zext i32 %34 to i64
  %mul = mul nuw i64 %conv34, %conv36
  %notmask.i = shl nsw i32 -1, %conv32
  %sub.i = xor i32 %notmask.i, -1
  %35 = trunc i64 %30 to i32
  %conv43 = and i32 %sub.i, %35
  %conv44 = zext i32 %conv43 to i64
  %add = add nuw i64 %mul, %conv44
  %36 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom46 = zext i8 %37 to i64
  %shl = shl i64 %add, %sh_prom46
  %38 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %br_blockcount, align 8
  %shl50 = shl i64 %39, %sh_prom46
  %conv51 = trunc i64 %shl50 to i32
  %40 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %m_ddev_targp, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #11
  %42 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 -1, ptr %17, align 8
  %43 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %shl, ptr %map.i, align 8
  store i32 %conv51, ptr %17, align 8
  %call.i = call i32 @xfs_buf_get_map(ptr noundef %41, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool53.not = icmp eq i32 %call.i, 0
  br i1 %tobool53.not, label %if.end55, label %cond.end30.cleanup.thread_crit_edge

cond.end30.cleanup.thread_crit_edge:              ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end55:                                         ; preds = %cond.end30
  %44 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bp, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %45, i32 0, i32 35
  %46 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @xfs_attr3_rmt_buf_ops, ptr %b_ops, align 4
  %47 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dp1, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_ino, align 8
  call fastcc void @xfs_attr_rmtval_copyin(ptr noundef %3, ptr noundef %45, i64 noundef %50, ptr noundef nonnull %offset, ptr noundef nonnull %valuelen, ptr noundef nonnull %src)
  %51 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bp, align 4
  %call57 = call i32 @xfs_bwrite(ptr noundef %52) #11
  %53 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %54) #11
  call void @xfs_buf_rele(ptr noundef %54) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %while.condthread-pre-split, label %if.end55.cleanup.thread_crit_edge

if.end55.cleanup.thread_crit_edge:                ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end55.cleanup.thread_crit_edge, %cond.end30.cleanup.thread_crit_edge, %cond.end.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %call57, %if.end55.cleanup.thread_crit_edge ], [ %call.i, %cond.end30.cleanup.thread_crit_edge ], [ %call, %cond.end.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #11
  br label %cleanup81

while.end:                                        ; preds = %while.condthread-pre-split.while.end_crit_edge, %entry.while.end_crit_edge
  %.lcssa = phi i32 [ %15, %entry.while.end_crit_edge ], [ %.pr, %while.condthread-pre-split.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %cmp70 = icmp eq i32 %.lcssa, 0
  br i1 %cmp70, label %while.end.cleanup81_crit_edge, label %cond.false79, !prof !64

while.end.cleanup81_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup81

cond.false79:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 533) #11
  br label %cleanup81

cleanup81:                                        ; preds = %cond.false79, %while.end.cleanup81_crit_edge, %cleanup.thread
  %retval.2 = phi i32 [ 0, %while.end.cleanup81_crit_edge ], [ 0, %cond.false79 ], [ %retval.1.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmap) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %valuelen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map) #11
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_attr_rmtval_copyin(ptr nocapture noundef readonly %mp, ptr nocapture noundef readonly %bp, i64 noundef %ino, ptr nocapture noundef %offset, ptr nocapture noundef %valuelen, ptr nocapture noundef %src) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %2 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_maps.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %6 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_length, align 8
  %shl = shl i32 %7, 9
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 7
  %8 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_attr_geo, align 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %11)
  %cmp.not = icmp slt i32 %shl, %11
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !61

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 339) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %cmp384 = icmp sgt i32 %shl, 0
  br i1 %cmp384, label %land.rhs.lr.ph, label %cond.end.while.end_crit_edge

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %cond.end
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %conv = sext i32 %11 to i64
  %sub41 = add nsw i64 %conv, 511
  %shr = lshr i64 %sub41, 9
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %dst.088 = phi ptr [ %1, %land.rhs.lr.ph ], [ %add.ptr39, %if.end.land.rhs_crit_edge ]
  %len.086 = phi i32 [ %shl, %land.rhs.lr.ph ], [ %sub38, %if.end.land.rhs_crit_edge ]
  %bno.085 = phi i64 [ %5, %land.rhs.lr.ph ], [ %add42, %if.end.land.rhs_crit_edge ]
  %12 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %valuelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4 = icmp sgt i32 %13, 0
  br i1 %cmp4, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %14 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond.neg = select i1 %tobool.i.not, i32 0, i32 -56
  %sub = add i32 %cond.neg, %11
  %16 = tail call i32 @llvm.smin.i32(i32 %13, i32 %sub)
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %call11 = tail call fastcc i32 @xfs_attr3_rmt_hdr_set(ptr noundef %mp, ptr noundef %dst.088, i64 noundef %ino, i32 noundef %18, i32 noundef %16, i64 noundef %bno.085)
  %add.ptr = getelementptr i8, ptr %dst.088, i32 %call11
  %19 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %src, align 4
  %21 = call ptr @memcpy(ptr %add.ptr, ptr %20, i32 %16)
  %add = add i32 %16, %call11
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add)
  %cmp12 = icmp sgt i32 %11, %add
  br i1 %cmp12, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.body
  %22 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %valuelen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %16)
  %cmp14 = icmp eq i32 %23, %16
  br i1 %cmp14, label %if.then.cond.end23_crit_edge, label %cond.false22, !prof !64

if.then.cond.end23_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end23

cond.false22:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef 356) #11
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %if.then.cond.end23_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %len.086, i32 %11)
  %cmp24 = icmp eq i32 %len.086, %11
  br i1 %cmp24, label %cond.end23.cond.end33_crit_edge, label %cond.false32, !prof !64

cond.end23.cond.end33_crit_edge:                  ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end33

cond.false32:                                     ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 357) #11
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %cond.end23.cond.end33_crit_edge
  %add.ptr35 = getelementptr i8, ptr %add.ptr, i32 %16
  %sub37 = sub i32 %11, %add
  %24 = call ptr @memset(ptr %add.ptr35, i32 0, i32 %sub37)
  br label %if.end

if.end:                                           ; preds = %cond.end33, %while.body.if.end_crit_edge
  %sub38 = sub i32 %len.086, %11
  %add.ptr39 = getelementptr i8, ptr %dst.088, i32 %11
  %add42 = add i64 %bno.085, %shr
  %25 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %valuelen, align 4
  %sub43 = sub i32 %26, %16
  store i32 %sub43, ptr %valuelen, align 4
  %27 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %src, align 4
  %add.ptr44 = getelementptr i8, ptr %28, i32 %16
  store ptr %add.ptr44, ptr %src, align 4
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset, align 4
  %add45 = add i32 %30, %16
  store i32 %add45, ptr %offset, align 4
  %cmp3 = icmp sgt i32 %sub38, 0
  br i1 %cmp3, label %if.end.land.rhs_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.rhs.while.end_crit_edge, %cond.end.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bwrite(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_rmtval_stale(ptr noundef %ip, ptr nocapture noundef readonly %map, i32 noundef %incore_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %call = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 4) #11
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !64

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 547) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i64 %3, label %if.end [
    i64 -1, label %__here
    i64 -2, label %__here19
  ], !prof !70

__here:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !71
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 549, ptr noundef blockaddress(@xfs_attr_rmtval_stale, %__here)) #11
  br label %cleanup

__here19:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !72
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 550, ptr noundef blockaddress(@xfs_attr_rmtval_stale, %__here19)) #11
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_ddev_targp, align 8
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sb_agblklog, align 4
  %conv = zext i8 %7 to i32
  %sh_prom = zext i8 %7 to i64
  %shr = lshr i64 %3, %sh_prom
  %conv24 = and i64 %shr, 4294967295
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_agblocks, align 4
  %conv26 = zext i32 %9 to i64
  %mul = mul nuw i64 %conv24, %conv26
  %notmask.i = shl nsw i32 -1, %conv
  %sub.i = xor i32 %notmask.i, -1
  %10 = trunc i64 %3 to i32
  %conv33 = and i32 %sub.i, %10
  %conv34 = zext i32 %conv33 to i64
  %add = add nuw i64 %mul, %conv34
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %11 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom36 = zext i8 %12 to i64
  %shl = shl i64 %add, %sh_prom36
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 2
  %13 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %br_blockcount, align 8
  %shl40 = shl i64 %14, %sh_prom36
  %conv41 = trunc i64 %shl40 to i32
  %call42 = tail call ptr @xfs_buf_incore(ptr noundef %5, i64 noundef %shl, i32 noundef %conv41, i32 noundef %incore_flags) #11
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end.cleanup_crit_edge, label %if.then44

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then44:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_buf_stale(ptr noundef nonnull %call42) #11
  tail call void @xfs_buf_unlock(ptr noundef nonnull %call42) #11
  tail call void @xfs_buf_rele(ptr noundef nonnull %call42) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end.cleanup_crit_edge, %__here19, %__here
  %retval.0 = phi i32 [ -117, %__here ], [ -117, %__here19 ], [ 0, %if.then44 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_buf_incore(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_stale(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_rmtval_find_space(ptr nocapture noundef %dac) local_unnamed_addr #2 align 64 {
entry:
  %lfileoff.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dac, align 8
  %map1 = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 1
  %lblkno = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 2
  %2 = ptrtoint ptr %lblkno to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %lblkno, align 8
  %blkcnt = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 3
  %3 = ptrtoint ptr %blkcnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %blkcnt, align 4
  %rmtblkcnt = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %rmtblkcnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rmtblkcnt, align 4
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rmtblkno, align 8
  %6 = call ptr @memset(ptr %map1, i32 0, i32 32)
  %dp1.i = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %dp1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dp1.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lfileoff.i) #11
  %11 = ptrtoint ptr %lfileoff.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %lfileoff.i, align 8
  %rmtvaluelen.i = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %rmtvaluelen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmtvaluelen.i, align 8
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 61
  %14 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i = and i64 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sb_blocksize.i.i = getelementptr inbounds %struct.xfs_sb, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %sb_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sb_blocksize.i.i, align 4
  %sub.i.i = add i32 %17, -56
  %add.i.i = add i32 %13, -1
  %sub2.i.i = add i32 %add.i.i, %sub.i.i
  %div.i.i = sdiv i32 %sub2.i.i, %sub.i.i
  br label %xfs_attr3_rmt_blocks.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = sext i32 %13 to i64
  %m_blockmask.i.i = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 31
  %18 = ptrtoint ptr %m_blockmask.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m_blockmask.i.i, align 8
  %conv3.i.i = zext i32 %19 to i64
  %add4.i.i = add nsw i64 %conv3.i.i, %conv.i.i
  %sb_blocklog.i.i = getelementptr inbounds %struct.xfs_sb, ptr %10, i32 0, i32 20
  %20 = ptrtoint ptr %sb_blocklog.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sb_blocklog.i.i, align 8
  %sh_prom.i.i = zext i8 %21 to i64
  %shr.i.i = lshr i64 %add4.i.i, %sh_prom.i.i
  %conv7.i.i = trunc i64 %shr.i.i to i32
  br label %xfs_attr3_rmt_blocks.exit.i

xfs_attr3_rmt_blocks.exit.i:                      ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %div.i.i, %if.then.i.i ], [ %conv7.i.i, %if.end.i.i ]
  %trans.i = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trans.i, align 4
  %call3.i = call i32 @xfs_bmap_first_unused(ptr noundef %23, ptr noundef %8, i32 noundef %retval.0.i.i, ptr noundef nonnull %lfileoff.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end, label %xfs_attr_rmt_find_hole.exit

xfs_attr_rmt_find_hole.exit:                      ; preds = %xfs_attr3_rmt_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lfileoff.i) #11
  br label %cleanup

if.end:                                           ; preds = %xfs_attr3_rmt_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %lfileoff.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %lfileoff.i, align 8
  %conv.i = trunc i64 %25 to i32
  %26 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv.i, ptr %rmtblkno, align 8
  %27 = ptrtoint ptr %rmtblkcnt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i.i, ptr %rmtblkcnt, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lfileoff.i) #11
  %28 = ptrtoint ptr %blkcnt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i.i, ptr %blkcnt, align 4
  %29 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rmtblkno, align 8
  %31 = ptrtoint ptr %lblkno to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %lblkno, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xfs_attr_rmt_find_hole.exit
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_rmtval_set_blk(ptr noundef %dac) local_unnamed_addr #2 align 64 {
entry:
  %nmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dac, align 8
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  %map2 = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmap) #11
  %4 = ptrtoint ptr %nmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %nmap, align 4
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans, align 4
  %lblkno = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 2
  %7 = ptrtoint ptr %lblkno to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lblkno, align 8
  %conv = zext i32 %8 to i64
  %blkcnt = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 3
  %9 = ptrtoint ptr %blkcnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blkcnt, align 4
  %conv3 = sext i32 %10 to i64
  %total = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total, align 8
  %call = call i32 @xfs_bmapi_write(ptr noundef %6, ptr noundef %3, i64 noundef %conv, i64 noundef %conv3, i32 noundef 4, i32 noundef %12, ptr noundef %map2, ptr noundef nonnull %nmap) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %nmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp eq i32 %14, 1
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false, !prof !64

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 616) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %br_startblock = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %16)
  %17 = icmp ult i64 %16, -2
  br i1 %17, label %cond.end.cond.end20_crit_edge, label %cond.false19, !prof !64

cond.end.cond.end20_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 618) #11
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.end.cond.end20_crit_edge
  %br_blockcount = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %br_blockcount, align 8
  %20 = ptrtoint ptr %lblkno to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lblkno, align 8
  %22 = trunc i64 %19 to i32
  %conv23 = add i32 %21, %22
  store i32 %conv23, ptr %lblkno, align 8
  %23 = ptrtoint ptr %blkcnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %blkcnt, align 4
  %conv27 = sub i32 %24, %22
  store i32 %conv27, ptr %blkcnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end20, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmap) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_write(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_rmtval_invalidate(ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  %map = alloca %struct.xfs_bmbt_irec, align 8
  %nmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmtblkcnt = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 17
  %0 = ptrtoint ptr %rmtblkcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmtblkcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp39 = icmp sgt i32 %1, 0
  br i1 %cmp39, label %while.body.lr.ph, label %entry.cleanup20_crit_edge

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup20

while.body.lr.ph:                                 ; preds = %entry
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 16
  %2 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rmtblkno, align 8
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %blkcnt.041 = phi i32 [ %1, %while.body.lr.ph ], [ %conv18, %cleanup.while.body_crit_edge ]
  %lblkno.040 = phi i32 [ %3, %while.body.lr.ph ], [ %conv15, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map) #11
  %4 = call ptr @memset(ptr %map, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmap) #11
  %5 = ptrtoint ptr %nmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %nmap, align 4
  %6 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dp, align 8
  %conv = zext i32 %lblkno.040 to i64
  %conv137 = zext i32 %blkcnt.041 to i64
  %call = call i32 @xfs_bmapi_read(ptr noundef %7, i64 noundef %conv, i64 noundef %conv137, ptr noundef nonnull %map, ptr noundef nonnull %nmap, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %while.body.cleanup.thread_crit_edge

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end:                                           ; preds = %while.body
  %8 = ptrtoint ptr %nmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp2.not = icmp eq i32 %9, 1
  br i1 %cmp2.not, label %if.end8, label %__here, !prof !64

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dp, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !73
  call void @xfs_corruption_error(ptr noundef nonnull @.str.14, i32 noundef 1, ptr noundef %13, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 656, ptr noundef blockaddress(@xfs_attr_rmtval_invalidate, %__here)) #11
  br label %cleanup.thread

if.end8:                                          ; preds = %if.end
  %14 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dp, align 8
  %call10 = call i32 @xfs_attr_rmtval_stale(ptr noundef %15, ptr noundef nonnull %map, i32 noundef 1073741824)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end8.cleanup.thread_crit_edge

if.end8.cleanup.thread_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end8.cleanup.thread_crit_edge, %__here, %while.body.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ -117, %__here ], [ %call, %while.body.cleanup.thread_crit_edge ], [ %call10, %if.end8.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmap) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map) #11
  br label %cleanup20

cleanup:                                          ; preds = %if.end8
  %16 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %br_blockcount, align 8
  %18 = trunc i64 %17 to i32
  %conv15 = add i32 %lblkno.040, %18
  %conv18 = sub i32 %blkcnt.041, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmap) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map) #11
  %cmp = icmp sgt i32 %conv18, 0
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup20_crit_edge

cleanup.cleanup20_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup20

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup20:                                        ; preds = %cleanup.cleanup20_crit_edge, %cleanup.thread, %entry.cleanup20_crit_edge
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ 0, %entry.cleanup20_crit_edge ], [ 0, %cleanup.cleanup20_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_rmtval_remove(ptr nocapture noundef %dac) local_unnamed_addr #2 align 64 {
entry:
  %done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dac, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done) #11
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %done, align 4, !annotation !60
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans, align 4
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dp, align 8
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rmtblkno, align 8
  %conv = zext i32 %8 to i64
  %rmtblkcnt = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %rmtblkcnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rmtblkcnt, align 4
  %conv1 = sext i32 %10 to i64
  %call = call i32 @xfs_bunmapi(ptr noundef %4, ptr noundef %6, i64 noundef %conv, i64 noundef %conv1, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %done) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not = icmp eq i32 %12, 0
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 5
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %or = or i32 %14, 1
  store i32 %or, ptr %flags, align 4
  %dela_state = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 6
  %15 = ptrtoint ptr %dela_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dela_state, align 8
  %17 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dp, align 8
  call fastcc void @trace_xfs_attr_rmtval_remove_return(i32 noundef %16, ptr noundef %18)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rmtblkno, align 8
  %20 = ptrtoint ptr %rmtblkcnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %rmtblkcnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -11, %if.then3 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bunmapi(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_rmtval_remove_return(i32 noundef %das, ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_rmtval_remove_return, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_rmtval_remove_return, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !65

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !64

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !50) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !74
  %call42 = tail call i32 @__traceiter_xfs_attr_rmtval_remove_return(ptr noundef null, i32 noundef %das, ptr noundef %ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  %13 = tail call i32 @llvm.read_register.i32(metadata !50) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !50) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !64

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !50) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_rmtval_remove_return, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_rmtval_remove_return, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_rmtval_remove_return.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_attr_rmtval_remove_return.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 4137, ptr noundef nonnull @.str.17) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !69
  %31 = tail call i32 @llvm.read_register.i32(metadata !50) #11
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
define internal fastcc i32 @__xfs_attr3_rmt_read_verify(ptr noundef %bp, i1 noundef zeroext %check_crc, ptr nocapture noundef writeonly %failaddr) #2 align 64 {
entry:
  %zero.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_attr_geo, align 32
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %8 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_addr, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %10 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_maps.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %11, align 8
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %14 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_length, align 8
  %shl = shl i32 %15, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %5)
  %cmp.not = icmp slt i32 %shl, %5
  br i1 %cmp.not, label %cond.false, label %if.end.cond.end_crit_edge, !prof !61

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 135) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %cmp448 = icmp sgt i32 %shl, 0
  br i1 %cmp448, label %while.body.lr.ph, label %cond.end.while.end_crit_edge

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %cond.end
  %sub.i.i = add i32 %5, -16
  %conv = sext i32 %5 to i64
  %sub14 = add nsw i64 %conv, 511
  %shr = lshr i64 %sub14, 9
  br label %while.body

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %while.body.lr.ph
  %bno.052 = phi i64 [ %13, %while.body.lr.ph ], [ %add15, %if.end13.while.body_crit_edge ]
  %len.051 = phi i32 [ %shl, %while.body.lr.ph ], [ %sub, %if.end13.while.body_crit_edge ]
  %ptr.049 = phi ptr [ %9, %while.body.lr.ph ], [ %add.ptr, %if.end13.while.body_crit_edge ]
  br i1 %check_crc, label %land.lhs.true, label %while.body.if.end9_crit_edge

while.body.if.end9_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero.i.i) #11
  %16 = ptrtoint ptr %zero.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %zero.i.i, align 4
  %call.i.i = call i32 @crc32c(i32 noundef -1, ptr noundef %ptr.049, i32 noundef 12) #11
  %call1.i.i = call i32 @crc32c(i32 noundef %call.i.i, ptr noundef nonnull %zero.i.i, i32 noundef 4) #11
  %arrayidx.i.i = getelementptr i8, ptr %ptr.049, i32 16
  %call3.i.i = call i32 @crc32c(i32 noundef %call1.i.i, ptr noundef %arrayidx.i.i, i32 noundef %sub.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero.i.i) #11
  %add.ptr.i = getelementptr i8, ptr %ptr.049, i32 12
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %19 = xor i32 %call3.i.i, -1
  %20 = call i32 @llvm.bswap.i32(i32 %19) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.i.not = icmp eq i32 %18, %20
  br i1 %cmp.i.not, label %land.lhs.true.if.end9_crit_edge, label %__here

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

__here:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !76
  br label %cleanup.sink.split

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %while.body.if.end9_crit_edge
  %call10 = call fastcc ptr @xfs_attr3_rmt_verify(ptr noundef %1, ptr noundef %bp, ptr noundef %ptr.049, i32 noundef %5, i64 noundef %bno.052)
  %21 = ptrtoint ptr %failaddr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call10, ptr %failaddr, align 4
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %sub = sub i32 %len.051, %5
  %add.ptr = getelementptr i8, ptr %ptr.049, i32 %5
  %add15 = add i64 %bno.052, %shr
  %cmp4 = icmp sgt i32 %sub, 0
  br i1 %cmp4, label %if.end13.while.body_crit_edge, label %if.end13.while.end_crit_edge

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %cond.end.while.end_crit_edge
  %len.0.lcssa = phi i32 [ %shl, %cond.end.while.end_crit_edge ], [ %sub, %if.end13.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.lcssa)
  %cmp16.not = icmp eq i32 %len.0.lcssa, 0
  br i1 %cmp16.not, label %while.end.cleanup_crit_edge, label %__here19

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

__here19:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !77
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %__here19, %__here
  %.sink = phi ptr [ blockaddress(@__xfs_attr3_rmt_read_verify, %__here19), %__here19 ], [ blockaddress(@__xfs_attr3_rmt_read_verify, %__here), %__here ]
  %retval.0.ph = phi i32 [ -117, %__here19 ], [ -74, %__here ]
  %22 = ptrtoint ptr %failaddr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %.sink, ptr %failaddr, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -117, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_verifier_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_attr3_rmt_verify(ptr nocapture noundef readonly %mp, ptr noundef %bp, ptr nocapture noundef readonly %ptr, i32 noundef %fsbsize, i64 noundef %bno) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptr, align 8
  %call = tail call zeroext i1 @xfs_verify_magic(ptr noundef %bp, i32 noundef %1) #11
  br i1 %call, label %if.end, label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !78
  br label %cleanup

if.end:                                           ; preds = %entry
  %rm_uuid = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, ptr %ptr, i32 0, i32 4
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 54
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %rm_uuid, ptr noundef dereferenceable(16) %sb_meta_uuid, i32 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end5, label %__here3

__here3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %rm_blkno = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, ptr %ptr, i32 0, i32 6
  %2 = ptrtoint ptr %rm_blkno to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rm_blkno, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %bno)
  %cmp.not = icmp eq i64 %3, %bno
  br i1 %cmp.not, label %if.end9, label %__here7

__here7:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %rm_bytes = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, ptr %ptr, i32 0, i32 2
  %4 = ptrtoint ptr %rm_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rm_bytes, align 8
  %sub = add i32 %fsbsize, -56
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub)
  %cmp10 = icmp ugt i32 %5, %sub
  br i1 %cmp10, label %__here12, label %if.end14

__here12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !81
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %rm_offset = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, ptr %ptr, i32 0, i32 1
  %6 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rm_offset, align 4
  %add = add i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp16 = icmp ugt i32 %add, 65536
  br i1 %cmp16, label %__here18, label %if.end20

__here18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !82
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %rm_owner = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, ptr %ptr, i32 0, i32 5
  %8 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp21 = icmp eq i64 %9, 0
  br i1 %cmp21, label %__here23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

__here23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !83
  br label %cleanup

cleanup:                                          ; preds = %__here23, %if.end20.cleanup_crit_edge, %__here18, %__here12, %__here7, %__here3, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_attr3_rmt_verify, %__here7), %__here7 ], [ blockaddress(@xfs_attr3_rmt_verify, %__here12), %__here12 ], [ blockaddress(@xfs_attr3_rmt_verify, %__here18), %__here18 ], [ blockaddress(@xfs_attr3_rmt_verify, %__here23), %__here23 ], [ blockaddress(@xfs_attr3_rmt_verify, %__here3), %__here3 ], [ blockaddress(@xfs_attr3_rmt_verify, %__here), %__here ], [ null, %if.end20.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_magic(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_rmtval_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_read_map(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_attr3_rmt_hdr_ok(ptr nocapture noundef readonly %ptr, i64 noundef %ino, i32 noundef %offset, i32 noundef %size, i64 noundef %bno) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rm_blkno = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, ptr %ptr, i32 0, i32 6
  %0 = ptrtoint ptr %rm_blkno to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rm_blkno, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %bno)
  %cmp.not = icmp eq i64 %1, %bno
  br i1 %cmp.not, label %if.end, label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  br label %cleanup

if.end:                                           ; preds = %entry
  %rm_offset = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rm_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %offset)
  %cmp1.not = icmp eq i32 %3, %offset
  br i1 %cmp1.not, label %if.end5, label %__here3

__here3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %rm_bytes = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, ptr %ptr, i32 0, i32 2
  %4 = ptrtoint ptr %rm_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rm_bytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %size)
  %cmp6.not = icmp eq i32 %5, %size
  br i1 %cmp6.not, label %if.end10, label %__here8

__here8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !86
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %rm_owner = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, ptr %ptr, i32 0, i32 5
  %6 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %ino)
  %cmp11.not = icmp eq i64 %7, %ino
  br i1 %cmp11.not, label %if.end10.cleanup_crit_edge, label %__here13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

__here13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !87
  br label %cleanup

cleanup:                                          ; preds = %__here13, %if.end10.cleanup_crit_edge, %__here8, %__here3, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_attr3_rmt_hdr_ok, %__here), %__here ], [ blockaddress(@xfs_attr3_rmt_hdr_ok, %__here3), %__here3 ], [ blockaddress(@xfs_attr3_rmt_hdr_ok, %__here8), %__here8 ], [ blockaddress(@xfs_attr3_rmt_hdr_ok, %__here13), %__here13 ], [ null, %if.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_get_map(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_attr3_rmt_hdr_set(ptr nocapture noundef readonly %mp, ptr nocapture noundef writeonly %ptr, i64 noundef %ino, i32 noundef %offset, i32 noundef %size, i64 noundef %bno) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1480675917, ptr %ptr, align 8
  %rm_offset = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, ptr %ptr, i32 0, i32 1
  %3 = ptrtoint ptr %rm_offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %offset, ptr %rm_offset, align 4
  %rm_bytes = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, ptr %ptr, i32 0, i32 2
  %4 = ptrtoint ptr %rm_bytes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %rm_bytes, align 8
  %rm_uuid = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, ptr %ptr, i32 0, i32 4
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 54
  %5 = call ptr @memcpy(ptr %rm_uuid, ptr %sb_meta_uuid, i32 16)
  %rm_owner = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, ptr %ptr, i32 0, i32 5
  %6 = ptrtoint ptr %rm_owner to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %ino, ptr %rm_owner, align 8
  %rm_blkno = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, ptr %ptr, i32 0, i32 6
  %7 = ptrtoint ptr %rm_blkno to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %bno, ptr %rm_blkno, align 8
  %rm_lsn = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, ptr %ptr, i32 0, i32 7
  %8 = ptrtoint ptr %rm_lsn to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %rm_lsn, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 56, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_rmtval_remove_return(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly mustprogress nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !43, !45, !47, !49}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 231, i32 10}
!2 = !{ptr @xfs_attr3_rmt_buf_ops, !3, !"xfs_attr3_rmt_buf_ops", i1 false, i1 false}
!3 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 230, i32 26}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 398, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 399, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 409, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 415, i32 4}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 436, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 500, i32 3}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 508, i32 3}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 509, i32 3}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 547, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 549, i32 6}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 550, i32 6}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 617, i32 2}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 656, i32 7}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 135, i32 2}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_trace.h", i32 2066, i32 1}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!37 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 303, i32 1}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 356, i32 4}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/libxfs/xfs_attr_remote.c", i32 357, i32 4}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../fs/xfs/xfs_trace.h", i32 4137, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 2166326921}
!63 = !{i64 2166327258}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i64 2148260370, i64 2148260375, i64 2148260388, i64 2148260432, i64 2148260466, i64 2148260487}
!66 = !{i64 2161695932}
!67 = !{i64 2161696141}
!68 = !{i64 2149962463}
!69 = !{i64 2149963499}
!70 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!71 = !{i64 2166336603}
!72 = !{i64 2166337090}
!73 = !{i64 2166338999}
!74 = !{i64 2166284360}
!75 = !{i64 2166284595}
!76 = !{i64 2166326299}
!77 = !{i64 2166326481}
!78 = !{i64 2166325110}
!79 = !{i64 2166325201}
!80 = !{i64 2166325349}
!81 = !{i64 2166325497}
!82 = !{i64 2166325713}
!83 = !{i64 2166325804}
!84 = !{i64 2166324562}
!85 = !{i64 2166324711}
!86 = !{i64 2166324859}
!87 = !{i64 2166325007}
