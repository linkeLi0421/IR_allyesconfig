; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_inode_item.c_pt.bc'
source_filename = "../fs/xfs/xfs_inode_item.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_item_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.xfs_inode_log_item = type { %struct.xfs_log_item, ptr, i16, %struct.spinlock, i32, i32, i32, i64, i64 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
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
%struct.xfs_ail = type { ptr, ptr, %struct.list_head, i64, i64, %struct.list_head, %struct.spinlock, i64, i32, %struct.list_head, %struct.wait_queue_head }
%struct.xfs_log_iovec = type { ptr, i32, i32 }
%struct.xfs_inode_log_format_32 = type <{ i16, i16, i32, i16, i16, i64, %union.anon.93, i64, i32, i32 }>
%union.anon.93 = type { i32, [12 x i8] }
%struct.xfs_inode_log_format = type { i16, i16, i32, i16, i16, i32, i64, %union.anon.92, i64, i32, i32 }
%union.anon.92 = type { i32, [12 x i8] }
%struct.xfs_log_vec = type { ptr, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.xfs_log_dinode = type { i16, i16, i8, i8, [2 x i8], i32, i32, i32, i16, i16, [6 x i8], i16, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, i16, i16, i32, i32, i32, i64, i64, i64, i32, [12 x i8], i64, i64, %struct.uuid_t }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.xfs_dinode = type { i16, i16, i8, i8, i16, i32, i32, i32, i16, i16, [6 x i8], i16, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, i16, i16, i32, i32, i32, i64, i64, i64, i32, [12 x i8], i64, i64, %struct.uuid_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip->i_itemp == NULL\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/xfs/xfs_inode_item.c\00", [40 x i8] zeroinitializer }, align 32
@xfs_ili_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@xfs_inode_item_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&iip->ili_lock\00", [17 x i8] zeroinitializer }, align 32
@xfs_inode_item_ops = internal constant { %struct.xfs_item_ops, [48 x i8] } { %struct.xfs_item_ops { i32 0, ptr @xfs_inode_item_size, ptr @xfs_inode_item_format, ptr @xfs_inode_item_pin, ptr @xfs_inode_item_unpin, ptr @xfs_inode_item_push, ptr @xfs_inode_item_committing, ptr @xfs_inode_item_release, ptr @xfs_inode_item_committed, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iip->ili_item.li_buf == NULL\00", [35 x i8] zeroinitializer }, align 32
@__func__.xfs_inode_item_format_convert = private unnamed_addr constant [30 x i8] c"xfs_inode_item_format_convert\00", align 1
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"vec - lv->lv_iovecp < lv->lv_niovecs\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/xfs/xfs_log.h\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"IS_ALIGNED((unsigned long)vec->i_addr, sizeof(uint64_t))\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"xfs_iext_count(&ip->i_df) > 0\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"data_bytes <= ip->i_df.if_bytes\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ip->i_df.if_broot != NULL\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"!(iip->ili_fields & XFS_ILOG_DBROOT)\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ip->i_df.if_u1.if_data != NULL\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip->i_disk_size > 0\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"xfs_iext_count(ip->i_afp) == ip->i_afp->if_nextents\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ip->i_afp->if_broot != NULL\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ip->i_afp->if_u1.if_data != NULL\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xfs_isilocked(ip, XFS_ILOCK_EXCL)\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lip->li_buf\00", [20 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_inode_pin = external dso_local global %struct.tracepoint, align 4
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_inode_pin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"lip->li_buf || xfs_iflags_test(ip, XFS_ISTALE)\00", [49 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"atomic_read(&ip->i_pincount) > 0\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_inode_unpin = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inode_unpin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iip->ili_item.li_buf\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip->i_itemp != NULL\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iip->ili_item.li_buf == bp\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 674, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"xfs_ili_cache\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 24, i32 20 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 679, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"xfs_inode_item_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 652, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 693, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 81, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 31, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"../fs/xfs/xfs_log.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 40, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 169, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 175, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 189, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 196, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 212, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 213, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 254, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 273, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 296, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 499, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 500, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 931, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 108, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 527, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 528, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 546, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 597, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [27 x i8] c"../fs/xfs/xfs_inode_item.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 754, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @.str, ptr @.str.1, ptr @xfs_ili_cache, ptr @xfs_inode_item_init.__key, ptr @.str.2, ptr @xfs_inode_item_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_ili_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_inode_item_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_inode_item_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_inode_item_init(ptr noundef %ip, ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_itemp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 9
  %0 = ptrtoint ptr %i_itemp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_itemp, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !74

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 674) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %2 = load ptr, ptr @xfs_ili_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 36288) #9
  %3 = ptrtoint ptr %i_itemp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %i_itemp, align 8
  %ili_inode = getelementptr inbounds %struct.xfs_inode_log_item, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %ili_inode to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ip, ptr %ili_inode, align 8
  %ili_lock = getelementptr inbounds %struct.xfs_inode_log_item, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %ili_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @xfs_inode_item_init.__key, i16 noundef signext 3) #9
  tail call void @xfs_log_item_init(ptr noundef %mp, ptr noundef %call.i, i32 noundef 4667, ptr noundef nonnull @xfs_inode_item_ops) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_item_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_inode_item_destroy(ptr nocapture noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_itemp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 9
  %0 = ptrtoint ptr %i_itemp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_itemp, align 8
  %li_buf = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %li_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %li_buf, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !74

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 693) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %4 = ptrtoint ptr %i_itemp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %i_itemp, align 8
  %li_lv_shadow = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %li_lv_shadow to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %li_lv_shadow, align 4
  tail call void @kvfree(ptr noundef %6) #9
  %7 = load ptr, ptr @xfs_ili_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buf_inode_iodone(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  %flushed_inodes = alloca %struct.list_head, align 4
  %ail_updates = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flushed_inodes) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %flushed_inodes, i32 0, i32 1
  %1 = ptrtoint ptr %flushed_inodes to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %flushed_inodes, ptr %flushed_inodes, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %flushed_inodes, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ail_updates) #9
  %3 = getelementptr inbounds %struct.list_head, ptr %ail_updates, i32 0, i32 1
  %4 = ptrtoint ptr %ail_updates to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ail_updates, ptr %ail_updates, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ail_updates, ptr %3, align 4
  %b_li_list = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 20
  %6 = ptrtoint ptr %b_li_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_li_list, align 8
  %cmp.not79 = icmp eq ptr %7, %b_li_list
  br i1 %cmp.not79, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in80 = phi ptr [ %.pn84, %cleanup.for.body_crit_edge ], [ %7, %entry.for.body_crit_edge ]
  %8 = ptrtoint ptr %.pn.in80 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn84 = load ptr, ptr %.pn.in80, align 4
  %ili_inode = getelementptr i8, ptr %.pn.in80, i32 36
  %9 = ptrtoint ptr %ili_inode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ili_inode, align 8
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %10, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #9
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i = and i32 %12, 2
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %ili_inode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ili_inode, align 8
  call void @xfs_iflush_abort(ptr noundef %14)
  br label %cleanup

if.end:                                           ; preds = %for.body
  %ili_last_fields = getelementptr i8, ptr %.pn.in80, i32 88
  %15 = ptrtoint ptr %ili_last_fields to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ili_last_fields, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.not = icmp eq i32 %16, 0
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %ili_flush_lsn = getelementptr i8, ptr %.pn.in80, i32 100
  %17 = ptrtoint ptr %ili_flush_lsn to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ili_flush_lsn, align 8
  %li_lsn = getelementptr i8, ptr %.pn.in80, i32 -28
  %19 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %li_lsn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %20)
  %cmp15 = icmp eq i64 %18, %20
  br i1 %cmp15, label %if.end14.if.then18_crit_edge, label %lor.lhs.false

if.end14.if.then18_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end14
  %li_flags = getelementptr i8, ptr %.pn.in80, i32 -8
  %21 = ptrtoint ptr %li_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %li_flags, align 4
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool17.not = icmp eq i32 %23, 0
  br i1 %tobool17.not, label %if.else, label %lor.lhs.false.if.then18_crit_edge

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.end14.if.then18_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in80) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then18.__list_del_entry.exit.i_crit_edge

if.then18.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in80, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %.pn.in80 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.pn.in80, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then18.__list_del_entry.exit.i_crit_edge
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in80, ptr noundef %31, ptr noundef nonnull %ail_updates) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.cleanup_crit_edge

__list_del_entry.exit.i.cleanup_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.pn.in80, ptr %3, align 4
  %33 = ptrtoint ptr %.pn.in80 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ail_updates, ptr %.pn.in80, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in80, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %.pn.in80, ptr %31, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %call.i.i51 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in80) #9
  br i1 %call.i.i51, label %if.end.i.i54, label %if.else.__list_del_entry.exit.i57_crit_edge

if.else.__list_del_entry.exit.i57_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i57

if.end.i.i54:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i52 = getelementptr inbounds %struct.list_head, ptr %.pn.in80, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i52, align 4
  %38 = ptrtoint ptr %.pn.in80 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %.pn.in80, align 4
  %prev1.i.i.i53 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i53, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %__list_del_entry.exit.i57

__list_del_entry.exit.i57:                        ; preds = %if.end.i.i54, %if.else.__list_del_entry.exit.i57_crit_edge
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %0, align 4
  %call.i.i.i56 = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in80, ptr noundef %43, ptr noundef nonnull %flushed_inodes) #9
  br i1 %call.i.i.i56, label %if.end.i.i.i59, label %__list_del_entry.exit.i57.cleanup_crit_edge

__list_del_entry.exit.i57.cleanup_crit_edge:      ; preds = %__list_del_entry.exit.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i.i59:                                   ; preds = %__list_del_entry.exit.i57
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %.pn.in80, ptr %0, align 4
  %45 = ptrtoint ptr %.pn.in80 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %flushed_inodes, ptr %.pn.in80, align 4
  %prev3.i.i.i58 = getelementptr inbounds %struct.list_head, ptr %.pn.in80, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i.i58, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %.pn.in80, ptr %43, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i59, %__list_del_entry.exit.i57.cleanup_crit_edge, %if.end.i.i.i, %__list_del_entry.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %cmp.not = icmp eq ptr %.pn84, %b_li_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %48 = ptrtoint ptr %ail_updates to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %ail_updates, align 4
  %cmp.i.not = icmp eq ptr %49, %ail_updates
  br i1 %cmp.i.not, label %for.end.if.end30_crit_edge, label %if.then29

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then29:                                        ; preds = %for.end
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %50 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %b_mount, align 4
  %m_ail = getelementptr inbounds %struct.xfs_mount, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %m_ail to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %m_ail, align 4
  %ail_lock.i = getelementptr inbounds %struct.xfs_ail, ptr %53, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %ail_lock.i) #9
  %54 = ptrtoint ptr %ail_updates to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn21.i = load ptr, ptr %ail_updates, align 4
  %cmp.not23.i = icmp eq ptr %.pn21.i, %ail_updates
  br i1 %cmp.not23.i, label %if.then29.xfs_iflush_ail_updates.exit_crit_edge, label %if.then29.for.body.i_crit_edge

if.then29.for.body.i_crit_edge:                   ; preds = %if.then29
  br label %for.body.i

if.then29.xfs_iflush_ail_updates.exit_crit_edge:  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_iflush_ail_updates.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then29.for.body.i_crit_edge
  %.pn25.i = phi ptr [ %.pn.i, %cleanup.i.for.body.i_crit_edge ], [ %.pn21.i, %if.then29.for.body.i_crit_edge ]
  %tail_lsn.024.i = phi i64 [ %tail_lsn.2.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %if.then29.for.body.i_crit_edge ]
  %li_flags.i = getelementptr i8, ptr %.pn25.i, i32 -8
  call void @_clear_bit(i32 noundef 2, ptr noundef %li_flags.i) #9
  %ili_flush_lsn.i = getelementptr i8, ptr %.pn25.i, i32 100
  %55 = ptrtoint ptr %ili_flush_lsn.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %ili_flush_lsn.i, align 8
  %li_lsn.i = getelementptr i8, ptr %.pn25.i, i32 -28
  %57 = ptrtoint ptr %li_lsn.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %li_lsn.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %58)
  %cmp1.not.i = icmp eq i64 %56, %58
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %lip.026.i = getelementptr i8, ptr %.pn25.i, i32 -44
  %call2.i = call i64 @xfs_ail_delete_one(ptr noundef %53, ptr noundef %lip.026.i) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %tail_lsn.024.i)
  %tobool.not.i = icmp eq i64 %tail_lsn.024.i, 0
  %spec.select.i = select i1 %tobool.not.i, i64 %call2.i, i64 %tail_lsn.024.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %tail_lsn.2.i = phi i64 [ %tail_lsn.024.i, %for.body.i.cleanup.i_crit_edge ], [ %spec.select.i, %if.end.i ]
  %59 = ptrtoint ptr %.pn25.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn.i = load ptr, ptr %.pn25.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ail_updates
  br i1 %cmp.not.i, label %cleanup.i.xfs_iflush_ail_updates.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cleanup.i.xfs_iflush_ail_updates.exit_crit_edge:  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_iflush_ail_updates.exit

xfs_iflush_ail_updates.exit:                      ; preds = %cleanup.i.xfs_iflush_ail_updates.exit_crit_edge, %if.then29.xfs_iflush_ail_updates.exit_crit_edge
  %tail_lsn.0.lcssa.i = phi i64 [ 0, %if.then29.xfs_iflush_ail_updates.exit_crit_edge ], [ %tail_lsn.2.i, %cleanup.i.xfs_iflush_ail_updates.exit_crit_edge ]
  call void @xfs_ail_update_finish(ptr noundef %53, i64 noundef %tail_lsn.0.lcssa.i) #9
  %60 = ptrtoint ptr %ail_updates to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %ail_updates, align 4
  %cmp.i.not.i = icmp eq ptr %61, %ail_updates
  br i1 %cmp.i.not.i, label %xfs_iflush_ail_updates.exit.if.end30_crit_edge, label %if.then.i

xfs_iflush_ail_updates.exit.if.end30_crit_edge:   ; preds = %xfs_iflush_ail_updates.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then.i:                                        ; preds = %xfs_iflush_ail_updates.exit
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %0, align 4
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %3, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %66 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev3.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %61, ptr %63, align 4
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %flushed_inodes, ptr %65, align 4
  store ptr %65, ptr %0, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then.i, %xfs_iflush_ail_updates.exit.if.end30_crit_edge, %for.end.if.end30_crit_edge
  %69 = ptrtoint ptr %flushed_inodes to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %flushed_inodes, align 4
  %cmp.not43.i = icmp eq ptr %70, %flushed_inodes
  br i1 %cmp.not43.i, label %if.end30.xfs_iflush_finish.exit_crit_edge, label %if.end30.for.body.i62_crit_edge

if.end30.for.body.i62_crit_edge:                  ; preds = %if.end30
  br label %for.body.i62

if.end30.xfs_iflush_finish.exit_crit_edge:        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_iflush_finish.exit

for.body.i62:                                     ; preds = %if.end16.i.for.body.i62_crit_edge, %if.end30.for.body.i62_crit_edge
  %.pn.in44.i = phi ptr [ %.pn45.i, %if.end16.i.for.body.i62_crit_edge ], [ %70, %if.end30.for.body.i62_crit_edge ]
  %71 = ptrtoint ptr %.pn.in44.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn45.i = load ptr, ptr %.pn.in44.i, align 4
  %ili_lock.i = getelementptr i8, ptr %.pn.in44.i, i32 44
  call void @_raw_spin_lock(ptr noundef %ili_lock.i) #9
  %li_buf.i = getelementptr i8, ptr %.pn.in44.i, i32 -4
  %72 = ptrtoint ptr %li_buf.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %li_buf.i, align 8
  %cmp6.i = icmp eq ptr %73, %bp
  br i1 %cmp6.i, label %for.body.i62.cond.end.i_crit_edge, label %cond.false.i, !prof !74

for.body.i62.cond.end.i_crit_edge:                ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 754) #9
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %for.body.i62.cond.end.i_crit_edge
  %ili_fields.i = getelementptr i8, ptr %.pn.in44.i, i32 92
  %74 = ptrtoint ptr %ili_fields.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ili_fields.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool9.not.i = icmp eq i32 %75, 0
  br i1 %tobool9.not.i, label %if.then.i64, label %if.end16.critedge.i

if.then.i64:                                      ; preds = %cond.end.i
  %76 = ptrtoint ptr %li_buf.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %li_buf.i, align 8
  %call.i.i.i63 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in44.i) #9
  br i1 %call.i.i.i63, label %if.end.i.i.i65, label %if.then.i64.list_del_init.exit.i_crit_edge

if.then.i64.list_del_init.exit.i_crit_edge:       ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i65:                                   ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in44.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i.i, align 4
  %79 = ptrtoint ptr %.pn.in44.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %.pn.in44.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev1.i.i.i.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %80, ptr %78, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i65, %if.then.i64.list_del_init.exit.i_crit_edge
  %83 = ptrtoint ptr %.pn.in44.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %.pn.in44.i, ptr %.pn.in44.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in44.i, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %.pn.in44.i, ptr %prev.i3.i.i, align 4
  %ili_last_fields.c.i = getelementptr i8, ptr %.pn.in44.i, i32 88
  %85 = ptrtoint ptr %ili_last_fields.c.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %ili_last_fields.c.i, align 4
  %ili_flush_lsn.c.i = getelementptr i8, ptr %.pn.in44.i, i32 100
  %86 = ptrtoint ptr %ili_flush_lsn.c.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 0, ptr %ili_flush_lsn.c.i, align 8
  call void @_raw_spin_unlock(ptr noundef %ili_lock.i) #9
  %ili_inode.c.i = getelementptr i8, ptr %.pn.in44.i, i32 36
  %87 = ptrtoint ptr %ili_inode.c.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ili_inode.c.i, align 8
  %i_flags_lock.i.i = getelementptr inbounds %struct.xfs_inode, ptr %88, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i) #9
  %i_flags.i.i66 = getelementptr inbounds %struct.xfs_inode, ptr %88, i32 0, i32 16
  %89 = ptrtoint ptr %i_flags.i.i66 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %i_flags.i.i66, align 8
  %and.i.i67 = and i32 %90, -129
  store i32 %and.i.i67, ptr %i_flags.i.i66, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i) #9
  call void @xfs_buf_rele(ptr noundef %bp) #9
  br label %if.end16.i

if.end16.critedge.i:                              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %ili_last_fields.c36.i = getelementptr i8, ptr %.pn.in44.i, i32 88
  %91 = ptrtoint ptr %ili_last_fields.c36.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %ili_last_fields.c36.i, align 4
  %ili_flush_lsn.c37.i = getelementptr i8, ptr %.pn.in44.i, i32 100
  %92 = ptrtoint ptr %ili_flush_lsn.c37.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 0, ptr %ili_flush_lsn.c37.i, align 8
  call void @_raw_spin_unlock(ptr noundef %ili_lock.i) #9
  %ili_inode.c38.i = getelementptr i8, ptr %.pn.in44.i, i32 36
  %93 = ptrtoint ptr %ili_inode.c38.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ili_inode.c38.i, align 8
  %i_flags_lock.i39.i = getelementptr inbounds %struct.xfs_inode, ptr %94, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i39.i) #9
  %i_flags.i40.i = getelementptr inbounds %struct.xfs_inode, ptr %94, i32 0, i32 16
  %95 = ptrtoint ptr %i_flags.i40.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %i_flags.i40.i, align 8
  %and.i41.i = and i32 %96, -129
  store i32 %and.i41.i, ptr %i_flags.i40.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i39.i) #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end16.critedge.i, %list_del_init.exit.i
  %cmp.not.i68 = icmp eq ptr %.pn45.i, %flushed_inodes
  br i1 %cmp.not.i68, label %if.end16.i.xfs_iflush_finish.exit_crit_edge, label %if.end16.i.for.body.i62_crit_edge

if.end16.i.for.body.i62_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i62

if.end16.i.xfs_iflush_finish.exit_crit_edge:      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_iflush_finish.exit

xfs_iflush_finish.exit:                           ; preds = %if.end16.i.xfs_iflush_finish.exit_crit_edge, %if.end30.xfs_iflush_finish.exit_crit_edge
  %97 = ptrtoint ptr %flushed_inodes to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile ptr, ptr %flushed_inodes, align 4
  %cmp.i69.not = icmp eq ptr %98, %flushed_inodes
  br i1 %cmp.i69.not, label %xfs_iflush_finish.exit.if.end35_crit_edge, label %if.then33

xfs_iflush_finish.exit.if.end35_crit_edge:        ; preds = %xfs_iflush_finish.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then33:                                        ; preds = %xfs_iflush_finish.exit
  %99 = ptrtoint ptr %flushed_inodes to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %flushed_inodes, align 4
  %cmp.i.not.i71 = icmp eq ptr %100, %flushed_inodes
  br i1 %cmp.i.not.i71, label %if.then33.if.end35_crit_edge, label %if.then.i75

if.then33.if.end35_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then.i75:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i72 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 20, i32 1
  %101 = ptrtoint ptr %prev.i72 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %prev.i72, align 4
  %103 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %0, align 4
  %prev3.i.i74 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %105 = ptrtoint ptr %prev3.i.i74 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %102, ptr %prev3.i.i74, align 4
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %100, ptr %102, align 4
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %b_li_list, ptr %104, align 4
  store ptr %104, ptr %prev.i72, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then.i75, %if.then33.if.end35_crit_edge, %xfs_iflush_finish.exit.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ail_updates) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flushed_inodes) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_iflush_abort(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_itemp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 9
  %0 = ptrtoint ptr %i_itemp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_itemp, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %li_flags) #9
  tail call void @xfs_trans_ail_delete(ptr noundef nonnull %1, i32 noundef 0) #9
  %ili_lock = getelementptr inbounds %struct.xfs_inode_log_item, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %ili_lock) #9
  %ili_last_fields = getelementptr inbounds %struct.xfs_inode_log_item, ptr %1, i32 0, i32 4
  %li_buf = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 7
  %2 = call ptr @memset(ptr %ili_last_fields, i32 0, i32 20)
  %3 = ptrtoint ptr %li_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %li_buf, align 8
  store ptr null, ptr %li_buf, align 8
  %li_bio_list = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %li_bio_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %li_bio_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %li_bio_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %li_bio_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %li_bio_list, ptr %li_bio_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %li_bio_list, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ili_lock) #9
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  %bp.0 = phi ptr [ %4, %list_del_init.exit ], [ null, %entry.if.end_crit_edge ]
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #9
  %i_flags.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %13 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_flags.i, align 8
  %and.i = and i32 %14, -129
  store i32 %and.i, ptr %i_flags.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #9
  %tobool7.not = icmp eq ptr %bp.0, null
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xfs_buf_rele(ptr noundef nonnull %bp.0) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buf_inode_io_fail(ptr noundef readonly %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_li_list = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 20
  %0 = ptrtoint ptr %b_li_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn10 = load ptr, ptr %b_li_list, align 4
  %cmp.not11 = icmp eq ptr %.pn10, %b_li_list
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn12 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn10, %entry.for.body_crit_edge ]
  %li_flags = getelementptr i8, ptr %.pn12, i32 -8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %li_flags) #9
  %1 = ptrtoint ptr %.pn12 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn12, align 4
  %cmp.not = icmp eq ptr %.pn, %b_li_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ail_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_inode_item_format_convert(ptr nocapture noundef readonly %buf, ptr nocapture noundef writeonly %in_f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_len = getelementptr inbounds %struct.xfs_log_iovec, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %i_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %1)
  %cmp.not = icmp eq i32 %1, 52
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void @xfs_error_report(ptr noundef nonnull @__func__.xfs_inode_item_format_convert, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 877, ptr noundef %2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %4, align 1
  %7 = ptrtoint ptr %in_f to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %in_f, align 8
  %ilf_size = getelementptr inbounds %struct.xfs_inode_log_format_32, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %ilf_size to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %ilf_size, align 1
  %ilf_size2 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f, i32 0, i32 1
  %10 = ptrtoint ptr %ilf_size2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %ilf_size2, align 2
  %ilf_fields = getelementptr inbounds %struct.xfs_inode_log_format_32, ptr %4, i32 0, i32 2
  %11 = ptrtoint ptr %ilf_fields to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %ilf_fields, align 1
  %ilf_fields3 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f, i32 0, i32 2
  %13 = ptrtoint ptr %ilf_fields3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ilf_fields3, align 4
  %ilf_asize = getelementptr inbounds %struct.xfs_inode_log_format_32, ptr %4, i32 0, i32 3
  %14 = ptrtoint ptr %ilf_asize to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %ilf_asize, align 1
  %ilf_asize4 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f, i32 0, i32 3
  %16 = ptrtoint ptr %ilf_asize4 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %ilf_asize4, align 8
  %ilf_dsize = getelementptr inbounds %struct.xfs_inode_log_format_32, ptr %4, i32 0, i32 4
  %17 = ptrtoint ptr %ilf_dsize to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %ilf_dsize, align 1
  %ilf_dsize5 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f, i32 0, i32 4
  %19 = ptrtoint ptr %ilf_dsize5 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %ilf_dsize5, align 2
  %ilf_ino = getelementptr inbounds %struct.xfs_inode_log_format_32, ptr %4, i32 0, i32 5
  %20 = ptrtoint ptr %ilf_ino to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %ilf_ino, align 1
  %ilf_ino6 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f, i32 0, i32 6
  %22 = ptrtoint ptr %ilf_ino6 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %ilf_ino6, align 8
  %ilf_u = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f, i32 0, i32 7
  %ilf_u7 = getelementptr inbounds %struct.xfs_inode_log_format_32, ptr %4, i32 0, i32 6
  %23 = call ptr @memcpy(ptr %ilf_u, ptr %ilf_u7, i32 16)
  %ilf_blkno = getelementptr inbounds %struct.xfs_inode_log_format_32, ptr %4, i32 0, i32 7
  %24 = ptrtoint ptr %ilf_blkno to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %ilf_blkno, align 1
  %ilf_blkno8 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f, i32 0, i32 8
  %26 = ptrtoint ptr %ilf_blkno8 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %ilf_blkno8, align 8
  %ilf_len = getelementptr inbounds %struct.xfs_inode_log_format_32, ptr %4, i32 0, i32 8
  %27 = ptrtoint ptr %ilf_len to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %ilf_len, align 1
  %ilf_len9 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f, i32 0, i32 9
  %29 = ptrtoint ptr %ilf_len9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ilf_len9, align 8
  %ilf_boffset = getelementptr inbounds %struct.xfs_inode_log_format_32, ptr %4, i32 0, i32 9
  %30 = ptrtoint ptr %ilf_boffset to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %ilf_boffset, align 1
  %ilf_boffset10 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %in_f, i32 0, i32 10
  %32 = ptrtoint ptr %ilf_boffset10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %ilf_boffset10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -117, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_error_report(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_inode_item_size(ptr nocapture noundef readonly %lip, ptr nocapture noundef %nvecs, ptr nocapture noundef %nbytes) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ili_inode = getelementptr inbounds %struct.xfs_inode_log_item, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %ili_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ili_inode, align 8
  %2 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nvecs, align 4
  %add = add i32 %3, 2
  store i32 %add, ptr %nvecs, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %add2 = select i1 %tobool.i.not, i32 152, i32 232
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 4
  %add3 = add i32 %add2, %9
  store i32 %add3, ptr %nbytes, align 4
  tail call fastcc void @xfs_inode_item_data_fork_size(ptr noundef %lip, ptr noundef %nvecs, ptr noundef %nbytes)
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not = icmp eq i8 %11, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @xfs_inode_item_attr_fork_size(ptr noundef %lip, ptr noundef %nvecs, ptr noundef %nbytes)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_inode_item_format(ptr nocapture noundef %lip, ptr nocapture noundef %lv) #4 align 64 {
if.end.i:
  %vecp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ili_inode = getelementptr inbounds %struct.xfs_inode_log_item, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %ili_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ili_inode, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vecp) #9
  %lv_iovecp3.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 2
  %2 = ptrtoint ptr %lv_iovecp3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lv_iovecp3.i, align 4
  %i_type.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %i_type.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %i_type.i, align 4
  %lv_buf.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 4
  %5 = ptrtoint ptr %lv_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lv_buf.i, align 4
  %lv_buf_len.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 6
  %7 = ptrtoint ptr %lv_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lv_buf_len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %3, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  %and.i = and i32 %10, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp5.i = icmp eq i32 %and.i, 0
  br i1 %cmp5.i, label %if.end.i.xlog_prepare_iovec.exit_crit_edge, label %cond.false13.i, !prof !74

if.end.i.xlog_prepare_iovec.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xlog_prepare_iovec.exit

cond.false13.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 40) #9
  br label %xlog_prepare_iovec.exit

xlog_prepare_iovec.exit:                          ; preds = %cond.false13.i, %if.end.i.xlog_prepare_iovec.exit_crit_edge
  %11 = ptrtoint ptr %vecp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %vecp, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 4667, ptr %13, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_ino, align 8
  %ilf_ino = getelementptr inbounds %struct.xfs_inode_log_format, ptr %13, i32 0, i32 6
  %17 = ptrtoint ptr %ilf_ino to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %ilf_ino, align 8
  %i_imap = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %i_imap to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_imap, align 8
  %ilf_blkno = getelementptr inbounds %struct.xfs_inode_log_format, ptr %13, i32 0, i32 8
  %20 = ptrtoint ptr %ilf_blkno to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %ilf_blkno, align 8
  %im_len = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %im_len to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %im_len, align 8
  %conv = zext i16 %22 to i32
  %ilf_len = getelementptr inbounds %struct.xfs_inode_log_format, ptr %13, i32 0, i32 9
  %23 = ptrtoint ptr %ilf_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %ilf_len, align 8
  %im_boffset = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %im_boffset to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %im_boffset, align 2
  %conv4 = zext i16 %25 to i32
  %ilf_boffset = getelementptr inbounds %struct.xfs_inode_log_format, ptr %13, i32 0, i32 10
  %26 = ptrtoint ptr %ilf_boffset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv4, ptr %ilf_boffset, align 4
  %ilf_fields = getelementptr inbounds %struct.xfs_inode_log_format, ptr %13, i32 0, i32 2
  %27 = ptrtoint ptr %ilf_fields to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %ilf_fields, align 4
  %ilf_size = getelementptr inbounds %struct.xfs_inode_log_format, ptr %13, i32 0, i32 1
  %28 = ptrtoint ptr %ilf_size to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 2, ptr %ilf_size, align 2
  %ilf_asize = getelementptr inbounds %struct.xfs_inode_log_format, ptr %13, i32 0, i32 3
  %ilf_u = getelementptr inbounds %struct.xfs_inode_log_format, ptr %13, i32 0, i32 7
  %29 = call ptr @memset(ptr %ilf_u, i32 0, i32 16)
  %30 = ptrtoint ptr %ilf_asize to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %ilf_asize, align 8
  %31 = ptrtoint ptr %lv_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lv_buf_len.i, align 4
  %add1.i = add i32 %32, 56
  store i32 %add1.i, ptr %lv_buf_len.i, align 4
  %lv_bytes.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 5
  %33 = ptrtoint ptr %lv_bytes.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lv_bytes.i, align 4
  %add2.i = add i32 %34, 56
  store i32 %add2.i, ptr %lv_bytes.i, align 4
  %i_len.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %3, i32 0, i32 1
  %35 = ptrtoint ptr %i_len.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 56, ptr %i_len.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %36 = ptrtoint ptr %lv_iovecp3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lv_iovecp3.i, align 4
  br i1 %tobool.not.i.i, label %xlog_prepare_iovec.exit.if.end.i.i_crit_edge, label %if.then.i.i

xlog_prepare_iovec.exit.if.end.i.i_crit_edge:     ; preds = %xlog_prepare_iovec.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %xlog_prepare_iovec.exit
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 12
  %lv_niovecs.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 1
  %38 = ptrtoint ptr %lv_niovecs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lv_niovecs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i, i32 %39)
  %cmp.i.i = icmp slt i32 %sub.ptr.div.i.i, %39
  br i1 %cmp.i.i, label %if.then.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i, !prof !74

if.then.i.i.cond.end.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 31) #9
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.then.i.i.cond.end.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.xfs_log_iovec, ptr %3, i32 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %cond.end.i.i, %xlog_prepare_iovec.exit.if.end.i.i_crit_edge
  %vec.0.i.i = phi ptr [ %incdec.ptr.i.i, %cond.end.i.i ], [ %37, %xlog_prepare_iovec.exit.if.end.i.i_crit_edge ]
  %i_type.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %i_type.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 6, ptr %i_type.i.i, align 4
  %41 = ptrtoint ptr %lv_buf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lv_buf.i, align 4
  %43 = ptrtoint ptr %lv_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lv_buf_len.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %44
  %45 = ptrtoint ptr %vec.0.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.i.i, ptr %vec.0.i.i, align 4
  %46 = ptrtoint ptr %add.ptr.i.i to i32
  %and.i.i = and i32 %46, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp5.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp5.i.i, label %if.end.i.i.xlog_prepare_iovec.exit.i_crit_edge, label %cond.false13.i.i, !prof !74

if.end.i.i.xlog_prepare_iovec.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xlog_prepare_iovec.exit.i

cond.false13.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 40) #9
  br label %xlog_prepare_iovec.exit.i

xlog_prepare_iovec.exit.i:                        ; preds = %cond.false13.i.i, %if.end.i.i.xlog_prepare_iovec.exit.i_crit_edge
  %47 = ptrtoint ptr %vecp to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %vec.0.i.i, ptr %vecp, align 4
  %48 = ptrtoint ptr %vec.0.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vec.0.i.i, align 4
  %i_itemp.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 9
  %50 = ptrtoint ptr %i_itemp.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_itemp.i, align 8
  %li_lsn.i = getelementptr inbounds %struct.xfs_log_item, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %li_lsn.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %li_lsn.i, align 8
  %i_vnode.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 27
  %54 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 18766, ptr %49, align 8
  %if_format.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 6
  %55 = ptrtoint ptr %if_format.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %if_format.i.i.i, align 2
  %di_format.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 3
  %57 = ptrtoint ptr %di_format.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %di_format.i.i, align 1
  %i_sb.i.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 27, i32 8
  %58 = ptrtoint ptr %i_sb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i_sb.i.i.i.i, align 4
  %s_user_ns.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %59, i32 0, i32 53
  %60 = ptrtoint ptr %s_user_ns.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_user_ns.i.i.i.i, align 8
  %i_uid.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 27, i32 2
  %62 = ptrtoint ptr %i_uid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.unpack.i.i.i = load i32, ptr %i_uid.i.i.i, align 4
  %63 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i, 0
  %call1.i.i.i = tail call i32 @from_kuid(ptr noundef %61, [1 x i32] %63) #9
  %di_uid.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 5
  %64 = ptrtoint ptr %di_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call1.i.i.i, ptr %di_uid.i.i, align 8
  %65 = ptrtoint ptr %i_sb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_sb.i.i.i.i, align 4
  %s_user_ns.i.i101.i.i = getelementptr inbounds %struct.super_block, ptr %66, i32 0, i32 53
  %67 = ptrtoint ptr %s_user_ns.i.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_user_ns.i.i101.i.i, align 8
  %i_gid.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 27, i32 3
  %69 = ptrtoint ptr %i_gid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.unpack.i102.i.i = load i32, ptr %i_gid.i.i.i, align 8
  %70 = insertvalue [1 x i32] undef, i32 %.unpack.i102.i.i, 0
  %call1.i103.i.i = tail call i32 @from_kgid(ptr noundef %68, [1 x i32] %70) #9
  %di_gid.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 6
  %71 = ptrtoint ptr %di_gid.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call1.i103.i.i, ptr %di_gid.i.i, align 4
  %i_projid.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 20
  %72 = ptrtoint ptr %i_projid.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_projid.i.i, align 8
  %conv.i.i = trunc i32 %73 to i16
  %di_projid_lo.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 8
  %74 = ptrtoint ptr %di_projid_lo.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i.i, ptr %di_projid_lo.i.i, align 4
  %75 = load i32, ptr %i_projid.i.i, align 8
  %shr.i.i = lshr i32 %75, 16
  %conv5.i.i = trunc i32 %shr.i.i to i16
  %di_projid_hi.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 9
  %76 = ptrtoint ptr %di_projid_hi.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv5.i.i, ptr %di_projid_hi.i.i, align 2
  %di_pad.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 10
  %77 = call ptr @memset(ptr %di_pad.i.i, i32 0, i32 6)
  %di_pad3.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 4
  %78 = ptrtoint ptr %di_pad3.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %di_pad3.i.i, align 2
  %i_atime.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 27, i32 15
  %79 = ptrtoint ptr %i_atime.i.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %.unpack.i.i = load i64, ptr %i_atime.i.i, align 8
  %.elt89.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 27, i32 15, i32 1
  %80 = ptrtoint ptr %.elt89.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %.unpack90.i.i = load i64, ptr %.elt89.i.i, align 8
  %i_diflags2.i.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 25
  %81 = ptrtoint ptr %i_diflags2.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %i_diflags2.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %82, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i64 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.end.i104.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %xlog_prepare_iovec.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = mul i64 %.unpack.i.i, 1000000000
  %mul.i.i.i.i = add i64 %83, 2147483648000000000
  %conv.i.i.i.i = ashr i64 %.unpack90.i.i, 32
  %add.i.i.i.i = add i64 %mul.i.i.i.i, %conv.i.i.i.i
  br label %xfs_inode_to_log_dinode_ts.exit.i.i

if.end.i104.i.i:                                  ; preds = %xlog_prepare_iovec.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %its.sroa.0.0.insert.insert.i.i.i = tail call i64 @llvm.fshl.i64(i64 %.unpack.i.i, i64 %.unpack90.i.i, i64 32) #9
  br label %xfs_inode_to_log_dinode_ts.exit.i.i

xfs_inode_to_log_dinode_ts.exit.i.i:              ; preds = %if.end.i104.i.i, %if.then.i.i.i
  %retval.0.i105.i.i = phi i64 [ %add.i.i.i.i, %if.then.i.i.i ], [ %its.sroa.0.0.insert.insert.i.i.i, %if.end.i104.i.i ]
  %di_atime.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 12
  %84 = ptrtoint ptr %di_atime.i.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %retval.0.i105.i.i, ptr %di_atime.i.i, align 8
  %i_mtime.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 27, i32 16
  %85 = ptrtoint ptr %i_mtime.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %.unpack91.i.i = load i64, ptr %i_mtime.i.i, align 8
  %.elt92.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 27, i32 16, i32 1
  %86 = ptrtoint ptr %.elt92.i.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %.unpack93.i.i = load i64, ptr %.elt92.i.i, align 8
  %87 = ptrtoint ptr %i_diflags2.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %i_diflags2.i.i.i.i, align 8
  %and.i.i107.i.i = and i64 %88, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i107.i.i)
  %tobool.i.not.i108.i.i = icmp eq i64 %and.i.i107.i.i, 0
  br i1 %tobool.i.not.i108.i.i, label %if.end.i114.i.i, label %if.then.i112.i.i

if.then.i112.i.i:                                 ; preds = %xfs_inode_to_log_dinode_ts.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = mul i64 %.unpack91.i.i, 1000000000
  %mul.i.i109.i.i = add i64 %89, 2147483648000000000
  %conv.i.i110.i.i = ashr i64 %.unpack93.i.i, 32
  %add.i.i111.i.i = add i64 %mul.i.i109.i.i, %conv.i.i110.i.i
  br label %xfs_inode_to_log_dinode_ts.exit116.i.i

if.end.i114.i.i:                                  ; preds = %xfs_inode_to_log_dinode_ts.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %its.sroa.0.0.insert.insert.i113.i.i = tail call i64 @llvm.fshl.i64(i64 %.unpack91.i.i, i64 %.unpack93.i.i, i64 32) #9
  br label %xfs_inode_to_log_dinode_ts.exit116.i.i

xfs_inode_to_log_dinode_ts.exit116.i.i:           ; preds = %if.end.i114.i.i, %if.then.i112.i.i
  %retval.0.i115.i.i = phi i64 [ %add.i.i111.i.i, %if.then.i112.i.i ], [ %its.sroa.0.0.insert.insert.i113.i.i, %if.end.i114.i.i ]
  %di_mtime.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 13
  %90 = ptrtoint ptr %di_mtime.i.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %retval.0.i115.i.i, ptr %di_mtime.i.i, align 8
  %i_ctime.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 27, i32 17
  %91 = ptrtoint ptr %i_ctime.i.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %.unpack94.i.i = load i64, ptr %i_ctime.i.i, align 8
  %.elt95.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 27, i32 17, i32 1
  %92 = ptrtoint ptr %.elt95.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %.unpack96.i.i = load i64, ptr %.elt95.i.i, align 8
  %93 = ptrtoint ptr %i_diflags2.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %i_diflags2.i.i.i.i, align 8
  %and.i.i118.i.i = and i64 %94, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i118.i.i)
  %tobool.i.not.i119.i.i = icmp eq i64 %and.i.i118.i.i, 0
  br i1 %tobool.i.not.i119.i.i, label %if.end.i125.i.i, label %if.then.i123.i.i

if.then.i123.i.i:                                 ; preds = %xfs_inode_to_log_dinode_ts.exit116.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %95 = mul i64 %.unpack94.i.i, 1000000000
  %mul.i.i120.i.i = add i64 %95, 2147483648000000000
  %conv.i.i121.i.i = ashr i64 %.unpack96.i.i, 32
  %add.i.i122.i.i = add i64 %mul.i.i120.i.i, %conv.i.i121.i.i
  br label %xfs_inode_to_log_dinode_ts.exit127.i.i

if.end.i125.i.i:                                  ; preds = %xfs_inode_to_log_dinode_ts.exit116.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %its.sroa.0.0.insert.insert.i124.i.i = tail call i64 @llvm.fshl.i64(i64 %.unpack94.i.i, i64 %.unpack96.i.i, i64 32) #9
  br label %xfs_inode_to_log_dinode_ts.exit127.i.i

xfs_inode_to_log_dinode_ts.exit127.i.i:           ; preds = %if.end.i125.i.i, %if.then.i123.i.i
  %retval.0.i126.i.i = phi i64 [ %add.i.i122.i.i, %if.then.i123.i.i ], [ %its.sroa.0.0.insert.insert.i124.i.i, %if.end.i125.i.i ]
  %di_ctime.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 14
  %96 = ptrtoint ptr %di_ctime.i.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %retval.0.i126.i.i, ptr %di_ctime.i.i, align 8
  %97 = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 27, i32 12
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  %di_nlink.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 7
  %100 = ptrtoint ptr %di_nlink.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %di_nlink.i.i, align 8
  %i_generation.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 27, i32 49
  %101 = ptrtoint ptr %i_generation.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %i_generation.i.i, align 8
  %di_gen.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 25
  %103 = ptrtoint ptr %di_gen.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %di_gen.i.i, align 4
  %104 = ptrtoint ptr %i_vnode.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %i_vnode.i.i.i, align 8
  %di_mode.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 1
  %106 = ptrtoint ptr %di_mode.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %di_mode.i.i, align 2
  %i_disk_size.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 18
  %107 = ptrtoint ptr %i_disk_size.i.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %i_disk_size.i.i, align 8
  %di_size.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 15
  %109 = ptrtoint ptr %di_size.i.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %di_size.i.i, align 8
  %i_nblocks.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 19
  %110 = ptrtoint ptr %i_nblocks.i.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %i_nblocks.i.i, align 8
  %di_nblocks.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 16
  %112 = ptrtoint ptr %di_nblocks.i.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %111, ptr %di_nblocks.i.i, align 8
  %i_extsize.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 21
  %113 = ptrtoint ptr %i_extsize.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %i_extsize.i.i, align 4
  %di_extsize.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 17
  %115 = ptrtoint ptr %di_extsize.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %di_extsize.i.i, align 8
  %if_nextents.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 7
  %116 = ptrtoint ptr %if_nextents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %if_nextents.i.i.i, align 4
  %di_nextents.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 18
  %118 = ptrtoint ptr %di_nextents.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %di_nextents.i.i, align 4
  %i_afp.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 6
  %119 = ptrtoint ptr %i_afp.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %i_afp.i.i, align 8
  %tobool.not.i131.i.i = icmp eq ptr %120, null
  br i1 %tobool.not.i131.i.i, label %xfs_inode_to_log_dinode_ts.exit127.i.i.xfs_ifork_nextents.exit135.i.i_crit_edge, label %if.end.i133.i.i

xfs_inode_to_log_dinode_ts.exit127.i.i.xfs_ifork_nextents.exit135.i.i_crit_edge: ; preds = %xfs_inode_to_log_dinode_ts.exit127.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_ifork_nextents.exit135.i.i

if.end.i133.i.i:                                  ; preds = %xfs_inode_to_log_dinode_ts.exit127.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %if_nextents.i132.i.i = getelementptr inbounds %struct.xfs_ifork, ptr %120, i32 0, i32 7
  %121 = ptrtoint ptr %if_nextents.i132.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %if_nextents.i132.i.i, align 4
  %phi.cast.i.i = trunc i32 %122 to i16
  br label %xfs_ifork_nextents.exit135.i.i

xfs_ifork_nextents.exit135.i.i:                   ; preds = %if.end.i133.i.i, %xfs_inode_to_log_dinode_ts.exit127.i.i.xfs_ifork_nextents.exit135.i.i_crit_edge
  %retval.0.i134.i.i = phi i16 [ %phi.cast.i.i, %if.end.i133.i.i ], [ 0, %xfs_inode_to_log_dinode_ts.exit127.i.i.xfs_ifork_nextents.exit135.i.i_crit_edge ]
  %di_anextents.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 19
  %123 = ptrtoint ptr %di_anextents.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %retval.0.i134.i.i, ptr %di_anextents.i.i, align 8
  %i_forkoff.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 23
  %124 = ptrtoint ptr %i_forkoff.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %i_forkoff.i.i, align 4
  %di_forkoff.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 20
  %126 = ptrtoint ptr %di_forkoff.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %di_forkoff.i.i, align 2
  %127 = ptrtoint ptr %i_afp.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %i_afp.i.i, align 8
  %tobool.not.i136.i.i = icmp eq ptr %128, null
  br i1 %tobool.not.i136.i.i, label %xfs_ifork_nextents.exit135.i.i.xfs_ifork_format.exit140.i.i_crit_edge, label %if.end.i138.i.i

xfs_ifork_nextents.exit135.i.i.xfs_ifork_format.exit140.i.i_crit_edge: ; preds = %xfs_ifork_nextents.exit135.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_ifork_format.exit140.i.i

if.end.i138.i.i:                                  ; preds = %xfs_ifork_nextents.exit135.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %if_format.i137.i.i = getelementptr inbounds %struct.xfs_ifork, ptr %128, i32 0, i32 6
  %129 = ptrtoint ptr %if_format.i137.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %if_format.i137.i.i, align 2
  br label %xfs_ifork_format.exit140.i.i

xfs_ifork_format.exit140.i.i:                     ; preds = %if.end.i138.i.i, %xfs_ifork_nextents.exit135.i.i.xfs_ifork_format.exit140.i.i_crit_edge
  %retval.0.i139.i.i = phi i8 [ %130, %if.end.i138.i.i ], [ 2, %xfs_ifork_nextents.exit135.i.i.xfs_ifork_format.exit140.i.i_crit_edge ]
  %di_aformat.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 21
  %131 = ptrtoint ptr %di_aformat.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %retval.0.i139.i.i, ptr %di_aformat.i.i, align 1
  %i_diflags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 24
  %132 = ptrtoint ptr %i_diflags.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %i_diflags.i.i, align 2
  %di_flags.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 24
  %134 = ptrtoint ptr %di_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %di_flags.i.i, align 2
  %135 = ptrtoint ptr %i_itemp.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %i_itemp.i, align 8
  %li_buf.i.i.i = getelementptr inbounds %struct.xfs_log_item, ptr %136, i32 0, i32 7
  %137 = ptrtoint ptr %li_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %li_buf.i.i.i, align 8
  %139 = ptrtoint ptr %im_boffset to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %im_boffset, align 2
  %conv.i.i.i = zext i16 %140 to i32
  %call.i.i.i = tail call ptr @xfs_buf_offset(ptr noundef %138, i32 noundef %conv.i.i.i) #9
  %i_flags_lock.i.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i.i.i) #9
  %i_flags.i.i.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 16
  %141 = ptrtoint ptr %i_flags.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %i_flags.i.i.i.i.i, align 8
  %and.i.i.i.i.i = and i32 %142, 16
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i141.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i141.i.i, label %if.else.i.i.i, label %if.then.i142.i.i

if.then.i142.i.i:                                 ; preds = %xfs_ifork_format.exit140.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %di_dmevmask.i.i.i = getelementptr inbounds %struct.xfs_dinode, ptr %call.i.i.i, i32 0, i32 22
  %143 = ptrtoint ptr %di_dmevmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %di_dmevmask.i.i.i, align 4
  %di_dmevmask2.i.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 22
  %145 = ptrtoint ptr %di_dmevmask2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %di_dmevmask2.i.i.i, align 4
  %di_dmstate.i.i.i = getelementptr inbounds %struct.xfs_dinode, ptr %call.i.i.i, i32 0, i32 23
  %146 = ptrtoint ptr %di_dmstate.i.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %di_dmstate.i.i.i, align 8
  br label %xfs_copy_dm_fields_to_log_dinode.exit.i.i

if.else.i.i.i:                                    ; preds = %xfs_ifork_format.exit140.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %di_dmevmask4.i.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 22
  %148 = ptrtoint ptr %di_dmevmask4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %di_dmevmask4.i.i.i, align 4
  br label %xfs_copy_dm_fields_to_log_dinode.exit.i.i

xfs_copy_dm_fields_to_log_dinode.exit.i.i:        ; preds = %if.else.i.i.i, %if.then.i142.i.i
  %.sink.i.i.i = phi i16 [ 0, %if.else.i.i.i ], [ %147, %if.then.i142.i.i ]
  %149 = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 23
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %.sink.i.i.i, ptr %149, align 8
  %di_next_unlinked.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 26
  %151 = ptrtoint ptr %di_next_unlinked.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 -1, ptr %di_next_unlinked.i.i, align 8
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %1, align 8
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %153, i32 0, i32 61
  %154 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i = and i64 %155, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  %di_version21.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 2
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.then.i6.i

if.then.i6.i:                                     ; preds = %xfs_copy_dm_fields_to_log_dinode.exit.i.i
  %156 = ptrtoint ptr %di_version21.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 3, ptr %di_version21.i.i, align 4
  %i_version.i.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 27, i32 38
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i.i, i32 noundef 8) #9
  %call.i.i.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i.i) #9
  %shr.i.i.i = lshr i64 %call.i.i.i.i.i, 1
  %di_changecount.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 28
  %157 = ptrtoint ptr %di_changecount.i.i to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %shr.i.i.i, ptr %di_changecount.i.i, align 8
  %i_crtime.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 26
  %158 = ptrtoint ptr %i_crtime.i.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %.unpack97.i.i = load i64, ptr %i_crtime.i.i, align 8
  %.elt98.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 26, i32 1
  %159 = ptrtoint ptr %.elt98.i.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %.unpack99.i.i = load i64, ptr %.elt98.i.i, align 8
  %160 = ptrtoint ptr %i_diflags2.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %i_diflags2.i.i.i.i, align 8
  %and.i.i145.i.i = and i64 %161, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i145.i.i)
  %tobool.i.not.i146.i.i = icmp eq i64 %and.i.i145.i.i, 0
  br i1 %tobool.i.not.i146.i.i, label %if.end.i152.i.i, label %if.then.i150.i.i

if.then.i150.i.i:                                 ; preds = %if.then.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  %162 = mul i64 %.unpack97.i.i, 1000000000
  %mul.i.i147.i.i = add i64 %162, 2147483648000000000
  %conv.i.i148.i.i = ashr i64 %.unpack99.i.i, 32
  %add.i.i149.i.i = add i64 %mul.i.i147.i.i, %conv.i.i148.i.i
  br label %xfs_inode_to_log_dinode_ts.exit154.i.i

if.end.i152.i.i:                                  ; preds = %if.then.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  %its.sroa.0.0.insert.insert.i151.i.i = tail call i64 @llvm.fshl.i64(i64 %.unpack97.i.i, i64 %.unpack99.i.i, i64 32) #9
  br label %xfs_inode_to_log_dinode_ts.exit154.i.i

xfs_inode_to_log_dinode_ts.exit154.i.i:           ; preds = %if.end.i152.i.i, %if.then.i150.i.i
  %retval.0.i153.i.i = phi i64 [ %add.i.i149.i.i, %if.then.i150.i.i ], [ %its.sroa.0.0.insert.insert.i151.i.i, %if.end.i152.i.i ]
  %di_crtime.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 33
  %163 = ptrtoint ptr %di_crtime.i.i to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %retval.0.i153.i.i, ptr %di_crtime.i.i, align 8
  %164 = ptrtoint ptr %i_diflags2.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %i_diflags2.i.i.i.i, align 8
  %di_flags2.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 30
  %166 = ptrtoint ptr %di_flags2.i.i to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %165, ptr %di_flags2.i.i, align 8
  %167 = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 22
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %167, align 8
  %di_cowextsize.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 31
  %170 = ptrtoint ptr %di_cowextsize.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %di_cowextsize.i.i, align 8
  %171 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %i_ino, align 8
  %di_ino.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 34
  %173 = ptrtoint ptr %di_ino.i.i to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %172, ptr %di_ino.i.i, align 8
  %di_lsn.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 29
  %174 = ptrtoint ptr %di_lsn.i.i to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %53, ptr %di_lsn.i.i, align 8
  %di_pad2.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 32
  %175 = call ptr @memset(ptr %di_pad2.i.i, i32 0, i32 12)
  %di_uuid.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 35
  %176 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %1, align 8
  %sb_meta_uuid.i.i = getelementptr inbounds %struct.xfs_sb, ptr %177, i32 0, i32 54
  %178 = call ptr @memcpy(ptr %di_uuid.i.i, ptr %sb_meta_uuid.i.i, i32 16)
  br label %xfs_inode_item_format_core.exit

if.else.i.i:                                      ; preds = %xfs_copy_dm_fields_to_log_dinode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %179 = ptrtoint ptr %di_version21.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 2, ptr %di_version21.i.i, align 4
  %180 = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 22
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %180, align 8
  br label %xfs_inode_item_format_core.exit

xfs_inode_item_format_core.exit:                  ; preds = %if.else.i.i, %xfs_inode_to_log_dinode_ts.exit154.i.i
  %.sink.i.i = phi i16 [ %182, %if.else.i.i ], [ 0, %xfs_inode_to_log_dinode_ts.exit154.i.i ]
  %di_flushiter22.i.i = getelementptr inbounds %struct.xfs_log_dinode, ptr %49, i32 0, i32 11
  %183 = ptrtoint ptr %di_flushiter22.i.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %.sink.i.i, ptr %di_flushiter22.i.i, align 2
  %184 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %1, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %185, i32 0, i32 61
  %186 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %m_features.i.i, align 8
  %and.i8.i = and i64 %187, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i8.i)
  %tobool.i.not.i = icmp eq i64 %and.i8.i, 0
  %cond.i = select i1 %tobool.i.not.i, i32 96, i32 176
  %188 = ptrtoint ptr %lv_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %lv_buf_len.i, align 4
  %add1.i.i = add i32 %cond.i, %189
  store i32 %add1.i.i, ptr %lv_buf_len.i, align 4
  %190 = ptrtoint ptr %lv_bytes.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %lv_bytes.i, align 4
  %add2.i.i = add i32 %191, %cond.i
  store i32 %add2.i.i, ptr %lv_bytes.i, align 4
  %i_len.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i.i, i32 0, i32 1
  %192 = ptrtoint ptr %i_len.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %cond.i, ptr %i_len.i.i, align 4
  call fastcc void @xfs_inode_item_format_data_fork(ptr noundef %lip, ptr noundef %13, ptr noundef %lv, ptr noundef nonnull %vecp)
  %193 = ptrtoint ptr %i_forkoff.i.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %i_forkoff.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %cmp.not = icmp eq i8 %194, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %xfs_inode_item_format_core.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @xfs_inode_item_format_attr_fork(ptr noundef %lip, ptr noundef %13, ptr noundef %lv, ptr noundef nonnull %vecp)
  br label %if.end

if.else:                                          ; preds = %xfs_inode_item_format_core.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ili_fields = getelementptr inbounds %struct.xfs_inode_log_item, ptr %lip, i32 0, i32 5
  %195 = ptrtoint ptr %ili_fields to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %ili_fields, align 8
  %and = and i32 %196, -449
  store i32 %and, ptr %ili_fields, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ili_fields7 = getelementptr inbounds %struct.xfs_inode_log_item, ptr %lip, i32 0, i32 5
  %197 = ptrtoint ptr %ili_fields7 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %ili_fields7, align 8
  %and8 = and i32 %198, -16385
  %199 = ptrtoint ptr %ilf_fields to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %ilf_fields, align 4
  %or = or i32 %200, %and8
  store i32 %or, ptr %ilf_fields, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vecp) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_inode_item_pin(ptr nocapture noundef readonly %lip) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ili_inode = getelementptr inbounds %struct.xfs_inode_log_item, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %ili_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ili_inode, align 8
  %call1 = tail call zeroext i1 @xfs_isilocked(ptr noundef %1, i32 noundef 4) #9
  br i1 %call1, label %entry.cond.end_crit_edge, label %cond.false, !prof !74

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 499) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %li_buf = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 7
  %2 = ptrtoint ptr %li_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %li_buf, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %cond.false11, label %cond.end.cond.end12_crit_edge, !prof !75

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 500) #9
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = ptrtoint ptr %4 to i32
  tail call fastcc void @trace_xfs_inode_pin(ptr noundef %1, i32 noundef %5)
  %i_pincount = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_pincount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %i_pincount, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_pincount, ptr %i_pincount, i32 1, ptr elementtype(i32) %i_pincount) #9, !srcloc !76
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_inode_item_unpin(ptr nocapture noundef readonly %lip, i32 noundef %remove) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ili_inode = getelementptr inbounds %struct.xfs_inode_log_item, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %ili_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ili_inode, align 8
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %3 = ptrtoint ptr %2 to i32
  tail call fastcc void @trace_xfs_inode_unpin(ptr noundef %1, i32 noundef %3)
  %li_buf = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 7
  %4 = ptrtoint ptr %li_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %li_buf, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.rhs, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

lor.rhs:                                          ; preds = %entry
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #9
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i = and i32 %7, 2
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not, label %cond.false, label %lor.rhs.cond.end_crit_edge, !prof !75

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 527) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.rhs.cond.end_crit_edge, %entry.cond.end_crit_edge
  %i_pincount = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_pincount, i32 noundef 4) #9
  %8 = ptrtoint ptr %i_pincount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %cond.end.cond.end14_crit_edge, label %cond.false13, !prof !74

cond.end.cond.end14_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 528) #9
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.end.cond.end14_crit_edge
  %call.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_pincount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %i_pincount, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_pincount, ptr %i_pincount, i32 1, ptr elementtype(i32) %i_pincount) #9, !srcloc !78
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %cond.end14.if.end_crit_edge

cond.end14.if.end_crit_edge:                      ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #11
  %i_flags = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 16
  tail call void @wake_up_bit(ptr noundef %i_flags, i32 noundef 8) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end14.if.end_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_inode_item_push(ptr nocapture noundef readonly %lip, ptr noundef %buffer_list) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ili_inode = getelementptr inbounds %struct.xfs_inode_log_item, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %ili_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ili_inode, align 8
  %li_buf = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 7
  %2 = ptrtoint ptr %li_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %li_buf, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !75

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 546) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i_pincount = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_pincount, i32 noundef 4) #9
  %4 = ptrtoint ptr %i_pincount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %lor.lhs.false, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end
  %b_pin_count.i = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 27
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_pin_count.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %b_pin_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %b_pin_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %i_flags = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags, align 8
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #9
  %10 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags, align 8
  %and.i.i = and i32 %11, 128
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call i32 @xfs_buf_trylock(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %li_ailp = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 4
  %12 = ptrtoint ptr %li_ailp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %li_ailp, align 4
  %ail_lock = getelementptr inbounds %struct.xfs_ail, ptr %13, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %ail_lock) #9
  tail call void @xfs_buf_hold(ptr noundef %3) #9
  %call17 = tail call i32 @xfs_iflush_cluster(ptr noundef %3) #9
  %14 = zext i32 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call17, label %if.end16.if.end26_crit_edge [
    i32 0, label %if.then19
    i32 -11, label %if.end16.if.end26.sink.split_crit_edge
  ]

if.end16.if.end26.sink.split_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.sink.split

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call zeroext i1 @xfs_buf_delwri_queue(ptr noundef %3, ptr noundef %buffer_list) #9
  %spec.select = select i1 %call20, i32 0, i32 3
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.then19, %if.end16.if.end26.sink.split_crit_edge
  %rval.1.ph = phi i32 [ %spec.select, %if.then19 ], [ 2, %if.end16.if.end26.sink.split_crit_edge ]
  tail call void @xfs_buf_unlock(ptr noundef %3) #9
  tail call void @xfs_buf_rele(ptr noundef %3) #9
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.end16.if.end26_crit_edge
  %rval.1 = phi i32 [ 2, %if.end16.if.end26_crit_edge ], [ %rval.1.ph, %if.end26.sink.split ]
  %15 = ptrtoint ptr %li_ailp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %li_ailp, align 4
  %ail_lock28 = getelementptr inbounds %struct.xfs_ail, ptr %16, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %ail_lock28) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rval.1, %if.end26 ], [ 1, %lor.lhs.false7.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %cond.end.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ 2, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_inode_item_committing(ptr nocapture noundef %lip, i64 noundef %seq) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ili_commit_seq = getelementptr inbounds %struct.xfs_inode_log_item, ptr %lip, i32 0, i32 8
  %0 = ptrtoint ptr %ili_commit_seq to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %seq, ptr %ili_commit_seq, align 8
  tail call void @xfs_inode_item_release(ptr noundef %lip)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_inode_item_release(ptr nocapture noundef %lip) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ili_inode = getelementptr inbounds %struct.xfs_inode_log_item, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %ili_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ili_inode, align 8
  %i_itemp = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_itemp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_itemp, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !75

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 597) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call2 = tail call zeroext i1 @xfs_isilocked(ptr noundef %1, i32 noundef 4) #9
  br i1 %call2, label %cond.end.cond.end11_crit_edge, label %cond.false10, !prof !74

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 598) #9
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  %ili_lock_flags = getelementptr inbounds %struct.xfs_inode_log_item, ptr %lip, i32 0, i32 2
  %4 = ptrtoint ptr %ili_lock_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ili_lock_flags, align 4
  store i16 0, ptr %ili_lock_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool13.not = icmp eq i16 %5, 0
  br i1 %tobool13.not, label %cond.end11.if.end_crit_edge, label %if.then

cond.end11.if.end_crit_edge:                      ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %5 to i32
  tail call void @xfs_iunlock(ptr noundef %1, i32 noundef %conv) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end11.if.end_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @xfs_inode_item_committed(ptr nocapture noundef readonly %lip, i64 noundef %lsn) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ili_inode = getelementptr inbounds %struct.xfs_inode_log_item, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %ili_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ili_inode, align 8
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #9
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i = and i32 %3, 2
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xfs_inode_item_unpin(ptr noundef %lip, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ -1, %if.then ], [ %lsn, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_inode_item_data_fork_size(ptr nocapture noundef readonly %iip, ptr nocapture noundef %nvecs, ptr nocapture noundef %nbytes) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ili_inode = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 1
  %0 = ptrtoint ptr %ili_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ili_inode, align 8
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 6
  %2 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_format, align 2
  %conv = sext i8 %3 to i32
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb17
    i32 1, label %sw.bb33
    i32 0, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %ili_fields = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 5
  %5 = ptrtoint ptr %ili_fields to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ili_fields, align 8
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %if_nextents = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 7
  %7 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %land.lhs.true3, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true3:                                   ; preds = %land.lhs.true
  %9 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_df, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp5 = icmp sgt i64 %10, 0
  br i1 %cmp5, label %if.then, label %land.lhs.true3.sw.epilog_crit_edge

land.lhs.true3.sw.epilog_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true3
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 23
  %11 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp8.not = icmp eq i8 %12, 0
  br i1 %cmp8.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv7 = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv7, 3
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sb_inodesize, align 8
  %conv12 = zext i16 %16 to i32
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %14, i32 0, i32 61
  %17 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond.neg = select i1 %tobool.i.not, i32 -100, i32 -176
  %sub = add nsw i32 %cond.neg, %conv12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond15 = phi i32 [ %shl, %cond.true ], [ %sub, %cond.false ]
  %19 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nbytes, align 4
  %add = add i32 %20, %cond15
  store i32 %add, ptr %nbytes, align 4
  %21 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nvecs, align 4
  %add16 = add i32 %22, 1
  store i32 %add16, ptr %nvecs, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %ili_fields18 = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 5
  %23 = ptrtoint ptr %ili_fields18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ili_fields18, align 8
  %and19 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %sw.bb17.sw.epilog_crit_edge, label %land.lhs.true21

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true21:                                  ; preds = %sw.bb17
  %if_broot_bytes = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 5
  %25 = ptrtoint ptr %if_broot_bytes to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %if_broot_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp24 = icmp sgt i16 %26, 0
  br i1 %cmp24, label %if.then26, label %land.lhs.true21.sw.epilog_crit_edge

land.lhs.true21.sw.epilog_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then26:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  %conv2375 = zext i16 %26 to i32
  %27 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nbytes, align 4
  %add30 = add i32 %28, %conv2375
  store i32 %add30, ptr %nbytes, align 4
  %29 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nvecs, align 4
  %add31 = add i32 %30, 1
  store i32 %add31, ptr %nvecs, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %ili_fields34 = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 5
  %31 = ptrtoint ptr %ili_fields34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ili_fields34, align 8
  %and35 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %sw.bb33.sw.epilog_crit_edge, label %land.lhs.true37

sw.bb33.sw.epilog_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true37:                                  ; preds = %sw.bb33
  %33 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_df, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %cmp40 = icmp sgt i64 %34, 0
  br i1 %cmp40, label %if.then42, label %land.lhs.true37.sw.epilog_crit_edge

land.lhs.true37.sw.epilog_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then42:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  %add47 = add nuw i64 %34, 3
  %div = sdiv i64 %add47, 4
  %35 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nbytes, align 4
  %div.tr = trunc i64 %div to i32
  %37 = shl i32 %div.tr, 2
  %conv52 = add i32 %36, %37
  store i32 %conv52, ptr %nbytes, align 4
  %38 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nvecs, align 4
  %add53 = add i32 %39, 1
  store i32 %add53, ptr %nvecs, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 81) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then42, %land.lhs.true37.sw.epilog_crit_edge, %sw.bb33.sw.epilog_crit_edge, %if.then26, %land.lhs.true21.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %cond.end, %land.lhs.true3.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_inode_item_attr_fork_size(ptr nocapture noundef readonly %iip, ptr nocapture noundef %nvecs, ptr nocapture noundef %nbytes) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ili_inode = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 1
  %0 = ptrtoint ptr %ili_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ili_inode, align 8
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_afp, align 8
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_format, align 2
  %conv = sext i8 %5 to i32
  %6 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb18
    i32 1, label %sw.bb34
  ]

sw.bb:                                            ; preds = %entry
  %ili_fields = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 5
  %7 = ptrtoint ptr %ili_fields to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ili_fields, align 8
  %and = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %if_nextents = getelementptr inbounds %struct.xfs_ifork, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %land.lhs.true3, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true3:                                   ; preds = %land.lhs.true
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp5 = icmp sgt i64 %12, 0
  br i1 %cmp5, label %if.then, label %land.lhs.true3.sw.epilog_crit_edge

land.lhs.true3.sw.epilog_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true3
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 23
  %13 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp8.not = icmp eq i8 %14, 0
  br i1 %cmp8.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sb_inodesize, align 8
  %conv10 = zext i16 %18 to i32
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %16, i32 0, i32 61
  %19 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %20, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond.neg = select i1 %tobool.i.not, i32 -100, i32 -176
  %conv14 = zext i8 %14 to i32
  %shl.neg = mul nsw i32 %conv14, -8
  %sub = add nsw i32 %shl.neg, %conv10
  %sub15 = add nsw i32 %sub, %cond.neg
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond16 = phi i32 [ %sub15, %cond.true ], [ 0, %if.then.cond.end_crit_edge ]
  %21 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nbytes, align 4
  %add = add i32 %22, %cond16
  store i32 %add, ptr %nbytes, align 4
  %23 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nvecs, align 4
  %add17 = add i32 %24, 1
  store i32 %add17, ptr %nvecs, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %ili_fields19 = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 5
  %25 = ptrtoint ptr %ili_fields19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ili_fields19, align 8
  %and20 = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %sw.bb18.sw.epilog_crit_edge, label %land.lhs.true22

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true22:                                  ; preds = %sw.bb18
  %if_broot_bytes = getelementptr inbounds %struct.xfs_ifork, ptr %3, i32 0, i32 5
  %27 = ptrtoint ptr %if_broot_bytes to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %if_broot_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp25 = icmp sgt i16 %28, 0
  br i1 %cmp25, label %if.then27, label %land.lhs.true22.sw.epilog_crit_edge

land.lhs.true22.sw.epilog_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then27:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  %conv2476 = zext i16 %28 to i32
  %29 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nbytes, align 4
  %add31 = add i32 %30, %conv2476
  store i32 %add31, ptr %nbytes, align 4
  %31 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nvecs, align 4
  %add32 = add i32 %32, 1
  store i32 %add32, ptr %nvecs, align 4
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  %ili_fields35 = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 5
  %33 = ptrtoint ptr %ili_fields35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ili_fields35, align 8
  %and36 = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %sw.bb34.sw.epilog_crit_edge, label %land.lhs.true38

sw.bb34.sw.epilog_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true38:                                  ; preds = %sw.bb34
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %cmp41 = icmp sgt i64 %36, 0
  br i1 %cmp41, label %if.then43, label %land.lhs.true38.sw.epilog_crit_edge

land.lhs.true38.sw.epilog_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then43:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  %add48 = add nuw i64 %36, 3
  %div = sdiv i64 %add48, 4
  %37 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nbytes, align 4
  %div.tr = trunc i64 %div to i32
  %39 = shl i32 %div.tr, 2
  %conv53 = add i32 %38, %39
  store i32 %conv53, ptr %nbytes, align 4
  %40 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nvecs, align 4
  %add54 = add i32 %41, 1
  store i32 %add54, ptr %nvecs, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 119) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then43, %land.lhs.true38.sw.epilog_crit_edge, %sw.bb34.sw.epilog_crit_edge, %if.then27, %land.lhs.true22.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %cond.end, %land.lhs.true3.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_inode_item_format_data_fork(ptr nocapture noundef %iip, ptr nocapture noundef %ilf, ptr nocapture noundef %lv, ptr nocapture noundef %vecp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ili_inode = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 1
  %0 = ptrtoint ptr %ili_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ili_inode, align 8
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 6
  %2 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_format, align 2
  %conv = sext i8 %3 to i32
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb33
    i32 1, label %sw.bb86
    i32 0, label %sw.bb138
  ]

sw.bb:                                            ; preds = %entry
  %ili_fields = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 5
  %5 = ptrtoint ptr %ili_fields to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ili_fields, align 8
  %and = and i32 %6, -27
  store i32 %and, ptr %ili_fields, align 8
  %and2 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %sw.bb.if.else_crit_edge, label %land.lhs.true

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %if_nextents = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 7
  %7 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %land.lhs.true5, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %9 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_df, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp7 = icmp sgt i64 %10, 0
  br i1 %cmp7, label %if.then, label %land.lhs.true5.if.else_crit_edge

land.lhs.true5.if.else_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true5
  %call = tail call i32 @xfs_iext_count(ptr noundef %i_df) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp sgt i32 %call, 0
  br i1 %cmp10, label %if.then.cond.end_crit_edge, label %cond.false, !prof !74

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 169) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %11 = ptrtoint ptr %vecp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vecp, align 4
  %tobool.not.i = icmp eq ptr %12, null
  %lv_iovecp3.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 2
  %13 = ptrtoint ptr %lv_iovecp3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lv_iovecp3.i, align 4
  br i1 %tobool.not.i, label %cond.end.if.end.i_crit_edge, label %if.then.i

cond.end.if.end.i_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %cond.end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 12
  %lv_niovecs.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 1
  %15 = ptrtoint ptr %lv_niovecs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lv_niovecs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %16)
  %cmp.i = icmp slt i32 %sub.ptr.div.i, %16
  br i1 %cmp.i, label %if.then.i.cond.end.i_crit_edge, label %cond.false.i, !prof !74

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 31) #9
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then.i.cond.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.xfs_log_iovec, ptr %12, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %cond.end.i, %cond.end.if.end.i_crit_edge
  %vec.0.i = phi ptr [ %incdec.ptr.i, %cond.end.i ], [ %14, %cond.end.if.end.i_crit_edge ]
  %i_type.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i, i32 0, i32 2
  %17 = ptrtoint ptr %i_type.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %i_type.i, align 4
  %lv_buf.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 4
  %18 = ptrtoint ptr %lv_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lv_buf.i, align 4
  %lv_buf_len.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 6
  %20 = ptrtoint ptr %lv_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lv_buf_len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %21
  %22 = ptrtoint ptr %vec.0.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %vec.0.i, align 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  %and.i194 = and i32 %23, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i194)
  %cmp5.i = icmp eq i32 %and.i194, 0
  br i1 %cmp5.i, label %if.end.i.xlog_prepare_iovec.exit_crit_edge, label %cond.false13.i, !prof !74

if.end.i.xlog_prepare_iovec.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xlog_prepare_iovec.exit

cond.false13.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 40) #9
  br label %xlog_prepare_iovec.exit

xlog_prepare_iovec.exit:                          ; preds = %cond.false13.i, %if.end.i.xlog_prepare_iovec.exit_crit_edge
  %24 = ptrtoint ptr %vecp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %vec.0.i, ptr %vecp, align 4
  %25 = ptrtoint ptr %vec.0.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vec.0.i, align 4
  %call15 = tail call i32 @xfs_iextents_copy(ptr noundef %1, ptr noundef %26, i32 noundef 0) #9
  %27 = ptrtoint ptr %vecp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vecp, align 4
  %sub.i = add i32 %call15, -1
  %or.i195 = or i32 %sub.i, 7
  %add.i = add i32 %or.i195, 1
  %29 = ptrtoint ptr %lv_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lv_buf_len.i, align 4
  %add1.i = add i32 %add.i, %30
  store i32 %add1.i, ptr %lv_buf_len.i, align 4
  %lv_bytes.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 5
  %31 = ptrtoint ptr %lv_bytes.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lv_bytes.i, align 4
  %add2.i = add i32 %32, %call15
  store i32 %add2.i, ptr %lv_bytes.i, align 4
  %i_len.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %i_len.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call15, ptr %i_len.i, align 4
  %conv16 = zext i32 %call15 to i64
  %34 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %i_df, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %conv16)
  %cmp19.not = icmp slt i64 %35, %conv16
  br i1 %cmp19.not, label %cond.false28, label %xlog_prepare_iovec.exit.cond.end29_crit_edge, !prof !75

xlog_prepare_iovec.exit.cond.end29_crit_edge:     ; preds = %xlog_prepare_iovec.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end29

cond.false28:                                     ; preds = %xlog_prepare_iovec.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 175) #9
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false28, %xlog_prepare_iovec.exit.cond.end29_crit_edge
  %conv30 = trunc i32 %call15 to i16
  %ilf_dsize = getelementptr inbounds %struct.xfs_inode_log_format, ptr %ilf, i32 0, i32 4
  %36 = ptrtoint ptr %ilf_dsize to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv30, ptr %ilf_dsize, align 2
  %ilf_size = getelementptr inbounds %struct.xfs_inode_log_format, ptr %ilf, i32 0, i32 1
  %37 = ptrtoint ptr %ilf_size to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ilf_size, align 2
  %inc = add i16 %38, 1
  store i16 %inc, ptr %ilf_size, align 2
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true5.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %and32 = and i32 %6, -31
  %39 = ptrtoint ptr %ili_fields to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and32, ptr %ili_fields, align 8
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %ili_fields34 = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 5
  %40 = ptrtoint ptr %ili_fields34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ili_fields34, align 8
  %and35 = and i32 %41, -23
  store i32 %and35, ptr %ili_fields34, align 8
  %and37 = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %sw.bb33.cond.end82_crit_edge, label %land.lhs.true39

sw.bb33.cond.end82_crit_edge:                     ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end82

land.lhs.true39:                                  ; preds = %sw.bb33
  %if_broot_bytes = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 5
  %42 = ptrtoint ptr %if_broot_bytes to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %if_broot_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp42 = icmp sgt i16 %43, 0
  br i1 %cmp42, label %if.then44, label %cond.false81

if.then44:                                        ; preds = %land.lhs.true39
  %if_broot = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 1
  %44 = ptrtoint ptr %if_broot to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %if_broot, align 8
  %cmp46.not = icmp eq ptr %45, null
  br i1 %cmp46.not, label %cond.false55, label %if.then44.cond.end56_crit_edge, !prof !75

if.then44.cond.end56_crit_edge:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end56

cond.false55:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 189) #9
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %if.then44.cond.end56_crit_edge
  %46 = ptrtoint ptr %if_broot to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %if_broot, align 8
  %48 = ptrtoint ptr %if_broot_bytes to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %if_broot_bytes, align 8
  %conv61 = sext i16 %49 to i32
  %50 = ptrtoint ptr %vecp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vecp, align 4
  %tobool.not.i.i = icmp eq ptr %51, null
  %lv_iovecp3.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 2
  %52 = ptrtoint ptr %lv_iovecp3.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lv_iovecp3.i.i, align 4
  br i1 %tobool.not.i.i, label %cond.end56.if.end.i.i_crit_edge, label %if.then.i.i

cond.end56.if.end.i.i_crit_edge:                  ; preds = %cond.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %cond.end56
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 12
  %lv_niovecs.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 1
  %54 = ptrtoint ptr %lv_niovecs.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lv_niovecs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i, i32 %55)
  %cmp.i.i = icmp slt i32 %sub.ptr.div.i.i, %55
  br i1 %cmp.i.i, label %if.then.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i, !prof !74

if.then.i.i.cond.end.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 31) #9
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.then.i.i.cond.end.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.xfs_log_iovec, ptr %51, i32 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %cond.end.i.i, %cond.end56.if.end.i.i_crit_edge
  %vec.0.i.i = phi ptr [ %incdec.ptr.i.i, %cond.end.i.i ], [ %53, %cond.end56.if.end.i.i_crit_edge ]
  %i_type.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %i_type.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 8, ptr %i_type.i.i, align 4
  %lv_buf.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 4
  %57 = ptrtoint ptr %lv_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lv_buf.i.i, align 4
  %lv_buf_len.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 6
  %59 = ptrtoint ptr %lv_buf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %lv_buf_len.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %58, i32 %60
  %61 = ptrtoint ptr %vec.0.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr.i.i, ptr %vec.0.i.i, align 4
  %62 = ptrtoint ptr %add.ptr.i.i to i32
  %and.i.i = and i32 %62, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp5.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp5.i.i, label %if.end.i.i.xlog_copy_iovec.exit_crit_edge, label %cond.false13.i.i, !prof !74

if.end.i.i.xlog_copy_iovec.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xlog_copy_iovec.exit

cond.false13.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 40) #9
  br label %xlog_copy_iovec.exit

xlog_copy_iovec.exit:                             ; preds = %cond.false13.i.i, %if.end.i.i.xlog_copy_iovec.exit_crit_edge
  %63 = ptrtoint ptr %vecp to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %vec.0.i.i, ptr %vecp, align 4
  %64 = ptrtoint ptr %vec.0.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vec.0.i.i, align 4
  %66 = call ptr @memcpy(ptr %65, ptr %47, i32 %conv61)
  %67 = load ptr, ptr %vecp, align 4
  %sub.i.i = add nsw i32 %conv61, -1
  %or.i.i = or i32 %sub.i.i, 7
  %add.i.i = add nsw i32 %or.i.i, 1
  %68 = ptrtoint ptr %lv_buf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lv_buf_len.i.i, align 4
  %add1.i.i = add i32 %add.i.i, %69
  store i32 %add1.i.i, ptr %lv_buf_len.i.i, align 4
  %lv_bytes.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 5
  %70 = ptrtoint ptr %lv_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %lv_bytes.i.i, align 4
  %add2.i.i = add i32 %71, %conv61
  store i32 %add2.i.i, ptr %lv_bytes.i.i, align 4
  %i_len.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %67, i32 0, i32 1
  %72 = ptrtoint ptr %i_len.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv61, ptr %i_len.i.i, align 4
  %73 = ptrtoint ptr %if_broot_bytes to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %if_broot_bytes, align 8
  %ilf_dsize65 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %ilf, i32 0, i32 4
  %75 = ptrtoint ptr %ilf_dsize65 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %ilf_dsize65, align 2
  %ilf_size66 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %ilf, i32 0, i32 1
  %76 = ptrtoint ptr %ilf_size66 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %ilf_size66, align 2
  %inc67 = add i16 %77, 1
  store i16 %inc67, ptr %ilf_size66, align 2
  br label %sw.epilog

cond.false81:                                     ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 197) #9
  br label %cond.end82

cond.end82:                                       ; preds = %cond.false81, %sw.bb33.cond.end82_crit_edge
  %78 = ptrtoint ptr %ili_fields34 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ili_fields34, align 8
  %and84 = and i32 %79, -9
  store i32 %and84, ptr %ili_fields34, align 8
  br label %sw.epilog

sw.bb86:                                          ; preds = %entry
  %ili_fields87 = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 5
  %80 = ptrtoint ptr %ili_fields87 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ili_fields87, align 8
  %and88 = and i32 %81, -29
  store i32 %and88, ptr %ili_fields87, align 8
  %and90 = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %sw.bb86.if.else134_crit_edge, label %land.lhs.true92

sw.bb86.if.else134_crit_edge:                     ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else134

land.lhs.true92:                                  ; preds = %sw.bb86
  %82 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %i_df, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %83)
  %cmp95 = icmp sgt i64 %83, 0
  br i1 %cmp95, label %if.then97, label %land.lhs.true92.if.else134_crit_edge

land.lhs.true92.if.else134_crit_edge:             ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else134

if.then97:                                        ; preds = %land.lhs.true92
  %add = add nuw i64 %83, 3
  %div = sdiv i64 %add, 4
  %div.tr = trunc i64 %div to i32
  %conv103 = shl i32 %div.tr, 2
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 4
  %84 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %if_u1, align 4
  %cmp105.not = icmp eq ptr %85, null
  br i1 %cmp105.not, label %cond.false114, label %if.then97.cond.end115_crit_edge, !prof !75

if.then97.cond.end115_crit_edge:                  ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end115

cond.false114:                                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 212) #9
  br label %cond.end115

cond.end115:                                      ; preds = %cond.false114, %if.then97.cond.end115_crit_edge
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 18
  %86 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %87)
  %cmp116 = icmp sgt i64 %87, 0
  br i1 %cmp116, label %cond.end115.cond.end126_crit_edge, label %cond.false125, !prof !74

cond.end115.cond.end126_crit_edge:                ; preds = %cond.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end126

cond.false125:                                    ; preds = %cond.end115
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 213) #9
  br label %cond.end126

cond.end126:                                      ; preds = %cond.false125, %cond.end115.cond.end126_crit_edge
  %88 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %if_u1, align 4
  %90 = ptrtoint ptr %vecp to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vecp, align 4
  %tobool.not.i.i197 = icmp eq ptr %91, null
  %lv_iovecp3.i.i198 = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 2
  %92 = ptrtoint ptr %lv_iovecp3.i.i198 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %lv_iovecp3.i.i198, align 4
  br i1 %tobool.not.i.i197, label %cond.end126.if.end.i.i216_crit_edge, label %if.then.i.i205

cond.end126.if.end.i.i216_crit_edge:              ; preds = %cond.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i216

if.then.i.i205:                                   ; preds = %cond.end126
  %sub.ptr.lhs.cast.i.i199 = ptrtoint ptr %91 to i32
  %sub.ptr.rhs.cast.i.i200 = ptrtoint ptr %93 to i32
  %sub.ptr.sub.i.i201 = sub i32 %sub.ptr.lhs.cast.i.i199, %sub.ptr.rhs.cast.i.i200
  %sub.ptr.div.i.i202 = sdiv exact i32 %sub.ptr.sub.i.i201, 12
  %lv_niovecs.i.i203 = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 1
  %94 = ptrtoint ptr %lv_niovecs.i.i203 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %lv_niovecs.i.i203, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i202, i32 %95)
  %cmp.i.i204 = icmp slt i32 %sub.ptr.div.i.i202, %95
  br i1 %cmp.i.i204, label %if.then.i.i205.cond.end.i.i208_crit_edge, label %cond.false.i.i206, !prof !74

if.then.i.i205.cond.end.i.i208_crit_edge:         ; preds = %if.then.i.i205
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i208

cond.false.i.i206:                                ; preds = %if.then.i.i205
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 31) #9
  br label %cond.end.i.i208

cond.end.i.i208:                                  ; preds = %cond.false.i.i206, %if.then.i.i205.cond.end.i.i208_crit_edge
  %incdec.ptr.i.i207 = getelementptr %struct.xfs_log_iovec, ptr %91, i32 1
  br label %if.end.i.i216

if.end.i.i216:                                    ; preds = %cond.end.i.i208, %cond.end126.if.end.i.i216_crit_edge
  %vec.0.i.i209 = phi ptr [ %incdec.ptr.i.i207, %cond.end.i.i208 ], [ %93, %cond.end126.if.end.i.i216_crit_edge ]
  %i_type.i.i210 = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i.i209, i32 0, i32 2
  %96 = ptrtoint ptr %i_type.i.i210 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 9, ptr %i_type.i.i210, align 4
  %lv_buf.i.i211 = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 4
  %97 = ptrtoint ptr %lv_buf.i.i211 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %lv_buf.i.i211, align 4
  %lv_buf_len.i.i212 = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 6
  %99 = ptrtoint ptr %lv_buf_len.i.i212 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %lv_buf_len.i.i212, align 4
  %add.ptr.i.i213 = getelementptr i8, ptr %98, i32 %100
  %101 = ptrtoint ptr %vec.0.i.i209 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %add.ptr.i.i213, ptr %vec.0.i.i209, align 4
  %102 = ptrtoint ptr %add.ptr.i.i213 to i32
  %and.i.i214 = and i32 %102, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i214)
  %cmp5.i.i215 = icmp eq i32 %and.i.i214, 0
  br i1 %cmp5.i.i215, label %if.end.i.i216.xlog_copy_iovec.exit225_crit_edge, label %cond.false13.i.i217, !prof !74

if.end.i.i216.xlog_copy_iovec.exit225_crit_edge:  ; preds = %if.end.i.i216
  call void @__sanitizer_cov_trace_pc() #11
  br label %xlog_copy_iovec.exit225

cond.false13.i.i217:                              ; preds = %if.end.i.i216
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 40) #9
  br label %xlog_copy_iovec.exit225

xlog_copy_iovec.exit225:                          ; preds = %cond.false13.i.i217, %if.end.i.i216.xlog_copy_iovec.exit225_crit_edge
  %103 = ptrtoint ptr %vecp to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %vec.0.i.i209, ptr %vecp, align 4
  %104 = ptrtoint ptr %vec.0.i.i209 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %vec.0.i.i209, align 4
  %106 = call ptr @memcpy(ptr %105, ptr %89, i32 %conv103)
  %107 = load ptr, ptr %vecp, align 4
  %sub.i.i218 = add i32 %conv103, -1
  %or.i.i219 = or i32 %sub.i.i218, 7
  %add.i.i220 = add i32 %or.i.i219, 1
  %108 = ptrtoint ptr %lv_buf_len.i.i212 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %lv_buf_len.i.i212, align 4
  %add1.i.i221 = add i32 %add.i.i220, %109
  store i32 %add1.i.i221, ptr %lv_buf_len.i.i212, align 4
  %lv_bytes.i.i222 = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 5
  %110 = ptrtoint ptr %lv_bytes.i.i222 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %lv_bytes.i.i222, align 4
  %add2.i.i223 = add i32 %111, %conv103
  store i32 %add2.i.i223, ptr %lv_bytes.i.i222, align 4
  %i_len.i.i224 = getelementptr inbounds %struct.xfs_log_iovec, ptr %107, i32 0, i32 1
  %112 = ptrtoint ptr %i_len.i.i224 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %conv103, ptr %i_len.i.i224, align 4
  %conv130 = trunc i32 %conv103 to i16
  %ilf_dsize131 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %ilf, i32 0, i32 4
  %113 = ptrtoint ptr %ilf_dsize131 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv130, ptr %ilf_dsize131, align 2
  %ilf_size132 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %ilf, i32 0, i32 1
  %114 = ptrtoint ptr %ilf_size132 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %ilf_size132, align 2
  %inc133 = add i16 %115, 1
  store i16 %inc133, ptr %ilf_size132, align 2
  br label %sw.epilog

if.else134:                                       ; preds = %land.lhs.true92.if.else134_crit_edge, %sw.bb86.if.else134_crit_edge
  %and136 = and i32 %81, -31
  %116 = ptrtoint ptr %ili_fields87 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %and136, ptr %ili_fields87, align 8
  br label %sw.epilog

sw.bb138:                                         ; preds = %entry
  %ili_fields139 = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 5
  %117 = ptrtoint ptr %ili_fields139 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ili_fields139, align 8
  %and140 = and i32 %118, -15
  store i32 %and140, ptr %ili_fields139, align 8
  %and142 = and i32 %118, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %sw.bb138.sw.epilog_crit_edge, label %if.then144

sw.bb138.sw.epilog_crit_edge:                     ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then144:                                       ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #11
  %i_rdev = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 27, i32 13
  %119 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %i_rdev, align 8
  %and.i = and i32 %120, 1048575
  %121 = lshr i32 %120, 2
  %shl.i = and i32 %121, 1073479680
  %or.i = or i32 %shl.i, %and.i
  %ilf_u = getelementptr inbounds %struct.xfs_inode_log_format, ptr %ilf, i32 0, i32 7
  %122 = ptrtoint ptr %ilf_u to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %or.i, ptr %ilf_u, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 229) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then144, %sw.bb138.sw.epilog_crit_edge, %if.else134, %xlog_copy_iovec.exit225, %cond.end82, %xlog_copy_iovec.exit, %if.else, %cond.end29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_inode_item_format_attr_fork(ptr nocapture noundef %iip, ptr nocapture noundef %ilf, ptr nocapture noundef %lv, ptr nocapture noundef %vecp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ili_inode = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 1
  %0 = ptrtoint ptr %ili_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ili_inode, align 8
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_afp, align 8
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_format, align 2
  %conv = sext i8 %5 to i32
  %6 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb21
    i32 1, label %sw.bb60
  ]

sw.bb:                                            ; preds = %entry
  %ili_fields = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 5
  %7 = ptrtoint ptr %ili_fields to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ili_fields, align 8
  %and = and i32 %8, -321
  store i32 %and, ptr %ili_fields, align 8
  %and2 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %sw.bb.if.else_crit_edge, label %land.lhs.true

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %9 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_afp, align 8
  %if_nextents = getelementptr inbounds %struct.xfs_ifork, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp sgt i32 %12, 0
  br i1 %cmp, label %land.lhs.true5, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %10, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp7 = icmp sgt i64 %14, 0
  br i1 %cmp7, label %if.then, label %land.lhs.true5.if.else_crit_edge

land.lhs.true5.if.else_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true5
  %call = tail call i32 @xfs_iext_count(ptr noundef %10) #9
  %15 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_afp, align 8
  %if_nextents11 = getelementptr inbounds %struct.xfs_ifork, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %if_nextents11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %if_nextents11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %18)
  %cmp12 = icmp eq i32 %call, %18
  br i1 %cmp12, label %if.then.cond.end_crit_edge, label %cond.false, !prof !74

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 255) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %19 = ptrtoint ptr %vecp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vecp, align 4
  %tobool.not.i = icmp eq ptr %20, null
  %lv_iovecp3.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 2
  %21 = ptrtoint ptr %lv_iovecp3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lv_iovecp3.i, align 4
  br i1 %tobool.not.i, label %cond.end.if.end.i_crit_edge, label %if.then.i

cond.end.if.end.i_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %cond.end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 12
  %lv_niovecs.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 1
  %23 = ptrtoint ptr %lv_niovecs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lv_niovecs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %24)
  %cmp.i = icmp slt i32 %sub.ptr.div.i, %24
  br i1 %cmp.i, label %if.then.i.cond.end.i_crit_edge, label %cond.false.i, !prof !74

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 31) #9
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then.i.cond.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.xfs_log_iovec, ptr %20, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %cond.end.i, %cond.end.if.end.i_crit_edge
  %vec.0.i = phi ptr [ %incdec.ptr.i, %cond.end.i ], [ %22, %cond.end.if.end.i_crit_edge ]
  %i_type.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i, i32 0, i32 2
  %25 = ptrtoint ptr %i_type.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10, ptr %i_type.i, align 4
  %lv_buf.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 4
  %26 = ptrtoint ptr %lv_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lv_buf.i, align 4
  %lv_buf_len.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 6
  %28 = ptrtoint ptr %lv_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lv_buf_len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 %29
  %30 = ptrtoint ptr %vec.0.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i, ptr %vec.0.i, align 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  %and.i = and i32 %31, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp5.i = icmp eq i32 %and.i, 0
  br i1 %cmp5.i, label %if.end.i.xlog_prepare_iovec.exit_crit_edge, label %cond.false13.i, !prof !74

if.end.i.xlog_prepare_iovec.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xlog_prepare_iovec.exit

cond.false13.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 40) #9
  br label %xlog_prepare_iovec.exit

xlog_prepare_iovec.exit:                          ; preds = %cond.false13.i, %if.end.i.xlog_prepare_iovec.exit_crit_edge
  %32 = ptrtoint ptr %vecp to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %vec.0.i, ptr %vecp, align 4
  %33 = ptrtoint ptr %vec.0.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vec.0.i, align 4
  %call17 = tail call i32 @xfs_iextents_copy(ptr noundef %1, ptr noundef %34, i32 noundef 1) #9
  %35 = ptrtoint ptr %vecp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vecp, align 4
  %sub.i = add i32 %call17, -1
  %or.i = or i32 %sub.i, 7
  %add.i = add i32 %or.i, 1
  %37 = ptrtoint ptr %lv_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lv_buf_len.i, align 4
  %add1.i = add i32 %add.i, %38
  store i32 %add1.i, ptr %lv_buf_len.i, align 4
  %lv_bytes.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 5
  %39 = ptrtoint ptr %lv_bytes.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lv_bytes.i, align 4
  %add2.i = add i32 %40, %call17
  store i32 %add2.i, ptr %lv_bytes.i, align 4
  %i_len.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %i_len.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call17, ptr %i_len.i, align 4
  %conv18 = trunc i32 %call17 to i16
  %ilf_asize = getelementptr inbounds %struct.xfs_inode_log_format, ptr %ilf, i32 0, i32 3
  %42 = ptrtoint ptr %ilf_asize to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv18, ptr %ilf_asize, align 8
  %ilf_size = getelementptr inbounds %struct.xfs_inode_log_format, ptr %ilf, i32 0, i32 1
  %43 = ptrtoint ptr %ilf_size to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ilf_size, align 2
  %inc = add i16 %44, 1
  store i16 %inc, ptr %ilf_size, align 2
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true5.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %and20 = and i32 %8, -449
  %45 = ptrtoint ptr %ili_fields to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and20, ptr %ili_fields, align 8
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %ili_fields22 = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 5
  %46 = ptrtoint ptr %ili_fields22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ili_fields22, align 8
  %and23 = and i32 %47, -193
  store i32 %and23, ptr %ili_fields22, align 8
  %and25 = and i32 %47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %sw.bb21.if.else56_crit_edge, label %land.lhs.true27

sw.bb21.if.else56_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else56

land.lhs.true27:                                  ; preds = %sw.bb21
  %48 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_afp, align 8
  %if_broot_bytes = getelementptr inbounds %struct.xfs_ifork, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %if_broot_bytes to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %if_broot_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp30 = icmp sgt i16 %51, 0
  br i1 %cmp30, label %if.then32, label %land.lhs.true27.if.else56_crit_edge

land.lhs.true27.if.else56_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else56

if.then32:                                        ; preds = %land.lhs.true27
  %if_broot = getelementptr inbounds %struct.xfs_ifork, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %if_broot to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %if_broot, align 8
  %cmp34.not = icmp eq ptr %53, null
  br i1 %cmp34.not, label %cond.false43, label %if.then32.cond.end44_crit_edge, !prof !75

if.then32.cond.end44_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end44

cond.false43:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 273) #9
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false43, %if.then32.cond.end44_crit_edge
  %54 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_afp, align 8
  %if_broot46 = getelementptr inbounds %struct.xfs_ifork, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %if_broot46 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %if_broot46, align 8
  %if_broot_bytes48 = getelementptr inbounds %struct.xfs_ifork, ptr %55, i32 0, i32 5
  %58 = ptrtoint ptr %if_broot_bytes48 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %if_broot_bytes48, align 8
  %conv49 = sext i16 %59 to i32
  %60 = ptrtoint ptr %vecp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vecp, align 4
  %tobool.not.i.i = icmp eq ptr %61, null
  %lv_iovecp3.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 2
  %62 = ptrtoint ptr %lv_iovecp3.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lv_iovecp3.i.i, align 4
  br i1 %tobool.not.i.i, label %cond.end44.if.end.i.i_crit_edge, label %if.then.i.i

cond.end44.if.end.i.i_crit_edge:                  ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %cond.end44
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 12
  %lv_niovecs.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 1
  %64 = ptrtoint ptr %lv_niovecs.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %lv_niovecs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i, i32 %65)
  %cmp.i.i = icmp slt i32 %sub.ptr.div.i.i, %65
  br i1 %cmp.i.i, label %if.then.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i, !prof !74

if.then.i.i.cond.end.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 31) #9
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.then.i.i.cond.end.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.xfs_log_iovec, ptr %61, i32 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %cond.end.i.i, %cond.end44.if.end.i.i_crit_edge
  %vec.0.i.i = phi ptr [ %incdec.ptr.i.i, %cond.end.i.i ], [ %63, %cond.end44.if.end.i.i_crit_edge ]
  %i_type.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %i_type.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 11, ptr %i_type.i.i, align 4
  %lv_buf.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 4
  %67 = ptrtoint ptr %lv_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lv_buf.i.i, align 4
  %lv_buf_len.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 6
  %69 = ptrtoint ptr %lv_buf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lv_buf_len.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %68, i32 %70
  %71 = ptrtoint ptr %vec.0.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr.i.i, ptr %vec.0.i.i, align 4
  %72 = ptrtoint ptr %add.ptr.i.i to i32
  %and.i.i = and i32 %72, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp5.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp5.i.i, label %if.end.i.i.xlog_copy_iovec.exit_crit_edge, label %cond.false13.i.i, !prof !74

if.end.i.i.xlog_copy_iovec.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xlog_copy_iovec.exit

cond.false13.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 40) #9
  br label %xlog_copy_iovec.exit

xlog_copy_iovec.exit:                             ; preds = %cond.false13.i.i, %if.end.i.i.xlog_copy_iovec.exit_crit_edge
  %73 = ptrtoint ptr %vecp to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %vec.0.i.i, ptr %vecp, align 4
  %74 = ptrtoint ptr %vec.0.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vec.0.i.i, align 4
  %76 = call ptr @memcpy(ptr %75, ptr %57, i32 %conv49)
  %77 = load ptr, ptr %vecp, align 4
  %sub.i.i = add nsw i32 %conv49, -1
  %or.i.i = or i32 %sub.i.i, 7
  %add.i.i = add nsw i32 %or.i.i, 1
  %78 = ptrtoint ptr %lv_buf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lv_buf_len.i.i, align 4
  %add1.i.i = add i32 %add.i.i, %79
  store i32 %add1.i.i, ptr %lv_buf_len.i.i, align 4
  %lv_bytes.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 5
  %80 = ptrtoint ptr %lv_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %lv_bytes.i.i, align 4
  %add2.i.i = add i32 %81, %conv49
  store i32 %add2.i.i, ptr %lv_bytes.i.i, align 4
  %i_len.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %77, i32 0, i32 1
  %82 = ptrtoint ptr %i_len.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv49, ptr %i_len.i.i, align 4
  %83 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i_afp, align 8
  %if_broot_bytes52 = getelementptr inbounds %struct.xfs_ifork, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %if_broot_bytes52 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %if_broot_bytes52, align 8
  %ilf_asize53 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %ilf, i32 0, i32 3
  %87 = ptrtoint ptr %ilf_asize53 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %ilf_asize53, align 8
  %ilf_size54 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %ilf, i32 0, i32 1
  %88 = ptrtoint ptr %ilf_size54 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %ilf_size54, align 2
  %inc55 = add i16 %89, 1
  store i16 %inc55, ptr %ilf_size54, align 2
  br label %sw.epilog

if.else56:                                        ; preds = %land.lhs.true27.if.else56_crit_edge, %sw.bb21.if.else56_crit_edge
  %and58 = and i32 %47, -449
  %90 = ptrtoint ptr %ili_fields22 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %and58, ptr %ili_fields22, align 8
  br label %sw.epilog

sw.bb60:                                          ; preds = %entry
  %ili_fields61 = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 5
  %91 = ptrtoint ptr %ili_fields61 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ili_fields61, align 8
  %and62 = and i32 %92, -385
  store i32 %and62, ptr %ili_fields61, align 8
  %and64 = and i32 %92, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %sw.bb60.if.else97_crit_edge, label %land.lhs.true66

sw.bb60.if.else97_crit_edge:                      ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else97

land.lhs.true66:                                  ; preds = %sw.bb60
  %93 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i_afp, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %94, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %96)
  %cmp69 = icmp sgt i64 %96, 0
  br i1 %cmp69, label %if.then71, label %land.lhs.true66.if.else97_crit_edge

land.lhs.true66.if.else97_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else97

if.then71:                                        ; preds = %land.lhs.true66
  %add = add nuw i64 %96, 3
  %div = sdiv i64 %add, 4
  %div.tr = trunc i64 %div to i32
  %conv77 = shl i32 %div.tr, 2
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %94, i32 0, i32 4
  %97 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %if_u1, align 4
  %cmp79.not = icmp eq ptr %98, null
  br i1 %cmp79.not, label %cond.false88, label %if.then71.cond.end89_crit_edge, !prof !75

if.then71.cond.end89_crit_edge:                   ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end89

cond.false88:                                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 296) #9
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false88, %if.then71.cond.end89_crit_edge
  %99 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i_afp, align 8
  %if_u191 = getelementptr inbounds %struct.xfs_ifork, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %if_u191 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %if_u191, align 4
  %103 = ptrtoint ptr %vecp to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %vecp, align 4
  %tobool.not.i.i141 = icmp eq ptr %104, null
  %lv_iovecp3.i.i142 = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 2
  %105 = ptrtoint ptr %lv_iovecp3.i.i142 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %lv_iovecp3.i.i142, align 4
  br i1 %tobool.not.i.i141, label %cond.end89.if.end.i.i160_crit_edge, label %if.then.i.i149

cond.end89.if.end.i.i160_crit_edge:               ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i160

if.then.i.i149:                                   ; preds = %cond.end89
  %sub.ptr.lhs.cast.i.i143 = ptrtoint ptr %104 to i32
  %sub.ptr.rhs.cast.i.i144 = ptrtoint ptr %106 to i32
  %sub.ptr.sub.i.i145 = sub i32 %sub.ptr.lhs.cast.i.i143, %sub.ptr.rhs.cast.i.i144
  %sub.ptr.div.i.i146 = sdiv exact i32 %sub.ptr.sub.i.i145, 12
  %lv_niovecs.i.i147 = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 1
  %107 = ptrtoint ptr %lv_niovecs.i.i147 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %lv_niovecs.i.i147, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i146, i32 %108)
  %cmp.i.i148 = icmp slt i32 %sub.ptr.div.i.i146, %108
  br i1 %cmp.i.i148, label %if.then.i.i149.cond.end.i.i152_crit_edge, label %cond.false.i.i150, !prof !74

if.then.i.i149.cond.end.i.i152_crit_edge:         ; preds = %if.then.i.i149
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i152

cond.false.i.i150:                                ; preds = %if.then.i.i149
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 31) #9
  br label %cond.end.i.i152

cond.end.i.i152:                                  ; preds = %cond.false.i.i150, %if.then.i.i149.cond.end.i.i152_crit_edge
  %incdec.ptr.i.i151 = getelementptr %struct.xfs_log_iovec, ptr %104, i32 1
  br label %if.end.i.i160

if.end.i.i160:                                    ; preds = %cond.end.i.i152, %cond.end89.if.end.i.i160_crit_edge
  %vec.0.i.i153 = phi ptr [ %incdec.ptr.i.i151, %cond.end.i.i152 ], [ %106, %cond.end89.if.end.i.i160_crit_edge ]
  %i_type.i.i154 = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i.i153, i32 0, i32 2
  %109 = ptrtoint ptr %i_type.i.i154 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 12, ptr %i_type.i.i154, align 4
  %lv_buf.i.i155 = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 4
  %110 = ptrtoint ptr %lv_buf.i.i155 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %lv_buf.i.i155, align 4
  %lv_buf_len.i.i156 = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 6
  %112 = ptrtoint ptr %lv_buf_len.i.i156 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %lv_buf_len.i.i156, align 4
  %add.ptr.i.i157 = getelementptr i8, ptr %111, i32 %113
  %114 = ptrtoint ptr %vec.0.i.i153 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %add.ptr.i.i157, ptr %vec.0.i.i153, align 4
  %115 = ptrtoint ptr %add.ptr.i.i157 to i32
  %and.i.i158 = and i32 %115, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i158)
  %cmp5.i.i159 = icmp eq i32 %and.i.i158, 0
  br i1 %cmp5.i.i159, label %if.end.i.i160.xlog_copy_iovec.exit169_crit_edge, label %cond.false13.i.i161, !prof !74

if.end.i.i160.xlog_copy_iovec.exit169_crit_edge:  ; preds = %if.end.i.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %xlog_copy_iovec.exit169

cond.false13.i.i161:                              ; preds = %if.end.i.i160
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 40) #9
  br label %xlog_copy_iovec.exit169

xlog_copy_iovec.exit169:                          ; preds = %cond.false13.i.i161, %if.end.i.i160.xlog_copy_iovec.exit169_crit_edge
  %116 = ptrtoint ptr %vecp to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %vec.0.i.i153, ptr %vecp, align 4
  %117 = ptrtoint ptr %vec.0.i.i153 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %vec.0.i.i153, align 4
  %119 = call ptr @memcpy(ptr %118, ptr %102, i32 %conv77)
  %120 = load ptr, ptr %vecp, align 4
  %sub.i.i162 = add i32 %conv77, -1
  %or.i.i163 = or i32 %sub.i.i162, 7
  %add.i.i164 = add i32 %or.i.i163, 1
  %121 = ptrtoint ptr %lv_buf_len.i.i156 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %lv_buf_len.i.i156, align 4
  %add1.i.i165 = add i32 %add.i.i164, %122
  store i32 %add1.i.i165, ptr %lv_buf_len.i.i156, align 4
  %lv_bytes.i.i166 = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 5
  %123 = ptrtoint ptr %lv_bytes.i.i166 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %lv_bytes.i.i166, align 4
  %add2.i.i167 = add i32 %124, %conv77
  store i32 %add2.i.i167, ptr %lv_bytes.i.i166, align 4
  %i_len.i.i168 = getelementptr inbounds %struct.xfs_log_iovec, ptr %120, i32 0, i32 1
  %125 = ptrtoint ptr %i_len.i.i168 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv77, ptr %i_len.i.i168, align 4
  %conv93 = trunc i32 %conv77 to i16
  %ilf_asize94 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %ilf, i32 0, i32 3
  %126 = ptrtoint ptr %ilf_asize94 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv93, ptr %ilf_asize94, align 8
  %ilf_size95 = getelementptr inbounds %struct.xfs_inode_log_format, ptr %ilf, i32 0, i32 1
  %127 = ptrtoint ptr %ilf_size95 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %ilf_size95, align 2
  %inc96 = add i16 %128, 1
  store i16 %inc96, ptr %ilf_size95, align 2
  br label %sw.epilog

if.else97:                                        ; preds = %land.lhs.true66.if.else97_crit_edge, %sw.bb60.if.else97_crit_edge
  %and99 = and i32 %92, -449
  %129 = ptrtoint ptr %ili_fields61 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %and99, ptr %ili_fields61, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 307) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else97, %xlog_copy_iovec.exit169, %if.else56, %xlog_copy_iovec.exit, %if.else, %xlog_prepare_iovec.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_buf_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iext_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iextents_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inode_pin(ptr noundef %ip, i32 noundef %caller_ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_pin, i32 0, i32 1), ptr blockaddress(@trace_xfs_inode_pin, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !74

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  %call42 = tail call i32 @__traceiter_xfs_inode_pin(ptr noundef null, ptr noundef %ip, i32 noundef %caller_ip) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !74

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_pin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_pin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inode_pin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xfs_inode_pin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 931, ptr noundef nonnull @.str.20) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #9
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inode_pin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inode_unpin(ptr noundef %ip, i32 noundef %caller_ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_unpin, i32 0, i32 1), ptr blockaddress(@trace_xfs_inode_unpin, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !74

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !85
  %call42 = tail call i32 @__traceiter_xfs_inode_unpin(ptr noundef null, ptr noundef %ip, i32 noundef %caller_ip) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !86
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !74

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_unpin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_unpin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inode_unpin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xfs_inode_unpin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 932, ptr noundef nonnull @.str.20) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #9
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
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inode_unpin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iflush_cluster(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_buf_delwri_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_ail_delete_one(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ail_update_finish(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !53, !55, !57, !58, !60, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_inode_item.c", i32 674, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @xfs_inode_item_init.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_inode_item.c", i32 679, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/xfs/xfs_inode_item.c", i32 693, i32 2}
!8 = !{ptr @__func__.xfs_inode_item_format_convert, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_inode_item.c", i32 877, i32 3}
!10 = !{ptr @xfs_ili_cache, !11, !"xfs_ili_cache", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_inode_item.c", i32 24, i32 20}
!12 = !{ptr @xfs_inode_item_ops, !13, !"xfs_inode_item_ops", i1 false, i1 false}
!13 = !{!"../fs/xfs/xfs_inode_item.c", i32 652, i32 34}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/xfs/xfs_inode_item.c", i32 81, i32 3}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/xfs/xfs_log.h", i32 31, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_log.h", i32 40, i32 2}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_inode_item.c", i32 169, i32 4}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_inode_item.c", i32 175, i32 4}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_inode_item.c", i32 189, i32 4}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_inode_item.c", i32 196, i32 4}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_inode_item.c", i32 212, i32 4}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_inode_item.c", i32 213, i32 4}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_inode_item.c", i32 254, i32 4}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/xfs_inode_item.c", i32 273, i32 4}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/xfs_inode_item.c", i32 296, i32 4}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/xfs_inode_item.c", i32 499, i32 2}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/xfs_inode_item.c", i32 500, i32 2}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../fs/xfs/xfs_trace.h", i32 931, i32 1}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!47 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_inode_item.c", i32 527, i32 2}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/xfs/xfs_inode_item.c", i32 528, i32 2}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../fs/xfs/xfs_trace.h", i32 932, i32 1}
!57 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/xfs/xfs_inode_item.c", i32 546, i32 2}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/xfs/xfs_inode_item.c", i32 597, i32 2}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/xfs/xfs_inode_item.c", i32 754, i32 3}
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
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i64 2148640017, i64 2148640043, i64 2148640072, i64 2148640106, i64 2148640137, i64 2148640160}
!77 = !{i64 2148728493}
!78 = !{i64 2148643202, i64 2148643234, i64 2148643263, i64 2148643297, i64 2148643328, i64 2148643351}
!79 = !{i64 2148728722}
!80 = !{i64 2148268005, i64 2148268010, i64 2148268023, i64 2148268067, i64 2148268101, i64 2148268122}
!81 = !{i64 2158411755}
!82 = !{i64 2158411970}
!83 = !{i64 2149970098}
!84 = !{i64 2149971134}
!85 = !{i64 2158432391}
!86 = !{i64 2158432610}
