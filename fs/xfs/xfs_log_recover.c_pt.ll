; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_log_recover.c_pt.bc'
source_filename = "../fs/xfs/xfs_log_recover.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_globals = type { i32, i32, i32, i8, i8 }
%struct.uuid_t = type { [16 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xlog_recover_item_ops = type { i16, ptr, ptr, ptr, ptr }
%struct.xfs_ail_cursor = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.xlog = type { ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i32, i32, i32, i64, i32, i32, [88 x i8], %struct.wait_queue_head, i32, ptr, %struct.spinlock, i32, i32, i32, i32, [8 x i8], %struct.atomic64_t, [120 x i8], %struct.atomic64_t, [120 x i8], %struct.xlog_grant_head, %struct.xlog_grant_head, %struct.xfs_kobj, [8 x ptr], i64, i32, %struct.rw_semaphore, [52 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.xlog_grant_head = type { %struct.spinlock, %struct.list_head, %struct.atomic64_t, [64 x i8] }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_ail = type { ptr, ptr, %struct.list_head, i64, i64, %struct.list_head, %struct.spinlock, i64, i32, %struct.list_head, %struct.wait_queue_head }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_item_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
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
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xlog_rec_header = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, [64 x i32], i32, %struct.uuid_t, i32 }
%struct.xfs_buftarg = type { i32, ptr, ptr, i64, ptr, i32, i32, i32, i32, %struct.shrinker, %struct.list_lru, %struct.percpu_counter, %struct.ratelimit_state }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xfs_defer_resources = type { [2 x ptr], [2 x ptr], i16, i16, i16 }
%struct.xfs_defer_capture = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.xfs_defer_resources }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.xfs_agi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i32], %struct.uuid_t, i32, i32, i64, i32, i32, i32, i32 }
%struct.xlog_op_header = type { i32, i32, i8, i8, i16 }
%struct.hlist_head = type { ptr }
%struct.xlog_recover = type { %struct.hlist_node, i32, %struct.xfs_trans_header, i32, i64, %struct.list_head }
%struct.xfs_trans_header = type { i32, i32, i32, i32 }
%struct.xlog_recover_item = type { %struct.list_head, i32, i32, ptr, ptr }
%struct.xfs_log_iovec = type { ptr, i32, i32 }
%union.xlog_in_core2 = type { %struct.xlog_rec_header, [184 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_inode_log_format = type { i16, i16, i32, i16, i16, i32, i64, %union.anon.92, i64, i32, i32 }
%union.anon.92 = type { i32, [12 x i8] }
%struct.xfs_dinode = type { i16, i16, i8, i8, i16, i32, i32, i32, i16, i16, [6 x i8], i16, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, i16, i16, i32, i32, i32, i64, i64, i64, i32, [12 x i8], i64, i64, %struct.uuid_t }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"recovery\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Superblock has unknown incompatible log features (0x%x) enabled.\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"The log can not be fully and/or safely recovered by this kernel.\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Please recover the log on a kernel that supports the unknown features.\00", [57 x i8] zeroinitializer }, align 32
@xfs_globals = external dso_local local_unnamed_addr global %struct.xfs_globals, align 4
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Delaying log recovery for %d seconds.\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Starting recovery (logdev: %s)\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to recover intents\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/xfs/xfs_log_recover.c\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to clear log incompat features on recovery\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Failed to recover leftover CoW staging extents, err %d.\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"*head_blk < INT_MAX\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: couldn't find sync record\00", [34 x i8] zeroinitializer }, align 32
@__func__.xlog_find_tail = private unnamed_addr constant [15 x i8] c"xlog_find_tail\00", align 1
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to locate log tail\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"empty log check failed\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"totally zeroed log\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"last_half_cycle != 0\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"head_blk <= INT_MAX\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"start_blk <= INT_MAX && (xfs_daddr_t) log_bbnum-start_blk >= 0\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to find log head\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"(mid_blk == first_blk && mid_blk+1 == end_blk) || (mid_blk == end_blk && mid_blk-1 == first_blk)\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"start_blk != 0 || *last_blk != start_blk\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Log inconsistent (didn't find previous header)\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"head->h_magicno == cpu_to_be32(XLOG_HEADER_MAGIC_NUM)\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"null uuid in log - IRIX style log\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"!uuid_equal(&mp->m_sb.sb_uuid, &head->h_fs_uuid)\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"log has mismatched uuid - can't recover\00", [56 x i8] zeroinitializer }, align 32
@uuid_null = external dso_local constant %struct.uuid_t, align 1
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:  SB : uuid = %pU, fmt = %d\00", [33 x i8] zeroinitializer }, align 32
@__func__.xlog_header_check_dump = private unnamed_addr constant [23 x i8] c"xlog_header_check_dump\00", align 1
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"    log : uuid = %pU, fmt = %d\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"!xlog_verify_bno(log, 0, nbblks)\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid block length (0x%x) for buffer\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"!xlog_verify_bno(log, blk_no, nbblks)\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Invalid log block/length (0x%llx, 0x%x) for buffer\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nbblks > 0\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"log recovery %s I/O error at daddr 0x%llx len %d error %d\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Torn write (CRC failure) detected at log block 0x%llx. Truncating head block from 0x%llx.\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"head_blk != tail_blk\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"invalid iclog size (%d bytes), using lsunit (%d bytes)\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"log->l_sectBBsize == 1\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"split_hblks > 0\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"!wrapped_hblks\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"split_bblks > 0\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"rhead->h_magicno != cpu_to_be32(XLOG_HEADER_MAGIC_NUM)\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"(!rhead->h_version || (be32_to_cpu(rhead->h_version) & (~XLOG_VERSION_OKBITS)))\00", [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: unrecognised log version (%d).\00", [61 x i8] zeroinitializer }, align 32
@__func__.xlog_valid_rec_header = private unnamed_addr constant [22 x i8] c"xlog_valid_rec_header\00", align 1
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hlen <= 0 || hlen > bufsize\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"blkno > log->l_logBBsize || blkno > INT_MAX\00", [52 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"log record CRC mismatch: found 0x%x, expected 0x%x.\00", [44 x i8] zeroinitializer }, align 32
@__func__.xlog_recover_process = private unnamed_addr constant [21 x i8] c"xlog_recover_process\00", align 1
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dp <= end\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"head->h_fmt != cpu_to_be32(XLOG_FMT)\00", [59 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"dirty log written in incompatible format - can't recover\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"dirty log entry has mismatched uuid - can't recover\00", [44 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_log_recover_record = external dso_local global %struct.tracepoint, align 4
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_log_recover_record.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: bad clientid 0x%x\00", [42 x i8] zeroinitializer }, align 32
@__func__.xlog_recover_process_ophdr = private unnamed_addr constant [27 x i8] c"xlog_recover_process_ophdr\00", align 1
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: bad length 0x%x\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"be32_to_cpu(ohead->oh_len) == 0\00", [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: Unmount LR\00", [17 x i8] zeroinitializer }, align 32
@__func__.xlog_recovery_process_trans = private unnamed_addr constant [28 x i8] c"xlog_recovery_process_trans\00", align 1
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: bad flag 0x%x\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: bad header magic number\00", [36 x i8] zeroinitializer }, align 32
@__func__.xlog_recover_add_to_trans = private unnamed_addr constant [26 x i8] c"xlog_recover_add_to_trans\00", align 1
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: bad header length\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"bad number of regions (%d) in inode log format\00", [49 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"log item region count (%d) overflowed size (%d)\00", [48 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_log_recover_item_add = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_recover_item_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"len <= sizeof(struct xfs_trans_header)\00", [57 x i8] zeroinitializer }, align 32
@__func__.xlog_recover_add_to_cont_trans = private unnamed_addr constant [31 x i8] c"xlog_recover_add_to_cont_trans\00", align 1
@__tracepoint_xfs_log_recover_item_add_cont = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_recover_item_add_cont.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: unrecognized type of log operation (%d)\00", [52 x i8] zeroinitializer }, align 32
@__func__.xlog_recover_reorder_trans = private unnamed_addr constant [27 x i8] c"xlog_recover_reorder_trans\00", align 1
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"list_empty(&sort_list)\00", [41 x i8] zeroinitializer }, align 32
@xlog_buf_item_ops = external dso_local constant %struct.xlog_recover_item_ops, align 4
@xlog_inode_item_ops = external dso_local constant %struct.xlog_recover_item_ops, align 4
@xlog_dquot_item_ops = external dso_local constant %struct.xlog_recover_item_ops, align 4
@xlog_quotaoff_item_ops = external dso_local constant %struct.xlog_recover_item_ops, align 4
@xlog_icreate_item_ops = external dso_local constant %struct.xlog_recover_item_ops, align 4
@xlog_efi_item_ops = external dso_local constant %struct.xlog_recover_item_ops, align 4
@xlog_efd_item_ops = external dso_local constant %struct.xlog_recover_item_ops, align 4
@xlog_rui_item_ops = external dso_local constant %struct.xlog_recover_item_ops, align 4
@xlog_rud_item_ops = external dso_local constant %struct.xlog_recover_item_ops, align 4
@xlog_cui_item_ops = external dso_local constant %struct.xlog_recover_item_ops, align 4
@xlog_cud_item_ops = external dso_local constant %struct.xlog_recover_item_ops, align 4
@xlog_bui_item_ops = external dso_local constant %struct.xlog_recover_item_ops, align 4
@xlog_bud_item_ops = external dso_local constant %struct.xlog_recover_item_ops, align 4
@__tracepoint_xfs_log_recover_item_reorder_head = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_recover_item_reorder_head.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_log_recover_item_reorder_tail = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_recover_item_reorder_tail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_log_recover_item_recover = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_recover_item_recover.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.74 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Tail block (0x%llx) overwrite detected. Updated to 0x%llx\00", [38 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"head_block < tail_block || head_block >= log->l_logBBsize\00", [38 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"head_block >= tail_block || head_cycle != tail_cycle + 1\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tail_distance == 0\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed post-recovery per-ag init: %d\00", [59 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_log_recover = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_recover.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.79 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"list_empty(&log->l_buf_cancel_table[i])\00", [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"!xlog_item_is_intent(lip)\00", [38 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"XFS_LSN_CMP(last_lsn, lip->li_lsn) >= 0\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_xlog_intent_recovery_failed = external dso_local global %struct.tracepoint, align 4
@trace_xlog_intent_recovery_failed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"list_empty(capture_list)\00", [39 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VFS_I(ip)->i_nlink == 0\00", [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VFS_I(ip)->i_mode != 0\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: failed to clear agi %d. Continuing.\00", [56 x i8] zeroinitializer }, align 32
@__func__.xlog_recover_clear_agi_bucket = private unnamed_addr constant [30 x i8] c"xlog_recover_clear_agi_bucket\00", align 1
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s agf read failed agno %d error %d\00", [60 x i8] zeroinitializer }, align 32
@__func__.xlog_recover_check_summary = private unnamed_addr constant [27 x i8] c"xlog_recover_check_summary\00", align 1
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s agi read failed agno %d error %d\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967179, i64 4294967222]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967179, i64 4294967222]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 8, i64 105, i64 170]
@__sancov_gen_cov_switch_values.91 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 4, i64 8, i64 32]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.93 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3401, i32 48 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3416, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3420, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3422, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3433, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3438, i32 25 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3440, i32 14 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3472, i32 24 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3473, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3494, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3512, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1265, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1292, i32 23 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1378, i32 23 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 520, i32 23 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 532, i32 24 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 555, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 692, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 726, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 757, i32 23 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 302, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 416, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 435, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 436, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 251, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 259, i32 16 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 260, i32 13 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 262, i32 16 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 203, i32 16 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 205, i32 16 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 88, i32 6 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 89, i32 23 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 136, i32 6 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 138, i32 5 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 145, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 151, i32 6 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 152, i32 27 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 152, i32 37 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1074, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2970, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3012, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3027, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3067, i32 6 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3125, i32 6 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3129, i32 6 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2915, i32 6 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2918, i32 6 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2922, i32 23 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2932, i32 6 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2935, i32 6 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2884, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2447, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 227, i32 6 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 229, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 236, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2222, i32 1 }
@___asan_gen_.266 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 108, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2355, i32 23 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2366, i32 23 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2317, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2271, i32 23 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2276, i32 23 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2128, i32 24 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2135, i32 24 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2170, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2185, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2069, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1888, i32 5 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1924, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1006, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1643, i32 7 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1654, i32 7 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1666, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3351, i32 16 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3279, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2566, i32 5 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2576, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2504, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2717, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2718, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2686, i32 15 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3559, i32 18 }
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.344 = private constant [28 x i8] c"../fs/xfs/xfs_log_recover.c\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 3571, i32 18 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xlog_recover_release_intent(ptr nocapture noundef readonly %log, i16 noundef zeroext %intent_type, i64 noundef %intent_id) local_unnamed_addr #0 align 64 {
entry:
  %cur = alloca %struct.xfs_ail_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cur) #13
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cur, align 4, !annotation !233
  %1 = getelementptr inbounds %struct.list_head, ptr %cur, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !233
  %3 = getelementptr inbounds %struct.xfs_ail_cursor, ptr %cur, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !233
  %l_ailp = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 1
  %5 = ptrtoint ptr %l_ailp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %l_ailp, align 4
  %ail_lock = getelementptr inbounds %struct.xfs_ail, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %ail_lock) #13
  %call = call ptr @xfs_trans_ail_cursor_first(ptr noundef %6, ptr noundef nonnull %cur, i64 noundef 0) #13
  %cmp.not22 = icmp eq ptr %call, null
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i16 %intent_type to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %lip.023 = phi ptr [ %call, %for.body.lr.ph ], [ %call9, %for.inc.for.body_crit_edge ]
  %li_type = getelementptr inbounds %struct.xfs_log_item, ptr %lip.023, i32 0, i32 5
  %7 = ptrtoint ptr %li_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %li_type, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp1.not = icmp eq i32 %8, %conv
  br i1 %cmp1.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %li_ops = getelementptr inbounds %struct.xfs_log_item, ptr %lip.023, i32 0, i32 9
  %9 = ptrtoint ptr %li_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %li_ops, align 4
  %iop_match = getelementptr inbounds %struct.xfs_item_ops, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %iop_match to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iop_match, align 4
  %call3 = call zeroext i1 %12(ptr noundef nonnull %lip.023, i64 noundef %intent_id) #13
  br i1 %call3, label %if.end5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %li_ops.le = getelementptr inbounds %struct.xfs_log_item, ptr %lip.023, i32 0, i32 9
  call void @_raw_spin_unlock(ptr noundef %ail_lock) #13
  %13 = ptrtoint ptr %li_ops.le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %li_ops.le, align 4
  %iop_release = getelementptr inbounds %struct.xfs_item_ops, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %iop_release to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iop_release, align 4
  call void %16(ptr noundef nonnull %lip.023) #13
  call void @_raw_spin_lock(ptr noundef %ail_lock) #13
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call9 = call ptr @xfs_trans_ail_cursor_next(ptr noundef %6, ptr noundef nonnull %cur) #13
  %cmp.not = icmp eq ptr %call9, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5, %entry.for.end_crit_edge
  call void @xfs_trans_ail_cursor_done(ptr noundef nonnull %cur) #13
  call void @_raw_spin_unlock(ptr noundef %ail_lock) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cur) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_trans_ail_cursor_first(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_trans_ail_cursor_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ail_cursor_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xlog_recover_iget(ptr noundef %mp, i64 noundef %ino, ptr noundef %ipp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfs_iget(ptr noundef %mp, ptr noundef null, i64 noundef %ino, i32 noundef 0, i32 noundef 0, ptr noundef %ipp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipp, align 4
  %call1 = tail call i32 @xfs_qm_dqattach(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %2 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipp, align 4
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xfs_irele(ptr noundef %3) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 27, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #13
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 16
  %7 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_flags.i.i, align 8
  %or.i.i = or i32 %8, 2048
  store i32 %or.i.i, ptr %i_flags.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iget(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_dqattach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_irele(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xlog_buf_readahead(ptr noundef %log, i64 noundef %blkno, i32 noundef %len, ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @xlog_is_buffer_cancelled(ptr noundef %log, i64 noundef %blkno, i32 noundef %len) #13
  br i1 %call, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 128
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_ddev_targp, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #13
  %4 = getelementptr inbounds i8, ptr %map.i, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %4, align 8
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %blkno, ptr %map.i, align 8
  store i32 %len, ptr %4, align 8
  call void @xfs_buf_readahead_map(ptr noundef %3, ptr noundef nonnull %map.i, i32 noundef 1, ptr noundef %ops) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xlog_is_buffer_cancelled(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xlog_recover(ptr noundef %log) local_unnamed_addr #0 align 64 {
entry:
  %head_blk = alloca i64, align 8
  %tail_blk = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head_blk) #13
  %0 = ptrtoint ptr %head_blk to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %head_blk, align 8, !annotation !233
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tail_blk) #13
  %1 = ptrtoint ptr %tail_blk to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %tail_blk, align 8, !annotation !233
  %call = call fastcc i32 @xlog_find_tail(ptr noundef %log, ptr noundef nonnull %head_blk, ptr noundef nonnull %tail_blk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log, align 128
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %sb_lsn = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 53
  %6 = ptrtoint ptr %sb_lsn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_lsn, align 16
  %call4 = tail call zeroext i1 @xfs_log_check_lsn(ptr noundef %3, i64 noundef %7) #13
  br i1 %call4, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %8 = ptrtoint ptr %tail_blk to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tail_blk, align 8
  %10 = ptrtoint ptr %head_blk to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %head_blk, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp.not = icmp eq i64 %9, %11
  br i1 %cmp.not, label %if.end6.cleanup_crit_edge, label %if.then7

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7:                                         ; preds = %if.end6
  %12 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %log, align 128
  %call9 = tail call i32 @xfs_dev_is_read_only(ptr noundef %13, ptr noundef nonnull @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.then7
  %14 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %log, align 128
  %sb_versionnum.i = getelementptr inbounds %struct.xfs_sb, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %sb_versionnum.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sb_versionnum.i, align 4
  %18 = and i16 %17, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %18)
  %cmp.i = icmp eq i16 %18, 5
  br i1 %cmp.i, label %land.lhs.true16, label %if.end12.if.end26_crit_edge

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

land.lhs.true16:                                  ; preds = %if.end12
  %sb_features_log_incompat.i = getelementptr inbounds %struct.xfs_sb, ptr %15, i32 0, i32 49
  %19 = ptrtoint ptr %sb_features_log_incompat.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sb_features_log_incompat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i60.not = icmp eq i32 %20, 0
  br i1 %cmp.i60.not, label %land.lhs.true16.if.end26_crit_edge, label %if.then20

land.lhs.true16.if.end26_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then20:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %15, ptr noundef nonnull @.str.1, i32 noundef %20) #13
  %21 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %22, ptr noundef nonnull @.str.2) #13
  %23 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %24, ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true16.if.end26_crit_edge, %if.end12.if.end26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 1) to i32))
  %25 = load i32, ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool27.not = icmp eq i32 %25, 0
  br i1 %tobool27.not, label %if.end26.if.end30_crit_edge, label %if.then28

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %15, ptr noundef nonnull @.str.4, i32 noundef %25) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 1) to i32))
  %26 = load i32, ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 1), align 4
  %mul = mul i32 %26, 1000
  tail call void @msleep(i32 noundef %mul) #13
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  %27 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %log, align 128
  %m_logname = getelementptr inbounds %struct.xfs_mount, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %m_logname to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %m_logname, align 8
  %tobool33.not = icmp eq ptr %30, null
  %spec.select = select i1 %tobool33.not, ptr @.str.6, ptr %30
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %28, ptr noundef nonnull @.str.5, ptr noundef nonnull %spec.select) #13
  %call36 = tail call fastcc i32 @xlog_do_recover(ptr noundef %log, i64 noundef %11, i64 noundef %9)
  %l_opstate = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %l_opstate) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then20, %if.then7.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then20 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %call9, %if.then7.cleanup_crit_edge ], [ %call36, %if.end30 ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tail_blk) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head_blk) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_find_tail(ptr noundef %log, ptr nocapture noundef %head_blk, ptr nocapture noundef %tail_blk) unnamed_addr #3 align 64 {
entry:
  %rhead = alloca ptr, align 4
  %offset = alloca ptr, align 4
  %rhead_blk = alloca i64, align 8
  %wrapped = alloca i8, align 1
  %clean = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rhead) #13
  %0 = ptrtoint ptr %rhead to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rhead, align 4, !annotation !233
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #13
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %offset, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rhead_blk) #13
  %2 = ptrtoint ptr %rhead_blk to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %rhead_blk, align 8, !annotation !233
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wrapped) #13
  %3 = ptrtoint ptr %wrapped to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %wrapped, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %clean) #13
  %4 = ptrtoint ptr %clean to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %clean, align 1
  %call = tail call fastcc i32 @xlog_find_head(ptr noundef %log, ptr noundef %head_blk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup63_crit_edge

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup63

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %head_blk to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %head_blk, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %6)
  %cmp = icmp slt i64 %6, 2147483647
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false, !prof !234

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, i32 noundef 1265) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %call3 = tail call fastcc ptr @xlog_alloc_buffer(ptr noundef %log, i32 noundef 1)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %cond.end.cleanup63_crit_edge, label %if.end6

cond.end.cleanup63_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup63

if.end6:                                          ; preds = %cond.end
  %7 = ptrtoint ptr %head_blk to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %head_blk, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp7 = icmp eq i64 %8, 0
  br i1 %cmp7, label %if.then8, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then8:                                         ; preds = %if.end6
  %call9 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %call3, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then8.done.thread_crit_edge

if.then8.done.thread_crit_edge:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread

if.end12:                                         ; preds = %if.then8
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %offset, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17974594, i32 %12)
  %cmp.i = icmp eq i32 %12, -17974594
  br i1 %cmp.i, label %if.then.i, label %if.end12.xlog_get_cycle.exit_crit_edge

if.end12.xlog_get_cycle.exit_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %xlog_get_cycle.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i32, ptr %10, i32 1
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  br label %xlog_get_cycle.exit

xlog_get_cycle.exit:                              ; preds = %if.then.i, %if.end12.xlog_get_cycle.exit_crit_edge
  %retval.0.i = phi i32 [ %14, %if.then.i ], [ %12, %if.end12.xlog_get_cycle.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp14 = icmp eq i32 %retval.0.i, 0
  br i1 %cmp14, label %if.then15, label %xlog_get_cycle.exit.if.end17_crit_edge

xlog_get_cycle.exit.if.end17_crit_edge:           ; preds = %xlog_get_cycle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then15:                                        ; preds = %xlog_get_cycle.exit
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %tail_blk to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %tail_blk, align 8
  br label %done.thread135

if.end17:                                         ; preds = %xlog_get_cycle.exit.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  %16 = ptrtoint ptr %head_blk to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %head_blk, align 8
  %call18 = call fastcc i32 @xlog_rseek_logrec_hdr(ptr noundef %log, i64 noundef %17, i64 noundef %17, i32 noundef 1, ptr noundef nonnull %call3, ptr noundef nonnull %rhead_blk, ptr noundef nonnull %rhead, ptr noundef nonnull %wrapped)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.done.thread_crit_edge, label %if.end21

if.end17.done.thread_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool22.not = icmp eq i32 %call18, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %19, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.xlog_find_tail) #13
  br label %done.thread

if.end24:                                         ; preds = %if.end21
  %20 = ptrtoint ptr %rhead to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rhead, align 4
  %h_tail_lsn = getelementptr inbounds %struct.xlog_rec_header, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %h_tail_lsn to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %h_tail_lsn, align 8
  %conv25 = and i64 %23, 4294967295
  %24 = ptrtoint ptr %tail_blk to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv25, ptr %tail_blk, align 8
  %25 = ptrtoint ptr %head_blk to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %head_blk, align 8
  %27 = ptrtoint ptr %rhead_blk to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rhead_blk, align 8
  %29 = ptrtoint ptr %wrapped to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %wrapped, align 1, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool26 = icmp ne i8 %30, 0
  tail call fastcc void @xlog_set_state(ptr noundef %log, i64 noundef %26, ptr noundef %21, i64 noundef %28, i1 noundef zeroext %tobool26)
  %l_tail_lsn = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %l_tail_lsn, i32 noundef 8) #13
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %l_tail_lsn) #13
  %call28 = call fastcc i32 @xlog_check_unmount_rec(ptr noundef %log, ptr noundef %head_blk, ptr noundef %tail_blk, ptr noundef %21, i64 noundef %28, ptr noundef nonnull %call3, ptr noundef nonnull %clean)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end24.done.thread_crit_edge

if.end24.done.thread_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread

if.end31:                                         ; preds = %if.end24
  %31 = ptrtoint ptr %clean to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %clean, align 1, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool32.not = icmp eq i8 %32, 0
  br i1 %tobool32.not, label %if.then33, label %if.end31.if.then51_crit_edge

if.end31.if.then51_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then51

if.then33:                                        ; preds = %if.end31
  %33 = ptrtoint ptr %head_blk to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %head_blk, align 8
  %call34 = call fastcc i32 @xlog_verify_head(ptr noundef %log, ptr noundef %head_blk, ptr noundef %tail_blk, ptr noundef nonnull %call3, ptr noundef nonnull %rhead_blk, ptr noundef nonnull %rhead, ptr noundef nonnull %wrapped)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.then33.done.thread_crit_edge

if.then33.done.thread_crit_edge:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread

if.end37:                                         ; preds = %if.then33
  %35 = ptrtoint ptr %head_blk to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %head_blk, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %34)
  %cmp38.not = icmp eq i64 %36, %34
  br i1 %cmp38.not, label %if.end37.if.end49_crit_edge, label %if.then40

if.end37.if.end49_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then40:                                        ; preds = %if.end37
  %37 = ptrtoint ptr %rhead to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rhead, align 4
  %39 = ptrtoint ptr %rhead_blk to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %rhead_blk, align 8
  %41 = ptrtoint ptr %wrapped to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %wrapped, align 1, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool41 = icmp ne i8 %42, 0
  tail call fastcc void @xlog_set_state(ptr noundef %log, i64 noundef %36, ptr noundef %38, i64 noundef %40, i1 noundef zeroext %tobool41)
  %call.i.i116 = tail call zeroext i1 @__kasan_check_read(ptr noundef %l_tail_lsn, i32 noundef 8) #13
  %call.i117 = tail call i64 @generic_atomic64_read(ptr noundef %l_tail_lsn) #13
  %call44 = call fastcc i32 @xlog_check_unmount_rec(ptr noundef %log, ptr noundef %head_blk, ptr noundef %tail_blk, ptr noundef %38, i64 noundef %40, ptr noundef nonnull %call3, ptr noundef nonnull %clean)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then40.if.end49_crit_edge, label %if.then40.done.thread_crit_edge

if.then40.done.thread_crit_edge:                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread

if.then40.if.end49_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.end49:                                         ; preds = %if.then40.if.end49_crit_edge, %if.end37.if.end49_crit_edge
  %tail_lsn.2.ph = phi i64 [ %call.i, %if.end37.if.end49_crit_edge ], [ %call.i117, %if.then40.if.end49_crit_edge ]
  %43 = ptrtoint ptr %clean to i32
  call void @__asan_load1_noabort(i32 %43)
  %.pr = load i8, ptr %clean, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool50.not = icmp eq i8 %.pr, 0
  br i1 %tobool50.not, label %if.end49.if.end53_crit_edge, label %if.end49.if.then51_crit_edge

if.end49.if.then51_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then51

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then51:                                        ; preds = %if.end49.if.then51_crit_edge, %if.end31.if.then51_crit_edge
  %tail_lsn.2127 = phi i64 [ %tail_lsn.2.ph, %if.end49.if.then51_crit_edge ], [ %call.i, %if.end31.if.then51_crit_edge ]
  %44 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %log, align 128
  %m_opstate = getelementptr inbounds %struct.xfs_mount, ptr %45, i32 0, i32 66
  tail call void @_set_bit(i32 noundef 1, ptr noundef %m_opstate) #13
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end49.if.end53_crit_edge
  %tail_lsn.2128 = phi i64 [ %tail_lsn.2127, %if.then51 ], [ %tail_lsn.2.ph, %if.end49.if.end53_crit_edge ]
  %l_targ = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 3
  %46 = ptrtoint ptr %l_targ to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %l_targ, align 4
  %bt_bdev = getelementptr inbounds %struct.xfs_buftarg, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %bt_bdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bt_bdev, align 4
  %bd_read_only.i = getelementptr inbounds %struct.block_device, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %bd_read_only.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bd_read_only.i, align 8, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.end53.done.thread135_crit_edge

if.end53.done.thread135_crit_edge:                ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread135

lor.rhs.i:                                        ; preds = %if.end53
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %49, i32 0, i32 17
  %52 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %part0.i.i, align 4
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bd_read_only.i.i, align 8, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i.i, label %bdev_read_only.exit, label %lor.rhs.i.done.thread135_crit_edge

lor.rhs.i.done.thread135_crit_edge:               ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread135

bdev_read_only.exit:                              ; preds = %lor.rhs.i
  %state.i.i = getelementptr inbounds %struct.gendisk, ptr %53, i32 0, i32 12
  %58 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %state.i.i, align 4
  %60 = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool55.not = icmp eq i32 %60, 0
  br i1 %tobool55.not, label %done, label %bdev_read_only.exit.done.thread135_crit_edge

bdev_read_only.exit.done.thread135_crit_edge:     ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread135

done.thread:                                      ; preds = %if.then40.done.thread_crit_edge, %if.then33.done.thread_crit_edge, %if.end24.done.thread_crit_edge, %if.then23, %if.end17.done.thread_crit_edge, %if.then8.done.thread_crit_edge
  %error.3.ph = phi i32 [ -117, %if.then23 ], [ %call28, %if.end24.done.thread_crit_edge ], [ %call18, %if.end17.done.thread_crit_edge ], [ %call9, %if.then8.done.thread_crit_edge ], [ %call44, %if.then40.done.thread_crit_edge ], [ %call34, %if.then33.done.thread_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call3) #13
  br label %if.then60

done.thread135:                                   ; preds = %bdev_read_only.exit.done.thread135_crit_edge, %lor.rhs.i.done.thread135_crit_edge, %if.end53.done.thread135_crit_edge, %if.then15
  tail call void @kvfree(ptr noundef nonnull %call3) #13
  br label %cleanup63

done:                                             ; preds = %bdev_read_only.exit
  %call57 = tail call fastcc i32 @xlog_clear_stale_blocks(ptr noundef %log, i64 noundef %tail_lsn.2128)
  tail call void @kvfree(ptr noundef nonnull %call3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool59.not = icmp eq i32 %call57, 0
  br i1 %tobool59.not, label %done.cleanup63_crit_edge, label %done.if.then60_crit_edge

done.if.then60_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then60

done.cleanup63_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup63

if.then60:                                        ; preds = %done.if.then60_crit_edge, %done.thread
  %error.3132 = phi i32 [ %error.3.ph, %done.thread ], [ %call57, %done.if.then60_crit_edge ]
  %61 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %62, ptr noundef nonnull @.str.13) #13
  br label %cleanup63

cleanup63:                                        ; preds = %if.then60, %done.cleanup63_crit_edge, %done.thread135, %cond.end.cleanup63_crit_edge, %entry.cleanup63_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup63_crit_edge ], [ -12, %cond.end.cleanup63_crit_edge ], [ %error.3132, %if.then60 ], [ 0, %done.cleanup63_crit_edge ], [ 0, %done.thread135 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %clean) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wrapped) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rhead_blk) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rhead) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_log_check_lsn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dev_is_read_only(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_do_recover(ptr noundef %log, i64 noundef %head_blk, i64 noundef %tail_blk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 128
  %m_sb_bp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %m_sb_bp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_sb_bp, align 16
  tail call fastcc void @trace_xfs_log_recover(ptr noundef %log, i64 noundef %head_blk, i64 noundef %tail_blk)
  %call = tail call fastcc i32 @xlog_do_log_recovery(ptr noundef %log, i64 noundef %head_blk, i64 noundef %tail_blk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %l_opstate.i = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 6
  %4 = ptrtoint ptr %l_opstate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %l_opstate.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i64 @xlog_assign_tail_lsn(ptr noundef %1) #13
  tail call void @xfs_buf_lock(ptr noundef %3) #13
  tail call void @xfs_buf_hold(ptr noundef %3) #13
  %call5 = tail call i32 @_xfs_buf_read(ptr noundef %3, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end3
  %7 = ptrtoint ptr %l_opstate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %l_opstate.i, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i53.not = icmp eq i32 %9, 0
  br i1 %tobool.i53.not, label %__here, label %if.then7.if.end10_crit_edge

if.then7.if.end10_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

__here:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !236
  tail call void @xfs_buf_ioerror_alert(ptr noundef %3, ptr noundef blockaddress(@xlog_do_recover, %__here)) #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, i32 noundef 3336) #13
  br label %if.end10

if.end10:                                         ; preds = %__here, %if.then7.if.end10_crit_edge
  tail call void @xfs_buf_unlock(ptr noundef %3) #13
  tail call void @xfs_buf_rele(ptr noundef %3) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 16
  %10 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_addr, align 4
  tail call void @xfs_sb_from_disk(ptr noundef %1, ptr noundef %11) #13
  tail call void @xfs_buf_unlock(ptr noundef %3) #13
  tail call void @xfs_buf_rele(ptr noundef %3) #13
  %call12 = tail call i64 @xfs_sb_version_to_features(ptr noundef %1) #13
  %m_features = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %12 = ptrtoint ptr %m_features to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %m_features, align 8
  %or = or i64 %13, %call12
  store i64 %or, ptr %m_features, align 8
  tail call void @xfs_reinit_percpu_counters(ptr noundef %1) #13
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sb_agcount, align 8
  %m_maxagi = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 52
  %call13 = tail call i32 @xfs_initialize_perag(ptr noundef %1, i32 noundef %15, ptr noundef %m_maxagi) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.78, i32 noundef %call13) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 @xfs_alloc_set_aside(ptr noundef %1) #13
  %m_alloc_set_aside = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 48
  %16 = ptrtoint ptr %m_alloc_set_aside to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call17, ptr %m_alloc_set_aside, align 32
  tail call fastcc void @xlog_recover_check_summary(ptr noundef %log)
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %l_opstate.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then15, %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end10 ], [ %call13, %if.then15 ], [ 0, %if.end16 ], [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xlog_recover_finish(ptr nocapture noundef readonly %log) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xlog_recover_process_intents(ptr noundef %log)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @xlog_recover_cancel_intents(ptr noundef %log)
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.7) #13
  %2 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log, align 128
  tail call void @xfs_do_force_shutdown(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 3473) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log, align 128
  %call3 = tail call i32 @xfs_log_force(ptr noundef %5, i32 noundef 1) #13
  %6 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %log, align 128
  %call5 = tail call zeroext i1 @xfs_clear_incompat_log_features(ptr noundef %7) #13
  br i1 %call5, label %if.then6, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then6:                                         ; preds = %if.end
  %8 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %log, align 128
  %call8 = tail call i32 @xfs_sync_sb(ptr noundef %9, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.then9, label %if.then6.if.end12_crit_edge

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %11, ptr noundef nonnull @.str.9) #13
  br label %cleanup

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.end.if.end12_crit_edge
  tail call fastcc void @xlog_recover_process_iunlinks(ptr noundef %log)
  tail call fastcc void @xlog_recover_check_summary(ptr noundef %log)
  %12 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %log, align 128
  %call14 = tail call i32 @xfs_reflink_recover_cow(ptr noundef %13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.then16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %15, ptr noundef nonnull @.str.10, i32 noundef %call14) #13
  %16 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %log, align 128
  tail call void @xfs_do_force_shutdown(ptr noundef %17, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 3520) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end12.cleanup_crit_edge, %if.then9, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call8, %if.then9 ], [ 0, %if.then16 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_recover_process_intents(ptr nocapture noundef readonly %log) unnamed_addr #3 align 64 {
entry:
  %tp.i = alloca ptr, align 4
  %resv.i = alloca %struct.xfs_trans_res, align 4
  %dres.i = alloca %struct.xfs_defer_resources, align 4
  %capture_list = alloca %struct.list_head, align 4
  %cur = alloca %struct.xfs_ail_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %capture_list) #13
  %0 = getelementptr inbounds %struct.list_head, ptr %capture_list, i32 0, i32 1
  %1 = ptrtoint ptr %capture_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %capture_list, ptr %capture_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %capture_list, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cur) #13
  %3 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %cur, align 4, !annotation !233
  %4 = getelementptr inbounds %struct.list_head, ptr %cur, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !233
  %6 = getelementptr inbounds %struct.xfs_ail_cursor, ptr %cur, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !233
  %l_ailp = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 1
  %8 = ptrtoint ptr %l_ailp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %l_ailp, align 4
  %ail_lock = getelementptr inbounds %struct.xfs_ail, ptr %9, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %ail_lock) #13
  %l_curr_cycle = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 22
  %10 = ptrtoint ptr %l_curr_cycle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %l_curr_cycle, align 8
  %l_curr_block = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 24
  %12 = ptrtoint ptr %l_curr_block to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %l_curr_block, align 16
  %call1 = call ptr @xfs_trans_ail_cursor_first(ptr noundef %9, ptr noundef nonnull %cur, i64 noundef 0) #13
  %cmp.not97 = icmp eq ptr %call1, null
  br i1 %cmp.not97, label %entry.for.end31_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end31

for.body:                                         ; preds = %for.inc29.for.body_crit_edge, %entry.for.body_crit_edge
  %lip.098 = phi ptr [ %call30, %for.inc29.for.body_crit_edge ], [ %call1, %entry.for.body_crit_edge ]
  %li_ops.i = getelementptr inbounds %struct.xfs_log_item, ptr %lip.098, i32 0, i32 9
  %14 = ptrtoint ptr %li_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %li_ops.i, align 4
  %iop_recover.i = getelementptr inbounds %struct.xfs_item_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %iop_recover.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iop_recover.i, align 4
  %cmp.not.i = icmp eq ptr %17, null
  br i1 %cmp.not.i, label %for.body.for.body4.preheader_crit_edge, label %land.rhs.i

for.body.for.body4.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4.preheader

land.rhs.i:                                       ; preds = %for.body
  %iop_match.i = getelementptr inbounds %struct.xfs_item_ops, ptr %15, i32 0, i32 10
  %18 = ptrtoint ptr %iop_match.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iop_match.i, align 4
  %cmp2.i.not = icmp eq ptr %19, null
  br i1 %cmp2.i.not, label %land.rhs.i.for.body4.preheader_crit_edge, label %if.end

land.rhs.i.for.body4.preheader_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4.preheader

for.body4.preheader:                              ; preds = %land.rhs.i.for.body4.preheader_crit_edge, %for.body.for.body4.preheader_crit_edge
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body4.preheader
  %lip.1100 = phi ptr [ %call9, %for.inc.for.body4_crit_edge ], [ %lip.098, %for.body4.preheader ]
  %li_ops.i69 = getelementptr inbounds %struct.xfs_log_item, ptr %lip.1100, i32 0, i32 9
  %20 = ptrtoint ptr %li_ops.i69 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %li_ops.i69, align 4
  %iop_recover.i70 = getelementptr inbounds %struct.xfs_item_ops, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %iop_recover.i70 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iop_recover.i70, align 4
  %cmp.not.i71 = icmp eq ptr %23, null
  br i1 %cmp.not.i71, label %for.body4.for.inc_crit_edge, label %xlog_item_is_intent.exit75

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

xlog_item_is_intent.exit75:                       ; preds = %for.body4
  %iop_match.i72 = getelementptr inbounds %struct.xfs_item_ops, ptr %21, i32 0, i32 10
  %24 = ptrtoint ptr %iop_match.i72 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iop_match.i72, align 4
  %cmp2.i73.not = icmp eq ptr %25, null
  br i1 %cmp2.i73.not, label %xlog_item_is_intent.exit75.for.inc_crit_edge, label %cond.false, !prof !234

xlog_item_is_intent.exit75.for.inc_crit_edge:     ; preds = %xlog_item_is_intent.exit75
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

cond.false:                                       ; preds = %xlog_item_is_intent.exit75
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.8, i32 noundef 2566) #13
  br label %for.inc

for.inc:                                          ; preds = %cond.false, %xlog_item_is_intent.exit75.for.inc_crit_edge, %for.body4.for.inc_crit_edge
  %call9 = call ptr @xfs_trans_ail_cursor_next(ptr noundef %9, ptr noundef nonnull %cur) #13
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %for.inc.for.end31_crit_edge, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4

for.inc.for.end31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end31

if.end:                                           ; preds = %land.rhs.i
  %li_lsn = getelementptr inbounds %struct.xfs_log_item, ptr %lip.098, i32 0, i32 2
  %26 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %li_lsn, align 8
  %28 = lshr i64 %27, 32
  %conv2.i = trunc i64 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv2.i)
  %cmp.not.i76 = icmp eq i32 %11, %conv2.i
  br i1 %cmp.not.i76, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv2.i)
  %cmp8.i = icmp ult i32 %11, %conv2.i
  br i1 %cmp8.i, label %if.then.i.cond.false19_crit_edge, label %if.then.i.cond.end20_crit_edge

if.then.i.cond.end20_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end20

if.then.i.cond.false19_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false19

if.end.i:                                         ; preds = %if.end
  %conv12.i = trunc i64 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv12.i)
  %cmp18.i = icmp ult i32 %13, %conv12.i
  br i1 %cmp18.i, label %if.end.i.cond.false19_crit_edge, label %if.end.i.cond.end20_crit_edge

if.end.i.cond.end20_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end20

if.end.i.cond.false19_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false19

cond.false19:                                     ; preds = %if.end.i.cond.false19_crit_edge, %if.then.i.cond.false19_crit_edge
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.8, i32 noundef 2576) #13
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %if.end.i.cond.end20_crit_edge, %if.then.i.cond.end20_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ail_lock) #13
  %29 = ptrtoint ptr %li_ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %li_ops.i, align 4
  %iop_recover = getelementptr inbounds %struct.xfs_item_ops, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %iop_recover to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iop_recover, align 4
  %call22 = call i32 %32(ptr noundef nonnull %lip.098, ptr noundef nonnull %capture_list) #13
  call void @_raw_spin_lock(ptr noundef %ail_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not = icmp eq i32 %call22, 0
  br i1 %tobool24.not, label %for.inc29, label %if.then25

if.then25:                                        ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %log, align 128
  %35 = ptrtoint ptr %li_ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %li_ops.i, align 4
  %iop_recover27 = getelementptr inbounds %struct.xfs_item_ops, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %iop_recover27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iop_recover27, align 4
  call fastcc void @trace_xlog_intent_recovery_failed(ptr noundef %34, i32 noundef %call22, ptr noundef %38)
  br label %for.end31

for.inc29:                                        ; preds = %cond.end20
  %call30 = call ptr @xfs_trans_ail_cursor_next(ptr noundef %9, ptr noundef nonnull %cur) #13
  %cmp.not = icmp eq ptr %call30, null
  br i1 %cmp.not, label %for.inc29.for.end31_crit_edge, label %for.inc29.for.body_crit_edge

for.inc29.for.body_crit_edge:                     ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc29.for.end31_crit_edge:                    ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end31

for.end31:                                        ; preds = %for.inc29.for.end31_crit_edge, %if.then25, %for.inc.for.end31_crit_edge, %entry.for.end31_crit_edge
  %error.1 = phi i32 [ %call22, %if.then25 ], [ 0, %entry.for.end31_crit_edge ], [ 0, %for.inc.for.end31_crit_edge ], [ 0, %for.inc29.for.end31_crit_edge ]
  call void @xfs_trans_ail_cursor_done(ptr noundef nonnull %cur) #13
  call void @_raw_spin_unlock(ptr noundef %ail_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool33.not = icmp eq i32 %error.1, 0
  br i1 %tobool33.not, label %if.end35, label %for.end31.err_crit_edge

for.end31.err_crit_edge:                          ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end35:                                         ; preds = %for.end31
  %39 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %log, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp.i) #13
  %41 = ptrtoint ptr %tp.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp.i, align 4, !annotation !233
  %42 = ptrtoint ptr %capture_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %capture_list, align 4
  %44 = getelementptr inbounds %struct.xfs_trans_res, ptr %resv.i, i32 0, i32 1
  %45 = getelementptr inbounds %struct.xfs_trans_res, ptr %resv.i, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i.for.cond.i_crit_edge, %if.end35
  %dfc.0.i = phi ptr [ %43, %if.end35 ], [ %next.0.i, %cleanup.i.for.cond.i_crit_edge ]
  %46 = ptrtoint ptr %dfc.0.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %next.0.i = load ptr, ptr %dfc.0.i, align 4
  %cmp.not.i77 = icmp eq ptr %dfc.0.i, %capture_list
  br i1 %cmp.not.i77, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resv.i) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dres.i) #13
  %47 = call ptr @memset(ptr %dres.i, i32 255, i32 24)
  %dfc_logres.i = getelementptr inbounds %struct.xfs_defer_capture, ptr %dfc.0.i, i32 0, i32 5
  %48 = ptrtoint ptr %dfc_logres.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dfc_logres.i, align 4
  %50 = ptrtoint ptr %resv.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %resv.i, align 4
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %44, align 4
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %45, align 4
  %dfc_blkres.i = getelementptr inbounds %struct.xfs_defer_capture, ptr %dfc.0.i, i32 0, i32 3
  %53 = ptrtoint ptr %dfc_blkres.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dfc_blkres.i, align 4
  %dfc_rtxres.i = getelementptr inbounds %struct.xfs_defer_capture, ptr %dfc.0.i, i32 0, i32 4
  %55 = ptrtoint ptr %dfc_rtxres.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dfc_rtxres.i, align 4
  %call.i = call i32 @xfs_trans_alloc(ptr noundef %40, ptr noundef nonnull %resv.i, i32 noundef %54, i32 noundef %56, i32 noundef 32, ptr noundef nonnull %tp.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i78, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @xfs_do_force_shutdown(ptr noundef %40, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 2488) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dres.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resv.i) #13
  br label %xlog_finish_defer_ops.exit

if.end.i78:                                       ; preds = %for.body.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %dfc.0.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i78.cleanup.i_crit_edge

if.end.i78.cleanup.i_crit_edge:                   ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end.i.i.i:                                     ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dfc.0.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i, align 4
  %59 = ptrtoint ptr %dfc.0.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dfc.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i.i, %if.end.i78.cleanup.i_crit_edge
  %63 = ptrtoint ptr %dfc.0.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %dfc.0.i, ptr %dfc.0.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %dfc.0.i, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %dfc.0.i, ptr %prev.i3.i.i, align 4
  %65 = ptrtoint ptr %tp.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tp.i, align 4
  call void @xfs_defer_ops_continue(ptr noundef %dfc.0.i, ptr noundef %66, ptr noundef nonnull %dres.i) #13
  %67 = ptrtoint ptr %tp.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tp.i, align 4
  %call8.i = call i32 @xfs_trans_commit(ptr noundef %68) #13
  call void @xfs_defer_resources_rele(ptr noundef nonnull %dres.i) #13
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dres.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resv.i) #13
  br i1 %tobool9.not.i, label %cleanup.i.for.cond.i_crit_edge, label %cleanup.i.xlog_finish_defer_ops.exit_crit_edge

cleanup.i.xlog_finish_defer_ops.exit_crit_edge:   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xlog_finish_defer_ops.exit

cleanup.i.for.cond.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %69 = ptrtoint ptr %capture_list to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %capture_list, align 4
  %cmp.i.not.i = icmp eq ptr %70, %capture_list
  br i1 %cmp.i.not.i, label %for.end.i.xlog_finish_defer_ops.exit.thread_crit_edge, label %cond.false.i, !prof !234

for.end.i.xlog_finish_defer_ops.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xlog_finish_defer_ops.exit.thread

cond.false.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.8, i32 noundef 2504) #13
  br label %xlog_finish_defer_ops.exit.thread

xlog_finish_defer_ops.exit.thread:                ; preds = %cond.false.i, %for.end.i.xlog_finish_defer_ops.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp.i) #13
  br label %cleanup

xlog_finish_defer_ops.exit:                       ; preds = %cleanup.i.xlog_finish_defer_ops.exit_crit_edge, %cleanup.thread.i
  %retval.2.i = phi i32 [ %call.i, %cleanup.thread.i ], [ %call8.i, %cleanup.i.xlog_finish_defer_ops.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp.i) #13
  br label %err

err:                                              ; preds = %xlog_finish_defer_ops.exit, %for.end31.err_crit_edge
  %error.2 = phi i32 [ %error.1, %for.end31.err_crit_edge ], [ %retval.2.i, %xlog_finish_defer_ops.exit ]
  %71 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %log, align 128
  %73 = ptrtoint ptr %capture_list to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %capture_list, align 4
  %cmp.not18.i = icmp eq ptr %74, %capture_list
  br i1 %cmp.not18.i, label %err.cleanup_crit_edge, label %err.for.body.i81_crit_edge

err.for.body.i81_crit_edge:                       ; preds = %err
  br label %for.body.i81

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i81:                                     ; preds = %list_del_init.exit.i.for.body.i81_crit_edge, %err.for.body.i81_crit_edge
  %dfc.019.i = phi ptr [ %next.0.i79, %list_del_init.exit.i.for.body.i81_crit_edge ], [ %74, %err.for.body.i81_crit_edge ]
  %75 = ptrtoint ptr %dfc.019.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %next.0.i79 = load ptr, ptr %dfc.019.i, align 4
  %call.i.i.i80 = call zeroext i1 @__list_del_entry_valid(ptr noundef %dfc.019.i) #13
  br i1 %call.i.i.i80, label %if.end.i.i.i84, label %for.body.i81.list_del_init.exit.i_crit_edge

for.body.i81.list_del_init.exit.i_crit_edge:      ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i84:                                   ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i82 = getelementptr inbounds %struct.list_head, ptr %dfc.019.i, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i.i82, align 4
  %78 = ptrtoint ptr %dfc.019.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dfc.019.i, align 4
  %prev1.i.i.i.i83 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev1.i.i.i.i83, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %79, ptr %77, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i84, %for.body.i81.list_del_init.exit.i_crit_edge
  %82 = ptrtoint ptr %dfc.019.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %dfc.019.i, ptr %dfc.019.i, align 4
  %prev.i3.i.i85 = getelementptr inbounds %struct.list_head, ptr %dfc.019.i, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i3.i.i85 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %dfc.019.i, ptr %prev.i3.i.i85, align 4
  call void @xfs_defer_ops_capture_free(ptr noundef %72, ptr noundef %dfc.019.i) #13
  %cmp.not.i86 = icmp eq ptr %next.0.i79, %capture_list
  br i1 %cmp.not.i86, label %list_del_init.exit.i.cleanup_crit_edge, label %list_del_init.exit.i.for.body.i81_crit_edge

list_del_init.exit.i.for.body.i81_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i81

list_del_init.exit.i.cleanup_crit_edge:           ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit.i.cleanup_crit_edge, %err.cleanup_crit_edge, %xlog_finish_defer_ops.exit.thread
  %retval.0 = phi i32 [ 0, %xlog_finish_defer_ops.exit.thread ], [ %error.2, %err.cleanup_crit_edge ], [ %error.2, %list_del_init.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cur) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %capture_list) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlog_recover_cancel_intents(ptr nocapture noundef readonly %log) unnamed_addr #3 align 64 {
entry:
  %cur = alloca %struct.xfs_ail_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cur) #13
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cur, align 4, !annotation !233
  %1 = getelementptr inbounds %struct.list_head, ptr %cur, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !233
  %3 = getelementptr inbounds %struct.xfs_ail_cursor, ptr %cur, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !233
  %l_ailp = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 1
  %5 = ptrtoint ptr %l_ailp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %l_ailp, align 4
  %ail_lock = getelementptr inbounds %struct.xfs_ail, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %ail_lock) #13
  %call = call ptr @xfs_trans_ail_cursor_first(ptr noundef %6, ptr noundef nonnull %cur, i64 noundef 0) #13
  %cmp.not31 = icmp eq ptr %call, null
  br i1 %cmp.not31, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %lip.032 = phi ptr [ %call9, %if.end.while.body_crit_edge ], [ %call, %entry.while.body_crit_edge ]
  %li_ops.i = getelementptr inbounds %struct.xfs_log_item, ptr %lip.032, i32 0, i32 9
  %7 = ptrtoint ptr %li_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %li_ops.i, align 4
  %iop_recover.i = getelementptr inbounds %struct.xfs_item_ops, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %iop_recover.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iop_recover.i, align 4
  %cmp.not.i = icmp eq ptr %10, null
  br i1 %cmp.not.i, label %while.body.for.body.preheader_crit_edge, label %land.rhs.i

while.body.for.body.preheader_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.preheader

land.rhs.i:                                       ; preds = %while.body
  %iop_match.i = getelementptr inbounds %struct.xfs_item_ops, ptr %8, i32 0, i32 10
  %11 = ptrtoint ptr %iop_match.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iop_match.i, align 4
  %cmp2.i.not = icmp eq ptr %12, null
  br i1 %cmp2.i.not, label %land.rhs.i.for.body.preheader_crit_edge, label %if.end

land.rhs.i.for.body.preheader_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.preheader

for.body.preheader:                               ; preds = %land.rhs.i.for.body.preheader_crit_edge, %while.body.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %lip.134 = phi ptr [ %call6, %for.inc.for.body_crit_edge ], [ %lip.032, %for.body.preheader ]
  %li_ops.i22 = getelementptr inbounds %struct.xfs_log_item, ptr %lip.134, i32 0, i32 9
  %13 = ptrtoint ptr %li_ops.i22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %li_ops.i22, align 4
  %iop_recover.i23 = getelementptr inbounds %struct.xfs_item_ops, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %iop_recover.i23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iop_recover.i23, align 4
  %cmp.not.i24 = icmp eq ptr %16, null
  br i1 %cmp.not.i24, label %for.body.for.inc_crit_edge, label %xlog_item_is_intent.exit28

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

xlog_item_is_intent.exit28:                       ; preds = %for.body
  %iop_match.i25 = getelementptr inbounds %struct.xfs_item_ops, ptr %14, i32 0, i32 10
  %17 = ptrtoint ptr %iop_match.i25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iop_match.i25, align 4
  %cmp2.i26.not = icmp eq ptr %18, null
  br i1 %cmp2.i26.not, label %xlog_item_is_intent.exit28.for.inc_crit_edge, label %cond.false, !prof !234

xlog_item_is_intent.exit28.for.inc_crit_edge:     ; preds = %xlog_item_is_intent.exit28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

cond.false:                                       ; preds = %xlog_item_is_intent.exit28
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.8, i32 noundef 2632) #13
  br label %for.inc

for.inc:                                          ; preds = %cond.false, %xlog_item_is_intent.exit28.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call6 = call ptr @xfs_trans_ail_cursor_next(ptr noundef %6, ptr noundef nonnull %cur) #13
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %for.inc.while.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.while.end_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %land.rhs.i
  call void @_raw_spin_unlock(ptr noundef %ail_lock) #13
  %19 = ptrtoint ptr %li_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %li_ops.i, align 4
  %iop_release = getelementptr inbounds %struct.xfs_item_ops, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %iop_release to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iop_release, align 4
  call void %22(ptr noundef nonnull %lip.032) #13
  call void @_raw_spin_lock(ptr noundef %ail_lock) #13
  %call9 = call ptr @xfs_trans_ail_cursor_next(ptr noundef %6, ptr noundef nonnull %cur) #13
  %cmp.not = icmp eq ptr %call9, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %for.inc.while.end_crit_edge, %entry.while.end_crit_edge
  call void @xfs_trans_ail_cursor_done(ptr noundef nonnull %cur) #13
  call void @_raw_spin_unlock(ptr noundef %ail_lock) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cur) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_do_force_shutdown(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_log_force(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_clear_incompat_log_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_sync_sb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlog_recover_process_iunlinks(ptr nocapture noundef readonly %log) unnamed_addr #3 align 64 {
entry:
  %agibp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agibp) #13
  %2 = ptrtoint ptr %agibp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %agibp, align 4, !annotation !233
  %call = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef 0) #13
  %cmp.not28 = icmp eq ptr %call, null
  br i1 %cmp.not28, label %entry.for.end11_crit_edge, label %for.body.lr.ph

entry.for.end11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end11

for.body.lr.ph:                                   ; preds = %entry
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %xfs_perag_next.exit.for.body_crit_edge, %for.body.lr.ph
  %pag.029 = phi ptr [ %call, %for.body.lr.ph ], [ %call.i23, %xfs_perag_next.exit.for.body_crit_edge ]
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag.029, i32 0, i32 1
  %3 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pag_agno, align 4
  %call1 = call i32 @xfs_read_agi(ptr noundef %1, ptr noundef null, i32 noundef %4, ptr noundef nonnull %agibp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc9_crit_edge

for.body.for.inc9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc9

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %agibp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %agibp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_addr, align 4
  call void @xfs_buf_unlock(ptr noundef %6) #13
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %if.end
  %bucket.026 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body4_crit_edge ]
  %arrayidx = getelementptr %struct.xfs_agi, ptr %8, i32 0, i32 10, i32 %bucket.026
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp5.not24 = icmp eq i32 %10, -1
  br i1 %cmp5.not24, label %for.body4.for.inc_crit_edge, label %for.body4.while.body_crit_edge

for.body4.while.body_crit_edge:                   ; preds = %for.body4
  br label %while.body

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body4.while.body_crit_edge
  %agino.025 = phi i32 [ %call7, %while.body.while.body_crit_edge ], [ %10, %for.body4.while.body_crit_edge ]
  %11 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pag_agno, align 4
  %call7 = call fastcc i32 @xlog_recover_process_one_iunlink(ptr noundef %1, i32 noundef %12, i32 noundef %agino.025, i32 noundef %bucket.026)
  call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 2806, i32 noundef 0) #13
  %call.i = call i32 @__cond_resched() #13
  %cmp5.not = icmp eq i32 %call7, -1
  br i1 %cmp5.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %for.body4.for.inc_crit_edge
  %inc = add nuw nsw i32 %bucket.026, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %agibp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %agibp, align 4
  call void @xfs_buf_rele(ptr noundef %14) #13
  br label %for.inc9

for.inc9:                                         ; preds = %for.end, %for.body.for.inc9_crit_edge
  %15 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_agcount, align 8
  %sub = add i32 %16, -1
  %17 = ptrtoint ptr %pag.029 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pag.029, align 4
  %19 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pag_agno, align 4
  %add.i = add i32 %20, 1
  call void @xfs_perag_put(ptr noundef nonnull %pag.029) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %cmp.i = icmp ugt i32 %add.i, %sub
  br i1 %cmp.i, label %for.inc9.for.end11_crit_edge, label %xfs_perag_next.exit

for.inc9.for.end11_crit_edge:                     ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end11

xfs_perag_next.exit:                              ; preds = %for.inc9
  %call.i23 = call ptr @xfs_perag_get(ptr noundef %18, i32 noundef %add.i) #13
  %cmp.not = icmp eq ptr %call.i23, null
  br i1 %cmp.not, label %xfs_perag_next.exit.for.end11_crit_edge, label %xfs_perag_next.exit.for.body_crit_edge

xfs_perag_next.exit.for.body_crit_edge:           ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

xfs_perag_next.exit.for.end11_crit_edge:          ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end11

for.end11:                                        ; preds = %xfs_perag_next.exit.for.end11_crit_edge, %for.inc9.for.end11_crit_edge, %entry.for.end11_crit_edge
  call void @xfs_inodegc_flush(ptr noundef %1) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agibp) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlog_recover_check_summary(ptr nocapture noundef readonly %log) unnamed_addr #3 align 64 {
entry:
  %agfbp = alloca ptr, align 4
  %agibp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agfbp) #13
  %2 = ptrtoint ptr %agfbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %agfbp, align 4, !annotation !233
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agibp) #13
  %3 = ptrtoint ptr %agibp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %agibp, align 4, !annotation !233
  %call = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef 0) #13
  %cmp.not32 = icmp eq ptr %call, null
  br i1 %cmp.not32, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %xfs_perag_next.exit.for.body_crit_edge, %for.body.lr.ph
  %pag.036 = phi ptr [ %call, %for.body.lr.ph ], [ %call.i, %xfs_perag_next.exit.for.body_crit_edge ]
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag.036, i32 0, i32 1
  %4 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pag_agno, align 4
  %call1 = call i32 @xfs_read_agf(ptr noundef %1, ptr noundef null, i32 noundef %5, i32 noundef 0, ptr noundef nonnull %agfbp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pag_agno, align 4
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.86, ptr noundef nonnull @__func__.xlog_recover_check_summary, i32 noundef %7, i32 noundef %call1) #13
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %agfbp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %agfbp, align 4
  call void @xfs_buf_unlock(ptr noundef %9) #13
  call void @xfs_buf_rele(ptr noundef %9) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pag_agno, align 4
  %call5 = call i32 @xfs_read_agi(ptr noundef %1, ptr noundef null, i32 noundef %11, ptr noundef nonnull %agibp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else9, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pag_agno, align 4
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.xlog_recover_check_summary, i32 noundef %13, i32 noundef %call5) #13
  br label %for.inc

if.else9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %agibp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %agibp, align 4
  call void @xfs_buf_unlock(ptr noundef %15) #13
  call void @xfs_buf_rele(ptr noundef %15) #13
  br label %for.inc

for.inc:                                          ; preds = %if.else9, %if.then7
  %16 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sb_agcount, align 8
  %sub = add i32 %17, -1
  %18 = ptrtoint ptr %pag.036 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pag.036, align 4
  %20 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pag_agno, align 4
  %add.i = add i32 %21, 1
  call void @xfs_perag_put(ptr noundef nonnull %pag.036) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %cmp.i = icmp ugt i32 %add.i, %sub
  br i1 %cmp.i, label %for.inc.for.end_crit_edge, label %xfs_perag_next.exit

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

xfs_perag_next.exit:                              ; preds = %for.inc
  %call.i = call ptr @xfs_perag_get(ptr noundef %19, i32 noundef %add.i) #13
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %xfs_perag_next.exit.for.end_crit_edge, label %xfs_perag_next.exit.for.body_crit_edge

xfs_perag_next.exit.for.body_crit_edge:           ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

xfs_perag_next.exit.for.end_crit_edge:            ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %xfs_perag_next.exit.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agibp) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agfbp) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reflink_recover_cow(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xlog_recover_cancel(ptr noundef %log) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %l_opstate.i = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 6
  %0 = ptrtoint ptr %l_opstate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %l_opstate.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @xlog_recover_cancel_intents(ptr noundef %log)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_readahead_map(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_find_head(ptr noundef %log, ptr nocapture noundef writeonly %return_head_blk) unnamed_addr #3 align 64 {
entry:
  %offset = alloca ptr, align 4
  %new_blk = alloca i64, align 8
  %first_blk = alloca i64, align 8
  %head_blk = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #13
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %offset, align 4, !annotation !233
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_blk) #13
  %1 = ptrtoint ptr %new_blk to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %new_blk, align 8, !annotation !233
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %first_blk) #13
  %2 = ptrtoint ptr %first_blk to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %first_blk, align 8, !annotation !233
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head_blk) #13
  %l_logBBsize = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 16
  %3 = ptrtoint ptr %l_logBBsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %l_logBBsize, align 4
  %call = call fastcc i32 @xlog_find_zeroed(ptr noundef %log, ptr noundef nonnull %first_blk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %6, ptr noundef nonnull @.str.14) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1 = icmp eq i32 %call, 1
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %7 = ptrtoint ptr %first_blk to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %first_blk, align 8
  %9 = ptrtoint ptr %return_head_blk to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %return_head_blk, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %if.then3, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %11, ptr noundef nonnull @.str.15) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc ptr @xlog_alloc_buffer(ptr noundef %log, i32 noundef 1)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %call7, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_free_buffer_crit_edge

if.end10.out_free_buffer_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

if.end14:                                         ; preds = %if.end10
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %offset, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17974594, i32 %15)
  %cmp.i = icmp eq i32 %15, -17974594
  br i1 %cmp.i, label %if.then.i, label %if.end14.xlog_get_cycle.exit_crit_edge

if.end14.xlog_get_cycle.exit_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %xlog_get_cycle.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i32, ptr %13, i32 1
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 4
  br label %xlog_get_cycle.exit

xlog_get_cycle.exit:                              ; preds = %if.then.i, %if.end14.xlog_get_cycle.exit_crit_edge
  %retval.0.i = phi i32 [ %17, %if.then.i ], [ %15, %if.end14.xlog_get_cycle.exit_crit_edge ]
  %sub = add i32 %4, -1
  %conv = sext i32 %sub to i64
  %18 = ptrtoint ptr %head_blk to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv, ptr %head_blk, align 8
  %call16 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %conv, i32 noundef 1, ptr noundef nonnull %call7, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %xlog_get_cycle.exit.out_free_buffer_crit_edge

xlog_get_cycle.exit.out_free_buffer_crit_edge:    ; preds = %xlog_get_cycle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

if.end19:                                         ; preds = %xlog_get_cycle.exit
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %offset, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17974594, i32 %22)
  %cmp.i308 = icmp eq i32 %22, -17974594
  br i1 %cmp.i308, label %if.then.i310, label %if.end19.xlog_get_cycle.exit312_crit_edge

if.end19.xlog_get_cycle.exit312_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %xlog_get_cycle.exit312

if.then.i310:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i309 = getelementptr i32, ptr %20, i32 1
  %23 = ptrtoint ptr %add.ptr.i309 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i309, align 4
  br label %xlog_get_cycle.exit312

xlog_get_cycle.exit312:                           ; preds = %if.then.i310, %if.end19.xlog_get_cycle.exit312_crit_edge
  %retval.0.i311 = phi i32 [ %24, %if.then.i310 ], [ %22, %if.end19.xlog_get_cycle.exit312_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i311)
  %cmp21.not = icmp eq i32 %retval.0.i311, 0
  br i1 %cmp21.not, label %cond.false, label %xlog_get_cycle.exit312.cond.end_crit_edge, !prof !237

xlog_get_cycle.exit312.cond.end_crit_edge:        ; preds = %xlog_get_cycle.exit312
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %xlog_get_cycle.exit312
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8, i32 noundef 555) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %xlog_get_cycle.exit312.cond.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i311)
  %cmp25 = icmp eq i32 %retval.0.i, %retval.0.i311
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv28 = sext i32 %4 to i64
  %25 = ptrtoint ptr %head_blk to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv28, ptr %head_blk, align 8
  %sub29 = add i32 %retval.0.i, -1
  br label %if.end34

if.else:                                          ; preds = %cond.end
  %call30 = call fastcc i32 @xlog_find_cycle_start(ptr noundef %log, ptr noundef nonnull %call7, i64 noundef 0, ptr noundef nonnull %head_blk, i32 noundef %retval.0.i311)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.else.if.end34_crit_edge, label %if.else.out_free_buffer_crit_edge

if.else.out_free_buffer_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.end34:                                         ; preds = %if.else.if.end34_crit_edge, %if.then27
  %stop_on_cycle.0 = phi i32 [ %sub29, %if.then27 ], [ %retval.0.i311, %if.else.if.end34_crit_edge ]
  %26 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %log, align 128
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %27, i32 0, i32 61
  %28 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %29, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %conv40 = select i1 %tobool.i.not, i32 512, i32 4096
  %30 = tail call i32 @llvm.smin.i32(i32 %4, i32 %conv40)
  %31 = ptrtoint ptr %head_blk to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %head_blk, align 8
  %conv47 = sext i32 %30 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %conv47)
  %cmp48.not = icmp slt i64 %32, %conv47
  br i1 %cmp48.not, label %cond.end75, label %if.then50

if.then50:                                        ; preds = %if.end34
  %sub52 = sub i64 %32, %conv47
  %call53 = call fastcc i32 @xlog_find_verify_cycle(ptr noundef %log, i64 noundef %sub52, i32 noundef %30, i32 noundef %stop_on_cycle.0, ptr noundef nonnull %new_blk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.then50.out_free_buffer_crit_edge

if.then50.out_free_buffer_crit_edge:              ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

if.end56:                                         ; preds = %if.then50
  %33 = ptrtoint ptr %new_blk to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %new_blk, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %34)
  %cmp57.not = icmp eq i64 %34, -1
  br i1 %cmp57.not, label %if.end56.validate_head_crit_edge, label %if.then59

if.end56.validate_head_crit_edge:                 ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %validate_head

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %head_blk to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %head_blk, align 8
  br label %validate_head

cond.end75:                                       ; preds = %if.end34
  %conv76 = sext i32 %4 to i64
  %sub78.neg = add i64 %32, %conv76
  %sub79 = sub i64 %sub78.neg, %conv47
  %conv80 = trunc i64 %32 to i32
  %sub81 = sub i32 %30, %conv80
  %sub82 = add i32 %stop_on_cycle.0, -1
  %call83 = call fastcc i32 @xlog_find_verify_cycle(ptr noundef %log, i64 noundef %sub79, i32 noundef %sub81, i32 noundef %sub82, ptr noundef nonnull %new_blk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %cond.end75.out_free_buffer_crit_edge

cond.end75.out_free_buffer_crit_edge:             ; preds = %cond.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

if.end86:                                         ; preds = %cond.end75
  %36 = ptrtoint ptr %new_blk to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %new_blk, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %37)
  %cmp87.not = icmp eq i64 %37, -1
  br i1 %cmp87.not, label %if.end90, label %if.then89

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %head_blk to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %head_blk, align 8
  br label %validate_head

if.end90:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %32)
  %cmp91 = icmp slt i64 %32, 2147483648
  br i1 %cmp91, label %if.end90.cond.end101_crit_edge, label %cond.false100, !prof !234

if.end90.cond.end101_crit_edge:                   ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end101

cond.false100:                                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8, i32 noundef 692) #13
  br label %cond.end101

cond.end101:                                      ; preds = %cond.false100, %if.end90.cond.end101_crit_edge
  %call103 = call fastcc i32 @xlog_find_verify_cycle(ptr noundef %log, i64 noundef 0, i32 noundef %conv80, i32 noundef %stop_on_cycle.0, ptr noundef nonnull %new_blk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %cond.end101.out_free_buffer_crit_edge

cond.end101.out_free_buffer_crit_edge:            ; preds = %cond.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

if.end106:                                        ; preds = %cond.end101
  %39 = ptrtoint ptr %new_blk to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %new_blk, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %40)
  %cmp107.not = icmp eq i64 %40, -1
  br i1 %cmp107.not, label %if.end106.validate_head_crit_edge, label %if.then109

if.end106.validate_head_crit_edge:                ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %validate_head

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %head_blk to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %head_blk, align 8
  br label %validate_head

validate_head:                                    ; preds = %if.then109, %if.end106.validate_head_crit_edge, %if.then89, %if.then59, %if.end56.validate_head_crit_edge
  %42 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %log, align 128
  %m_features.i313 = getelementptr inbounds %struct.xfs_mount, ptr %43, i32 0, i32 61
  %44 = ptrtoint ptr %m_features.i313 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %m_features.i313, align 8
  %and.i314 = and i64 %45, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i314)
  %tobool.i315.not = icmp eq i64 %and.i314, 0
  %46 = ptrtoint ptr %head_blk to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %head_blk, align 8
  %48 = select i1 %tobool.i315.not, i64 64, i64 512
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %48)
  %cmp123.not = icmp slt i64 %47, %48
  br i1 %cmp123.not, label %cond.end147, label %if.then125

if.then125:                                       ; preds = %validate_head
  %sub127 = sub i64 %47, %48
  %call128 = call fastcc i32 @xlog_find_verify_log_record(ptr noundef %log, i64 noundef %sub127, ptr noundef nonnull %head_blk, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call128)
  %cmp129 = icmp eq i32 %call128, 1
  %spec.store.select = select i1 %cmp129, i32 -5, i32 %call128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool133.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool133.not, label %if.then125.if.end208_crit_edge, label %if.then125.out_free_buffer_crit_edge

if.then125.out_free_buffer_crit_edge:             ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

if.then125.if.end208_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

cond.end147:                                      ; preds = %validate_head
  %call148 = call fastcc i32 @xlog_find_verify_log_record(ptr noundef %log, i64 noundef 0, ptr noundef nonnull %head_blk, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp149 = icmp slt i32 %call148, 0
  br i1 %cmp149, label %cond.end147.out_free_buffer_crit_edge, label %if.end152

cond.end147.out_free_buffer_crit_edge:            ; preds = %cond.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

if.end152:                                        ; preds = %cond.end147
  %49 = zext i32 %call148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call148, label %if.end152.out_free_buffer_crit_edge [
    i32 1, label %if.then155
    i32 0, label %if.end152.if.end208_crit_edge
  ]

if.end152.if.end208_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

if.end152.out_free_buffer_crit_edge:              ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

if.then155:                                       ; preds = %if.end152
  %conv156 = sext i32 %4 to i64
  %50 = ptrtoint ptr %head_blk to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %head_blk, align 8
  %sub158 = sub i64 %48, %51
  %sub159 = sub i64 %conv156, %sub158
  %52 = ptrtoint ptr %new_blk to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv156, ptr %new_blk, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %sub159)
  %cmp161 = icmp slt i64 %sub159, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub158)
  %cmp166 = icmp sgt i64 %sub158, -1
  %spec.select = and i1 %cmp166, %cmp161
  br i1 %spec.select, label %if.then155.cond.end177_crit_edge, label %cond.false176, !prof !234

if.then155.cond.end177_crit_edge:                 ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end177

cond.false176:                                    ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.8, i32 noundef 727) #13
  br label %cond.end177

cond.end177:                                      ; preds = %cond.false176, %if.then155.cond.end177_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %51)
  %cmp178 = icmp slt i64 %51, 2147483648
  br i1 %cmp178, label %cond.end177.cond.end188_crit_edge, label %cond.false187, !prof !234

cond.end177.cond.end188_crit_edge:                ; preds = %cond.end177
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end188

cond.false187:                                    ; preds = %cond.end177
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8, i32 noundef 728) #13
  br label %cond.end188

cond.end188:                                      ; preds = %cond.false187, %cond.end177.cond.end188_crit_edge
  %conv189 = trunc i64 %51 to i32
  %call190 = call fastcc i32 @xlog_find_verify_log_record(ptr noundef %log, i64 noundef %sub159, ptr noundef nonnull %new_blk, i32 noundef %conv189)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call190)
  %cmp191 = icmp eq i32 %call190, 1
  %spec.store.select231 = select i1 %cmp191, i32 -5, i32 %call190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select231)
  %tobool195.not = icmp eq i32 %spec.store.select231, 0
  br i1 %tobool195.not, label %if.end197, label %cond.end188.out_free_buffer_crit_edge

cond.end188.out_free_buffer_crit_edge:            ; preds = %cond.end188
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

if.end197:                                        ; preds = %cond.end188
  %53 = ptrtoint ptr %new_blk to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %new_blk, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %conv156)
  %cmp199.not = icmp eq i64 %54, %conv156
  br i1 %cmp199.not, label %if.end197.if.end208_crit_edge, label %if.then201

if.end197.if.end208_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

if.then201:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %head_blk to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %head_blk, align 8
  br label %if.end208

if.end208:                                        ; preds = %if.then201, %if.end197.if.end208_crit_edge, %if.end152.if.end208_crit_edge, %if.then125.if.end208_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call7) #13
  %56 = ptrtoint ptr %head_blk to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %head_blk, align 8
  %conv209 = sext i32 %4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %conv209)
  %cmp210 = icmp eq i64 %57, %conv209
  %. = select i1 %cmp210, i64 0, i64 %57
  %58 = ptrtoint ptr %return_head_blk to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %., ptr %return_head_blk, align 8
  br label %cleanup

out_free_buffer:                                  ; preds = %cond.end188.out_free_buffer_crit_edge, %if.end152.out_free_buffer_crit_edge, %cond.end147.out_free_buffer_crit_edge, %if.then125.out_free_buffer_crit_edge, %cond.end101.out_free_buffer_crit_edge, %cond.end75.out_free_buffer_crit_edge, %if.then50.out_free_buffer_crit_edge, %if.else.out_free_buffer_crit_edge, %xlog_get_cycle.exit.out_free_buffer_crit_edge, %if.end10.out_free_buffer_crit_edge
  %error.0 = phi i32 [ %call11, %if.end10.out_free_buffer_crit_edge ], [ %call16, %xlog_get_cycle.exit.out_free_buffer_crit_edge ], [ %call53, %if.then50.out_free_buffer_crit_edge ], [ %spec.store.select, %if.then125.out_free_buffer_crit_edge ], [ %call148, %cond.end147.out_free_buffer_crit_edge ], [ %spec.store.select231, %cond.end188.out_free_buffer_crit_edge ], [ %call83, %cond.end75.out_free_buffer_crit_edge ], [ %call103, %cond.end101.out_free_buffer_crit_edge ], [ %call30, %if.else.out_free_buffer_crit_edge ], [ %call148, %if.end152.out_free_buffer_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call7) #13
  %59 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %60, ptr noundef nonnull @.str.20) #13
  br label %cleanup

cleanup:                                          ; preds = %out_free_buffer, %if.end208, %if.end6.cleanup_crit_edge, %if.then3, %if.then2.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %error.0, %out_free_buffer ], [ 0, %if.end208 ], [ 0, %if.then3 ], [ 0, %if.then2.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head_blk) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %first_blk) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_blk) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xlog_alloc_buffer(ptr nocapture noundef readonly %log, i32 noundef %nbblks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %l_logBBsize.i = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 16
  %0 = ptrtoint ptr %l_logBBsize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l_logBBsize.i, align 4
  %conv.i = sext i32 %1 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not.i = icmp sgt i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbblks)
  %cmp3.i = icmp sgt i32 %nbblks, 0
  %or.cond.i.not = and i1 %cmp3.i, %cmp1.not.i
  %conv617.i = zext i32 %nbblks to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv617.i, i64 %conv.i)
  %cmp9.i = icmp ule i64 %conv617.i, %conv.i
  %or.cond = and i1 %or.cond.i.not, %cmp9.i
  br i1 %or.cond, label %if.end, label %__here, !prof !238

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log, align 128
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !239
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.32, i32 noundef 1, ptr noundef %3, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 88, ptr noundef blockaddress(@xlog_alloc_buffer, %__here)) #13
  %4 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %5, ptr noundef nonnull @.str.33, i32 noundef %nbblks) #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nbblks)
  %cmp = icmp ugt i32 %nbblks, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %l_sectBBsize = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 11
  %6 = ptrtoint ptr %l_sectBBsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %l_sectBBsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp4 = icmp ugt i32 %7, 1
  %add = select i1 %cmp4, i32 %7, i32 0
  %spec.select = add nuw i32 %nbblks, 8388607
  %phi.bo = add i32 %spec.select, %add
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end.if.end7_crit_edge
  %nbblks.addr.0 = phi i32 [ 8388608, %if.end.if.end7_crit_edge ], [ %phi.bo, %land.lhs.true ]
  %l_sectBBsize8 = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 11
  %8 = ptrtoint ptr %l_sectBBsize8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %l_sectBBsize8, align 4
  %sub9 = add i32 %9, 8388607
  %or = or i32 %sub9, %nbblks.addr.0
  %add10 = shl i32 %or, 9
  %shl = add i32 %add10, 512
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %shl, i32 noundef 19904, i32 noundef -1) #16
  br label %return

return:                                           ; preds = %if.end7, %__here
  %retval.0 = phi ptr [ null, %__here ], [ %call.i.i, %if.end7 ]
  ret ptr %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %blk_no, i32 noundef %nbblks, ptr noundef %data, ptr nocapture noundef writeonly %offset) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xlog_do_io(ptr noundef %log, i64 noundef %blk_no, i32 noundef %nbblks, ptr noundef %data, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %l_sectBBsize.i = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 11
  %0 = ptrtoint ptr %l_sectBBsize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l_sectBBsize.i, align 4
  %conv.i = zext i32 %1 to i64
  %sub.i = add nuw nsw i64 %conv.i, 8388607
  %and.i = and i64 %sub.i, %blk_no
  %and.tr.i = trunc i64 %and.i to i32
  %conv1.i = shl i32 %and.tr.i, 9
  %add.ptr = getelementptr i8, ptr %data, i32 %conv1.i
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_rseek_logrec_hdr(ptr noundef %log, i64 noundef %head_blk, i64 noundef %tail_blk, i32 noundef %count, ptr noundef %buffer, ptr nocapture noundef writeonly %rblk, ptr nocapture noundef writeonly %rhead, ptr nocapture noundef writeonly %wrapped) unnamed_addr #3 align 64 {
entry:
  %offset = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #13
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %offset, align 4
  %1 = ptrtoint ptr %wrapped to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %wrapped, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %head_blk, i64 %tail_blk)
  %cmp = icmp sgt i64 %head_blk, %tail_blk
  %spec.select = select i1 %cmp, i64 %tail_blk, i64 0
  %conv = trunc i64 %head_blk to i32
  %i.074 = add i32 %conv, -1
  %conv175 = sext i32 %i.074 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select, i64 %conv175)
  %cmp2.not76 = icmp sgt i64 %spec.select, %conv175
  br i1 %cmp2.not76, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %conv179 = phi i64 [ %conv1, %for.inc.for.body_crit_edge ], [ %conv175, %entry.for.body_crit_edge ]
  %found.077 = phi i32 [ %found.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %indvars = trunc i64 %conv179 to i32
  %call = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %conv179, i32 noundef 1, ptr noundef %buffer, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %offset, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17974594, i32 %5)
  %cmp5 = icmp eq i32 %5, -17974594
  br i1 %cmp5, label %if.then7, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then7:                                         ; preds = %if.end
  %6 = ptrtoint ptr %rblk to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv179, ptr %rblk, align 8
  %7 = ptrtoint ptr %rhead to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %rhead, align 4
  %inc = add i32 %found.077, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %count)
  %cmp9 = icmp eq i32 %inc, %count
  br i1 %cmp9, label %if.then7.cleanup_crit_edge, label %if.then7.for.inc_crit_edge

if.then7.for.inc_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %if.then7.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %found.1 = phi i32 [ %inc, %if.then7.for.inc_crit_edge ], [ %found.077, %if.end.for.inc_crit_edge ]
  %i.0 = add i32 %indvars, -1
  %conv1 = sext i32 %i.0 to i64
  %cmp2.not = icmp sgt i64 %spec.select, %conv1
  br i1 %cmp2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %found.2 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %found.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %found.2, i32 %count)
  %cmp16.not = icmp eq i32 %found.2, %count
  %or.cond = select i1 %cmp, i1 true, i1 %cmp16.not
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.then18

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then18:                                        ; preds = %for.end
  %l_logBBsize = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 16
  %8 = ptrtoint ptr %l_logBBsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %l_logBBsize, align 4
  %conv21 = trunc i64 %tail_blk to i32
  %i.181 = add i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.181, i32 %conv21)
  %cmp22.not82 = icmp slt i32 %i.181, %conv21
  br i1 %cmp22.not82, label %if.then18.cleanup_crit_edge, label %if.then18.for.body24_crit_edge

if.then18.for.body24_crit_edge:                   ; preds = %if.then18
  br label %for.body24

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body24:                                       ; preds = %for.inc40.for.body24_crit_edge, %if.then18.for.body24_crit_edge
  %i.184 = phi i32 [ %i.1, %for.inc40.for.body24_crit_edge ], [ %i.181, %if.then18.for.body24_crit_edge ]
  %found.383 = phi i32 [ %found.4, %for.inc40.for.body24_crit_edge ], [ %found.2, %if.then18.for.body24_crit_edge ]
  %conv25 = sext i32 %i.184 to i64
  %call26 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %conv25, i32 noundef 1, ptr noundef %buffer, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %for.body24.cleanup_crit_edge

for.body24.cleanup_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %for.body24
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %offset, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17974594, i32 %13)
  %cmp30 = icmp eq i32 %13, -17974594
  br i1 %cmp30, label %if.then32, label %if.end29.for.inc40_crit_edge

if.end29.for.inc40_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc40

if.then32:                                        ; preds = %if.end29
  %14 = ptrtoint ptr %wrapped to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %wrapped, align 1
  %15 = ptrtoint ptr %rblk to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv25, ptr %rblk, align 8
  %16 = ptrtoint ptr %rhead to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %11, ptr %rhead, align 4
  %inc34 = add i32 %found.383, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc34, i32 %count)
  %cmp35 = icmp eq i32 %inc34, %count
  br i1 %cmp35, label %if.then32.cleanup_crit_edge, label %if.then32.for.inc40_crit_edge

if.then32.for.inc40_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc40

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc40:                                        ; preds = %if.then32.for.inc40_crit_edge, %if.end29.for.inc40_crit_edge
  %found.4 = phi i32 [ %inc34, %if.then32.for.inc40_crit_edge ], [ %found.383, %if.end29.for.inc40_crit_edge ]
  %i.1 = add i32 %i.184, -1
  %cmp22.not = icmp slt i32 %i.1, %conv21
  br i1 %cmp22.not, label %for.inc40.cleanup_crit_edge, label %for.inc40.for.body24_crit_edge

for.inc40.for.body24_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.inc40.cleanup_crit_edge:                      ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc40.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %for.body24.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %found.2, %for.end.cleanup_crit_edge ], [ %found.2, %if.then18.cleanup_crit_edge ], [ %found.4, %for.inc40.cleanup_crit_edge ], [ %count, %if.then32.cleanup_crit_edge ], [ %call26, %for.body24.cleanup_crit_edge ], [ %count, %if.then7.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlog_set_state(ptr noundef %log, i64 noundef %head_blk, ptr nocapture noundef readonly %rhead, i64 noundef %rhead_blk, i1 noundef zeroext %bump_cycle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %rhead_blk to i32
  %l_prev_block = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 25
  %0 = ptrtoint ptr %l_prev_block to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %l_prev_block, align 4
  %conv1 = trunc i64 %head_blk to i32
  %l_curr_block = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 24
  %1 = ptrtoint ptr %l_curr_block to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv1, ptr %l_curr_block, align 16
  %h_cycle = getelementptr inbounds %struct.xlog_rec_header, ptr %rhead, i32 0, i32 1
  %2 = ptrtoint ptr %h_cycle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h_cycle, align 4
  %inc = zext i1 %bump_cycle to i32
  %spec.select = add i32 %3, %inc
  %l_curr_cycle = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 22
  %4 = ptrtoint ptr %l_curr_cycle to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %l_curr_cycle, align 8
  %l_tail_lsn = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 29
  %h_tail_lsn = getelementptr inbounds %struct.xlog_rec_header, ptr %rhead, i32 0, i32 5
  %5 = ptrtoint ptr %h_tail_lsn to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %h_tail_lsn, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %l_tail_lsn, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %l_tail_lsn, i64 noundef %6) #13
  %l_last_sync_lsn = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 27
  %h_lsn = getelementptr inbounds %struct.xlog_rec_header, ptr %rhead, i32 0, i32 4
  %7 = ptrtoint ptr %h_lsn to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %h_lsn, align 8
  %call.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %l_last_sync_lsn, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %l_last_sync_lsn, i64 noundef %8) #13
  %grant = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 31, i32 2
  %9 = ptrtoint ptr %l_curr_cycle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %l_curr_cycle, align 8
  %11 = ptrtoint ptr %l_curr_block to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %l_curr_block, align 16
  %shl = shl i32 %12, 9
  %conv2.i.i = zext i32 %10 to i64
  %shl.i.i = shl nuw i64 %conv2.i.i, 32
  %conv1.i.i = sext i32 %shl to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %grant, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %grant, i64 noundef %or.i.i) #13
  %grant5 = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 32, i32 2
  %13 = ptrtoint ptr %l_curr_cycle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %l_curr_cycle, align 8
  %15 = ptrtoint ptr %l_curr_block to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %l_curr_block, align 16
  %shl8 = shl i32 %16, 9
  %conv2.i.i23 = zext i32 %14 to i64
  %shl.i.i24 = shl nuw i64 %conv2.i.i23, 32
  %conv1.i.i25 = sext i32 %shl8 to i64
  %or.i.i26 = or i64 %shl.i.i24, %conv1.i.i25
  %call.i.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %grant5, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %grant5, i64 noundef %or.i.i26) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_check_unmount_rec(ptr noundef %log, ptr nocapture noundef readonly %head_blk, ptr nocapture noundef writeonly %tail_blk, ptr nocapture noundef readonly %rhead, i64 noundef %rhead_blk, ptr noundef %buffer, ptr nocapture noundef writeonly %clean) unnamed_addr #0 align 64 {
entry:
  %mod.i42 = alloca i32, align 4
  %mod.i = alloca i32, align 4
  %offset = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #13
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %offset, align 4, !annotation !233
  %1 = ptrtoint ptr %clean to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %clean, align 1
  %2 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log, align 128
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %5, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end3.i_crit_edge, label %if.then.i

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then.i:                                        ; preds = %entry
  %h_size1.i = getelementptr inbounds %struct.xlog_rec_header, ptr %rhead, i32 0, i32 12
  %6 = ptrtoint ptr %h_size1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %h_size1.i, align 8
  %h_version.i = getelementptr inbounds %struct.xlog_rec_header, ptr %rhead, i32 0, i32 2
  %8 = ptrtoint ptr %h_version.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h_version.i, align 8
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %7)
  %cmp.i = icmp sgt i32 %7, 32768
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  %sub.i = add i32 %7, 32767
  %div.i = sdiv i32 %sub.i, 32768
  br i1 %or.cond.i, label %if.then.i.xlog_logrec_hblks.exit_crit_edge, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then.i.xlog_logrec_hblks.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xlog_logrec_hblks.exit

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %entry.if.end3.i_crit_edge
  br label %xlog_logrec_hblks.exit

xlog_logrec_hblks.exit:                           ; preds = %if.end3.i, %if.then.i.xlog_logrec_hblks.exit_crit_edge
  %retval.1.i = phi i32 [ %div.i, %if.then.i.xlog_logrec_hblks.exit_crit_edge ], [ 1, %if.end3.i ]
  %conv = sext i32 %retval.1.i to i64
  %add = add i64 %conv, %rhead_blk
  %h_len = getelementptr inbounds %struct.xlog_rec_header, ptr %rhead, i32 0, i32 3
  %10 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %h_len, align 4
  %conv1 = zext i32 %11 to i64
  %sub = add nuw nsw i64 %conv1, 511
  %shr = lshr i64 %sub, 9
  %add3 = add i64 %shr, %add
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mod.i) #13
  %12 = ptrtoint ptr %mod.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %mod.i, align 4, !annotation !233
  %l_logBBsize.i = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 16
  %13 = ptrtoint ptr %l_logBBsize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %l_logBBsize.i, align 4
  %call.i = call i64 @div_s64_rem(i64 noundef %add3, i32 noundef %14, ptr noundef nonnull %mod.i) #13
  %15 = ptrtoint ptr %mod.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mod.i, align 4
  %conv.i = sext i32 %16 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mod.i) #13
  %17 = ptrtoint ptr %head_blk to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %head_blk, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %conv.i)
  %cmp = icmp eq i64 %18, %conv.i
  br i1 %cmp, label %land.lhs.true, label %xlog_logrec_hblks.exit.cleanup_crit_edge

xlog_logrec_hblks.exit.cleanup_crit_edge:         ; preds = %xlog_logrec_hblks.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %xlog_logrec_hblks.exit
  %h_num_logops = getelementptr inbounds %struct.xlog_rec_header, ptr %rhead, i32 0, i32 8
  %19 = ptrtoint ptr %h_num_logops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %h_num_logops, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp6 = icmp eq i32 %20, 1
  br i1 %cmp6, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mod.i42) #13
  %21 = ptrtoint ptr %mod.i42 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %mod.i42, align 4, !annotation !233
  %22 = ptrtoint ptr %l_logBBsize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %l_logBBsize.i, align 4
  %call.i44 = call i64 @div_s64_rem(i64 noundef %add, i32 noundef %23, ptr noundef nonnull %mod.i42) #13
  %24 = ptrtoint ptr %mod.i42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mod.i42, align 4
  %conv.i45 = sext i32 %25 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mod.i42) #13
  %call11 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %conv.i45, i32 noundef 1, ptr noundef %buffer, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %offset, align 4
  %oh_flags = getelementptr inbounds %struct.xlog_op_header, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %oh_flags to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %oh_flags, align 1
  %30 = and i8 %29, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool14.not = icmp eq i8 %30, 0
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.then15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %l_tail_lsn = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 29
  %l_curr_cycle = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 22
  %31 = ptrtoint ptr %l_curr_cycle to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %l_curr_cycle, align 8
  %conv.i.i = zext i32 %32 to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %16 to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %l_tail_lsn, i32 noundef 8) #13
  call void @generic_atomic64_set(ptr noundef %l_tail_lsn, i64 noundef %or.i.i) #13
  %l_last_sync_lsn = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 27
  %33 = ptrtoint ptr %l_curr_cycle to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %l_curr_cycle, align 8
  %conv.i.i46 = zext i32 %34 to i64
  %shl.i.i47 = shl nuw i64 %conv.i.i46, 32
  %or.i.i49 = or i64 %shl.i.i47, %conv1.i.i
  %call.i.i.i50 = call zeroext i1 @__kasan_check_write(ptr noundef %l_last_sync_lsn, i32 noundef 8) #13
  call void @generic_atomic64_set(ptr noundef %l_last_sync_lsn, i64 noundef %or.i.i49) #13
  %35 = ptrtoint ptr %tail_blk to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv.i, ptr %tail_blk, align 8
  %36 = ptrtoint ptr %clean to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %clean, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %xlog_logrec_hblks.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %xlog_logrec_hblks.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_verify_head(ptr noundef %log, ptr nocapture noundef %head_blk, ptr nocapture noundef %tail_blk, ptr noundef %buffer, ptr nocapture noundef writeonly %rhead_blk, ptr nocapture noundef %rhead, ptr nocapture noundef writeonly %wrapped) unnamed_addr #3 align 64 {
entry:
  %tmp_rhead = alloca ptr, align 4
  %first_bad = alloca i64, align 8
  %tmp_rhead_blk = alloca i64, align 8
  %tmp_wrapped = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_rhead) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %first_bad) #13
  %0 = ptrtoint ptr %first_bad to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %first_bad, align 8, !annotation !233
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_rhead_blk) #13
  %1 = ptrtoint ptr %tmp_rhead_blk to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %tmp_rhead_blk, align 8, !annotation !233
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp_wrapped) #13
  %call = tail call fastcc ptr @xlog_alloc_buffer(ptr noundef %log, i32 noundef 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %head_blk to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %head_blk, align 8
  %4 = ptrtoint ptr %tail_blk to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tail_blk, align 8
  %call1 = call fastcc i32 @xlog_rseek_logrec_hdr(ptr noundef %log, i64 noundef %3, i64 noundef %5, i32 noundef 8, ptr noundef nonnull %call, ptr noundef nonnull %tmp_rhead_blk, ptr noundef nonnull %tmp_rhead, ptr noundef nonnull %tmp_wrapped)
  tail call void @kvfree(ptr noundef nonnull %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %head_blk to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %head_blk, align 8
  %8 = ptrtoint ptr %tmp_rhead_blk to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tmp_rhead_blk, align 8
  %call4 = call fastcc i32 @xlog_do_recovery_pass(ptr noundef %log, i64 noundef %7, i64 noundef %9, i32 noundef 0, ptr noundef nonnull %first_bad)
  %10 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call4, label %if.end3.cleanup_crit_edge [
    i32 -74, label %if.end3.land.lhs.true_crit_edge
    i32 -117, label %if.end3.land.lhs.true_crit_edge62
    i32 0, label %if.end3.if.end24_crit_edge
  ]

if.end3.if.end24_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.end3.land.lhs.true_crit_edge62:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.end3.land.lhs.true_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end3.land.lhs.true_crit_edge, %if.end3.land.lhs.true_crit_edge62
  %11 = ptrtoint ptr %first_bad to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %first_bad, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool7.not = icmp eq i64 %12, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %if.then8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true
  %13 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %log, align 128
  %15 = ptrtoint ptr %head_blk to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %head_blk, align 8
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %14, ptr noundef nonnull @.str.40, i64 noundef %12, i64 noundef %16) #13
  %17 = ptrtoint ptr %first_bad to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %first_bad, align 8
  %19 = ptrtoint ptr %tail_blk to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tail_blk, align 8
  %call9 = call fastcc i32 @xlog_rseek_logrec_hdr(ptr noundef %log, i64 noundef %18, i64 noundef %20, i32 noundef 1, ptr noundef %buffer, ptr noundef %rhead_blk, ptr noundef %rhead, ptr noundef %wrapped)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then8.cleanup_crit_edge, label %if.end12

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp13 = icmp eq i32 %call9, 0
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %21 = ptrtoint ptr %first_bad to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %first_bad, align 8
  %23 = ptrtoint ptr %head_blk to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %head_blk, align 8
  %24 = ptrtoint ptr %rhead to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rhead, align 4
  %h_tail_lsn = getelementptr inbounds %struct.xlog_rec_header, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %h_tail_lsn to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %h_tail_lsn, align 8
  %conv16 = and i64 %27, 4294967295
  %28 = ptrtoint ptr %tail_blk to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv16, ptr %tail_blk, align 8
  %29 = load i64, ptr %head_blk, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %conv16)
  %cmp17 = icmp eq i64 %29, %conv16
  br i1 %cmp17, label %if.then19, label %if.end15.if.end24_crit_edge

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, i32 noundef 1104) #13
  br label %cleanup

if.end24:                                         ; preds = %if.end15.if.end24_crit_edge, %if.end3.if.end24_crit_edge
  %30 = ptrtoint ptr %head_blk to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %head_blk, align 8
  %32 = ptrtoint ptr %rhead to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rhead, align 4
  %h_size = getelementptr inbounds %struct.xlog_rec_header, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %h_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %h_size, align 8
  %call25 = call fastcc i32 @xlog_verify_tail(ptr noundef %log, i64 noundef %31, ptr noundef %tail_blk, i32 noundef %35)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then19, %if.end12.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then19 ], [ %call25, %if.end24 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call9, %if.then8.cleanup_crit_edge ], [ -5, %if.end12.cleanup_crit_edge ], [ %call4, %land.lhs.true.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp_wrapped) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_rhead_blk) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %first_bad) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_rhead) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_clear_stale_blocks(ptr noundef %log, i64 noundef %tail_lsn) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i64 %tail_lsn, 32
  %conv = trunc i64 %0 to i32
  %conv1 = trunc i64 %tail_lsn to i32
  %l_curr_cycle = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 22
  %1 = ptrtoint ptr %l_curr_cycle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %l_curr_cycle, align 8
  %l_curr_block = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 24
  %3 = ptrtoint ptr %l_curr_block to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %l_curr_block, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp = icmp eq i32 %2, %conv
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv1)
  %cmp3 = icmp slt i32 %4, %conv1
  br i1 %cmp3, label %if.then.__here_crit_edge, label %lor.rhs, !prof !237

if.then.__here_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

lor.rhs:                                          ; preds = %if.then
  %l_logBBsize = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 16
  %5 = ptrtoint ptr %l_logBBsize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %l_logBBsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp5.not = icmp sgt i32 %6, %4
  br i1 %cmp5.not, label %if.end, label %lor.rhs.__here_crit_edge, !prof !234

lor.rhs.__here_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %lor.rhs.__here_crit_edge, %if.then.__here_crit_edge
  %7 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log, align 128
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !240
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.75, i32 noundef 1, ptr noundef %8, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 1645, ptr noundef blockaddress(@xlog_clear_stale_blocks, %__here)) #13
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %conv1, %4
  %add = add i32 %sub, %6
  br label %if.end31

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv1)
  %cmp10.not = icmp sge i32 %4, %conv1
  %add13 = add i32 %conv, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %add13)
  %cmp14 = icmp ne i32 %2, %add13
  %9 = select i1 %cmp10.not, i1 true, i1 %cmp14
  br i1 %9, label %__here25, label %if.end29, !prof !237

__here25:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %log, align 128
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !241
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.76, i32 noundef 1, ptr noundef %11, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 1656, ptr noundef blockaddress(@xlog_clear_stale_blocks, %__here25)) #13
  br label %cleanup

if.end29:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %sub30 = sub i32 %conv1, %4
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %if.end
  %tail_distance.0 = phi i32 [ %add, %if.end ], [ %sub30, %if.end29 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tail_distance.0)
  %cmp32 = icmp slt i32 %tail_distance.0, 1
  br i1 %cmp32, label %if.then34, label %if.end45

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tail_distance.0)
  %cmp35 = icmp eq i32 %tail_distance.0, 0
  br i1 %cmp35, label %if.then34.cleanup_crit_edge, label %cond.false44, !prof !234

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.false44:                                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.8, i32 noundef 1666) #13
  br label %cleanup

if.end45:                                         ; preds = %if.end31
  %12 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %log, align 128
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %13, i32 0, i32 61
  %14 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %15, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %conv52 = select i1 %tobool.i.not, i32 512, i32 4096
  %16 = tail call i32 @llvm.umin.i32(i32 %conv52, i32 %tail_distance.0)
  %add60 = add i32 %16, %4
  %l_logBBsize61 = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 16
  %17 = ptrtoint ptr %l_logBBsize61 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %l_logBBsize61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add60, i32 %18)
  %cmp62.not = icmp sgt i32 %add60, %18
  br i1 %cmp62.not, label %if.else70, label %if.then64

if.then64:                                        ; preds = %if.end45
  %sub65 = add i32 %2, -1
  %call66 = tail call fastcc i32 @xlog_write_log_records(ptr noundef %log, i32 noundef %sub65, i32 noundef %4, i32 noundef %16, i32 noundef %conv, i32 noundef %conv1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then64.if.end85_crit_edge, label %if.then64.cleanup_crit_edge

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then64.if.end85_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.else70:                                        ; preds = %if.end45
  %sub72 = sub i32 %18, %4
  %sub73 = add i32 %2, -1
  %call74 = tail call fastcc i32 @xlog_write_log_records(ptr noundef %log, i32 noundef %sub73, i32 noundef %4, i32 noundef %sub72, i32 noundef %conv, i32 noundef %conv1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.else70.cleanup_crit_edge

if.else70.cleanup_crit_edge:                      ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end77:                                         ; preds = %if.else70
  %19 = ptrtoint ptr %l_logBBsize61 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %l_logBBsize61, align 4
  %sub80 = sub i32 %add60, %20
  %call81 = tail call fastcc i32 @xlog_write_log_records(ptr noundef %log, i32 noundef %2, i32 noundef 0, i32 noundef %sub80, i32 noundef %conv, i32 noundef %conv1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end77.if.end85_crit_edge, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end77.if.end85_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.end85:                                         ; preds = %if.end77.if.end85_crit_edge, %if.then64.if.end85_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.end77.cleanup_crit_edge, %if.else70.cleanup_crit_edge, %if.then64.cleanup_crit_edge, %cond.false44, %if.then34.cleanup_crit_edge, %__here25, %__here
  %retval.0 = phi i32 [ -117, %__here ], [ 0, %if.end85 ], [ -117, %__here25 ], [ 0, %if.then34.cleanup_crit_edge ], [ 0, %cond.false44 ], [ %call66, %if.then64.cleanup_crit_edge ], [ %call74, %if.else70.cleanup_crit_edge ], [ %call81, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_find_zeroed(ptr noundef %log, ptr nocapture noundef writeonly %blk_no) unnamed_addr #3 align 64 {
entry:
  %offset = alloca ptr, align 4
  %new_blk = alloca i64, align 8
  %last_blk = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #13
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %offset, align 4, !annotation !233
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_blk) #13
  %1 = ptrtoint ptr %new_blk to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %new_blk, align 8, !annotation !233
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %last_blk) #13
  %l_logBBsize = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 16
  %2 = ptrtoint ptr %l_logBBsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %l_logBBsize, align 4
  %4 = ptrtoint ptr %blk_no to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %blk_no, align 8
  %call = tail call fastcc ptr @xlog_alloc_buffer(ptr noundef %log, i32 noundef 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %call, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %offset, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17974594, i32 %8)
  %cmp.i = icmp eq i32 %8, -17974594
  br i1 %cmp.i, label %if.then.i, label %if.end4.xlog_get_cycle.exit_crit_edge

if.end4.xlog_get_cycle.exit_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %xlog_get_cycle.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i32, ptr %6, i32 1
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  br label %xlog_get_cycle.exit

xlog_get_cycle.exit:                              ; preds = %if.then.i, %if.end4.xlog_get_cycle.exit_crit_edge
  %retval.0.i = phi i32 [ %10, %if.then.i ], [ %8, %if.end4.xlog_get_cycle.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %xlog_get_cycle.exit.cleanup.sink.split.sink.split_crit_edge, label %if.end7

xlog_get_cycle.exit.cleanup.sink.split.sink.split_crit_edge: ; preds = %xlog_get_cycle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.sink.split

if.end7:                                          ; preds = %xlog_get_cycle.exit
  %sub = add i32 %3, -1
  %conv = sext i32 %sub to i64
  %call8 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %conv, i32 noundef 1, ptr noundef nonnull %call, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup.sink.split_crit_edge

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %offset, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17974594, i32 %14)
  %cmp.i92 = icmp eq i32 %14, -17974594
  br i1 %cmp.i92, label %if.then.i94, label %if.end11.xlog_get_cycle.exit96_crit_edge

if.end11.xlog_get_cycle.exit96_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %xlog_get_cycle.exit96

if.then.i94:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i93 = getelementptr i32, ptr %12, i32 1
  %15 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i93, align 4
  br label %xlog_get_cycle.exit96

xlog_get_cycle.exit96:                            ; preds = %if.then.i94, %if.end11.xlog_get_cycle.exit96_crit_edge
  %retval.0.i95 = phi i32 [ %16, %if.then.i94 ], [ %14, %if.end11.xlog_get_cycle.exit96_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i95)
  %cmp13.not = icmp eq i32 %retval.0.i95, 0
  br i1 %cmp13.not, label %if.end16, label %xlog_get_cycle.exit96.cleanup.sink.split_crit_edge

xlog_get_cycle.exit96.cleanup.sink.split_crit_edge: ; preds = %xlog_get_cycle.exit96
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end16:                                         ; preds = %xlog_get_cycle.exit96
  %17 = ptrtoint ptr %last_blk to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %last_blk, align 8
  %call19 = call fastcc i32 @xlog_find_cycle_start(ptr noundef %log, ptr noundef nonnull %call, i64 noundef 0, ptr noundef nonnull %last_blk, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end16.cleanup.sink.split_crit_edge

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end16
  %18 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %log, align 128
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %19, i32 0, i32 61
  %20 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %21, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %sub26 = select i1 %tobool.i.not, i64 512, i64 4096
  %22 = ptrtoint ptr %last_blk to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %last_blk, align 8
  %24 = tail call i64 @llvm.smin.i64(i64 %23, i64 %sub26)
  %sub35 = sub i64 %23, %24
  %conv36 = trunc i64 %24 to i32
  %call37 = call fastcc i32 @xlog_find_verify_cycle(ptr noundef %log, i64 noundef %sub35, i32 noundef %conv36, i32 noundef 0, ptr noundef nonnull %new_blk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end22.cleanup.sink.split_crit_edge

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end40:                                         ; preds = %if.end22
  %25 = ptrtoint ptr %new_blk to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %new_blk, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %26)
  %cmp41.not = icmp eq i64 %26, -1
  br i1 %cmp41.not, label %if.end40.if.end44_crit_edge, label %if.then43

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %last_blk to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %last_blk, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40.if.end44_crit_edge
  %call45 = call fastcc i32 @xlog_find_verify_log_record(ptr noundef %log, i64 noundef %sub35, ptr noundef nonnull %last_blk, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call45)
  %cmp46 = icmp eq i32 %call45, 1
  %spec.store.select = select i1 %cmp46, i32 -5, i32 %call45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool50.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool50.not, label %28, label %if.end44.cleanup.sink.split_crit_edge

if.end44.cleanup.sink.split_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

28:                                               ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %last_blk to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %last_blk, align 8
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %28, %xlog_get_cycle.exit.cleanup.sink.split.sink.split_crit_edge
  %.sink = phi i64 [ %30, %28 ], [ 0, %xlog_get_cycle.exit.cleanup.sink.split.sink.split_crit_edge ]
  %31 = ptrtoint ptr %blk_no to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %.sink, ptr %blk_no, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end44.cleanup.sink.split_crit_edge, %if.end22.cleanup.sink.split_crit_edge, %if.end16.cleanup.sink.split_crit_edge, %xlog_get_cycle.exit96.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %xlog_get_cycle.exit96.cleanup.sink.split_crit_edge ], [ %spec.store.select, %if.end44.cleanup.sink.split_crit_edge ], [ %call37, %if.end22.cleanup.sink.split_crit_edge ], [ %call19, %if.end16.cleanup.sink.split_crit_edge ], [ %call8, %if.end7.cleanup.sink.split_crit_edge ], [ %call1, %if.end.cleanup.sink.split_crit_edge ], [ 1, %cleanup.sink.split.sink.split ]
  tail call void @kvfree(ptr noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %last_blk) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_blk) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_find_cycle_start(ptr noundef %log, ptr noundef %buffer, i64 noundef %first_blk, ptr nocapture noundef %last_blk, i32 noundef %cycle) unnamed_addr #3 align 64 {
entry:
  %offset = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #13
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %offset, align 4, !annotation !233
  %1 = ptrtoint ptr %last_blk to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %last_blk, align 8
  %add = add i64 %2, %first_blk
  %mid_blk.047 = ashr i64 %add, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %mid_blk.047, i64 %first_blk)
  %cmp.not48 = icmp eq i64 %mid_blk.047, %first_blk
  call void @__sanitizer_cov_trace_cmp8(i64 %mid_blk.047, i64 %2)
  %cmp1.not49 = icmp eq i64 %mid_blk.047, %2
  %or.cond50 = select i1 %cmp.not48, i1 true, i1 %cmp1.not49
  br i1 %or.cond50, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %xlog_get_cycle.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %mid_blk.053 = phi i64 [ %mid_blk.0, %xlog_get_cycle.exit.while.body_crit_edge ], [ %mid_blk.047, %entry.while.body_crit_edge ]
  %end_blk.052 = phi i64 [ %mid_blk.0.end_blk.0, %xlog_get_cycle.exit.while.body_crit_edge ], [ %2, %entry.while.body_crit_edge ]
  %first_blk.addr.051 = phi i64 [ %first_blk.addr.0.mid_blk.0, %xlog_get_cycle.exit.while.body_crit_edge ], [ %first_blk, %entry.while.body_crit_edge ]
  %call = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %mid_blk.053, i32 noundef 1, ptr noundef %buffer, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %while.body
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %offset, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17974594, i32 %6)
  %cmp.i = icmp eq i32 %6, -17974594
  br i1 %cmp.i, label %if.then.i, label %if.end.xlog_get_cycle.exit_crit_edge

if.end.xlog_get_cycle.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %xlog_get_cycle.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i32, ptr %4, i32 1
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  br label %xlog_get_cycle.exit

xlog_get_cycle.exit:                              ; preds = %if.then.i, %if.end.xlog_get_cycle.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.then.i ], [ %6, %if.end.xlog_get_cycle.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %cycle)
  %cmp3 = icmp eq i32 %retval.0.i, %cycle
  %first_blk.addr.0.mid_blk.0 = select i1 %cmp3, i64 %first_blk.addr.051, i64 %mid_blk.053
  %mid_blk.0.end_blk.0 = select i1 %cmp3, i64 %mid_blk.053, i64 %end_blk.052
  %add6 = add i64 %first_blk.addr.0.mid_blk.0, %mid_blk.0.end_blk.0
  %mid_blk.0 = ashr i64 %add6, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %mid_blk.0, i64 %first_blk.addr.0.mid_blk.0)
  %cmp.not = icmp eq i64 %mid_blk.0, %first_blk.addr.0.mid_blk.0
  call void @__sanitizer_cov_trace_cmp8(i64 %mid_blk.0, i64 %mid_blk.0.end_blk.0)
  %cmp1.not = icmp eq i64 %mid_blk.0, %mid_blk.0.end_blk.0
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp1.not
  br i1 %or.cond, label %xlog_get_cycle.exit.while.end_crit_edge, label %xlog_get_cycle.exit.while.body_crit_edge

xlog_get_cycle.exit.while.body_crit_edge:         ; preds = %xlog_get_cycle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

xlog_get_cycle.exit.while.end_crit_edge:          ; preds = %xlog_get_cycle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %xlog_get_cycle.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %first_blk.addr.0.lcssa = phi i64 [ %first_blk, %entry.while.end_crit_edge ], [ %first_blk.addr.0.mid_blk.0, %xlog_get_cycle.exit.while.end_crit_edge ]
  %end_blk.0.lcssa = phi i64 [ %2, %entry.while.end_crit_edge ], [ %mid_blk.0.end_blk.0, %xlog_get_cycle.exit.while.end_crit_edge ]
  %mid_blk.0.lcssa = phi i64 [ %mid_blk.047, %entry.while.end_crit_edge ], [ %mid_blk.0, %xlog_get_cycle.exit.while.end_crit_edge ]
  %cmp.not.lcssa = phi i1 [ %cmp.not48, %entry.while.end_crit_edge ], [ %cmp.not, %xlog_get_cycle.exit.while.end_crit_edge ]
  %cmp1.not.lcssa = phi i1 [ %cmp1.not49, %entry.while.end_crit_edge ], [ %cmp1.not, %xlog_get_cycle.exit.while.end_crit_edge ]
  %add9 = add nsw i64 %mid_blk.0.lcssa, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add9, i64 %end_blk.0.lcssa)
  %cmp10 = icmp eq i64 %add9, %end_blk.0.lcssa
  %or.cond40 = select i1 %cmp.not.lcssa, i1 %cmp10, i1 false
  br i1 %or.cond40, label %while.end.cond.end_crit_edge, label %lor.rhs

while.end.cond.end_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

lor.rhs:                                          ; preds = %while.end
  %sub = add nsw i64 %mid_blk.0.lcssa, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %first_blk.addr.0.lcssa)
  %cmp13 = icmp eq i64 %sub, %first_blk.addr.0.lcssa
  %or.cond41 = select i1 %cmp1.not.lcssa, i1 %cmp13, i1 false
  br i1 %or.cond41, label %lor.rhs.cond.end_crit_edge, label %cond.false, !prof !242

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.8, i32 noundef 303) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.rhs.cond.end_crit_edge, %while.end.cond.end_crit_edge
  %9 = ptrtoint ptr %last_blk to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %end_blk.0.lcssa, ptr %last_blk, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ %call, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_find_verify_cycle(ptr noundef %log, i64 noundef %start_blk, i32 noundef %nbblks, i32 noundef %stop_on_cycle_no, ptr nocapture noundef writeonly %new_blk) unnamed_addr #3 align 64 {
entry:
  %buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #13
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %buf, align 4
  %1 = tail call i32 @llvm.cttz.i32(i32 %nbblks, i1 true), !range !243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbblks)
  %iszero = icmp eq i32 %nbblks, 0
  %.op = shl i32 2, %1
  %shl = select i1 %iszero, i32 1, i32 %.op
  %conv = sext i32 %shl to i64
  %l_logBBsize = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 16
  %2 = ptrtoint ptr %l_logBBsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %l_logBBsize, align 4
  %conv1 = sext i32 %3 to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %bufblks.0 = phi i64 [ %conv, %entry ], [ %shr, %while.cond.while.cond_crit_edge ]
  %cmp = icmp sgt i64 %bufblks.0, %conv1
  %shr = ashr i64 %bufblks.0, 1
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.cond3.preheader

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

while.cond3.preheader:                            ; preds = %while.cond
  %l_sectBBsize = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 11
  br label %while.cond3

while.cond3:                                      ; preds = %while.body5.while.cond3_crit_edge, %while.cond3.preheader
  %bufblks.1 = phi i64 [ %shr6, %while.body5.while.cond3_crit_edge ], [ %bufblks.0, %while.cond3.preheader ]
  %conv4 = trunc i64 %bufblks.1 to i32
  %call = tail call fastcc ptr @xlog_alloc_buffer(ptr noundef %log, i32 noundef %conv4)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body5, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond3
  %conv11 = sext i32 %nbblks to i64
  %add = add i64 %conv11, %start_blk
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %start_blk)
  %cmp1285 = icmp sgt i64 %add, %start_blk
  br i1 %cmp1285, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.out.sink.split_crit_edge

for.cond.preheader.out.sink.split_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

while.body5:                                      ; preds = %while.cond3
  %shr6 = ashr i64 %bufblks.1, 1
  %4 = ptrtoint ptr %l_sectBBsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %l_sectBBsize, align 4
  %conv7 = zext i32 %5 to i64
  %cmp8 = icmp slt i64 %shr6, %conv7
  br i1 %cmp8, label %while.body5.cleanup37_crit_edge, label %while.body5.while.cond3_crit_edge

while.body5.while.cond3_crit_edge:                ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond3

while.body5.cleanup37_crit_edge:                  ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

for.body:                                         ; preds = %for.inc34.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.086 = phi i64 [ %add35, %for.inc34.for.body_crit_edge ], [ %start_blk, %for.cond.preheader.for.body_crit_edge ]
  %sub = sub i64 %add, %i.086
  %6 = tail call i64 @llvm.smin.i64(i64 %bufblks.1, i64 %sub)
  %7 = trunc i64 %6 to i32
  %call19 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %i.086, i32 noundef %7, ptr noundef nonnull %call, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.cond23.preheader, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.cond23.preheader:                             ; preds = %for.body
  %conv24 = sext i32 %7 to i64
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %buf.promoted = load ptr, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2582 = icmp sgt i32 %7, 0
  br i1 %cmp2582, label %for.cond23.preheader.for.body27_crit_edge, label %for.cond23.preheader.for.inc34_crit_edge

for.cond23.preheader.for.inc34_crit_edge:         ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc34

for.cond23.preheader.for.body27_crit_edge:        ; preds = %for.cond23.preheader
  br label %for.body27

for.body27:                                       ; preds = %if.end33.for.body27_crit_edge, %for.cond23.preheader.for.body27_crit_edge
  %j.084 = phi i64 [ %inc, %if.end33.for.body27_crit_edge ], [ 0, %for.cond23.preheader.for.body27_crit_edge ]
  %add.ptr8083 = phi ptr [ %add.ptr, %if.end33.for.body27_crit_edge ], [ %buf.promoted, %for.cond23.preheader.for.body27_crit_edge ]
  %9 = ptrtoint ptr %add.ptr8083 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr8083, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17974594, i32 %10)
  %cmp.i = icmp eq i32 %10, -17974594
  br i1 %cmp.i, label %if.then.i, label %for.body27.xlog_get_cycle.exit_crit_edge

for.body27.xlog_get_cycle.exit_crit_edge:         ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #15
  br label %xlog_get_cycle.exit

if.then.i:                                        ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i32, ptr %add.ptr8083, i32 1
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  br label %xlog_get_cycle.exit

xlog_get_cycle.exit:                              ; preds = %if.then.i, %for.body27.xlog_get_cycle.exit_crit_edge
  %retval.0.i = phi i32 [ %12, %if.then.i ], [ %10, %for.body27.xlog_get_cycle.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %stop_on_cycle_no)
  %cmp29 = icmp eq i32 %retval.0.i, %stop_on_cycle_no
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %xlog_get_cycle.exit
  call void @__sanitizer_cov_trace_pc() #15
  %add32 = add i64 %j.084, %i.086
  br label %out.sink.split

if.end33:                                         ; preds = %xlog_get_cycle.exit
  %add.ptr = getelementptr i8, ptr %add.ptr8083, i32 512
  %inc = add nuw nsw i64 %j.084, 1
  %cmp25 = icmp slt i64 %inc, %conv24
  br i1 %cmp25, label %if.end33.for.body27_crit_edge, label %if.end33.for.inc34_crit_edge

if.end33.for.inc34_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc34

if.end33.for.body27_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body27

for.inc34:                                        ; preds = %if.end33.for.inc34_crit_edge, %for.cond23.preheader.for.inc34_crit_edge
  %add.ptr80.lcssa = phi ptr [ %buf.promoted, %for.cond23.preheader.for.inc34_crit_edge ], [ %add.ptr, %if.end33.for.inc34_crit_edge ]
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr80.lcssa, ptr %buf, align 4
  %add35 = add i64 %i.086, %bufblks.1
  %cmp12 = icmp sgt i64 %add, %add35
  br i1 %cmp12, label %for.inc34.for.body_crit_edge, label %for.inc34.out.sink.split_crit_edge

for.inc34.out.sink.split_crit_edge:               ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split

for.inc34.for.body_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

out.sink.split:                                   ; preds = %for.inc34.out.sink.split_crit_edge, %if.then31, %for.cond.preheader.out.sink.split_crit_edge
  %add32.sink = phi i64 [ %add32, %if.then31 ], [ -1, %for.cond.preheader.out.sink.split_crit_edge ], [ -1, %for.inc34.out.sink.split_crit_edge ]
  %14 = ptrtoint ptr %new_blk to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %add32.sink, ptr %new_blk, align 8
  br label %out

out:                                              ; preds = %out.sink.split, %for.body.out_crit_edge
  %error.1 = phi i32 [ 0, %out.sink.split ], [ %call19, %for.body.out_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call) #13
  br label %cleanup37

cleanup37:                                        ; preds = %out, %while.body5.cleanup37_crit_edge
  %retval.0 = phi i32 [ %error.1, %out ], [ -12, %while.body5.cleanup37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_find_verify_log_record(ptr noundef %log, i64 noundef %start_blk, ptr nocapture noundef %last_blk, i32 noundef %extra_bblks) unnamed_addr #3 align 64 {
entry:
  %offset = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #13
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %offset, align 4
  %1 = ptrtoint ptr %last_blk to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %last_blk, align 8
  %sub = sub i64 %2, %start_blk
  %conv = trunc i64 %sub to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %start_blk)
  %cmp.not = icmp ne i64 %start_blk, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp2 = icmp ne i64 %2, 0
  %spec.select = select i1 %cmp.not, i1 true, i1 %cmp2
  br i1 %spec.select, label %entry.cond.end_crit_edge, label %cond.false, !prof !234

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.8, i32 noundef 416) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call = tail call fastcc ptr @xlog_alloc_buffer(ptr noundef %log, i32 noundef %conv)
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %call6 = tail call fastcc ptr @xlog_alloc_buffer(ptr noundef %log, i32 noundef 1)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then.cleanup_crit_edge, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %cond.end
  %call9 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %start_blk, i32 noundef %conv, ptr noundef nonnull %call, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %sub13 = shl i32 %conv, 9
  %shl = add i32 %sub13, -512
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %shl
  store ptr %add.ptr, ptr %offset, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.then.if.end14_crit_edge
  %buffer.0 = phi ptr [ %call, %if.end12 ], [ %call6, %if.then.if.end14_crit_edge ]
  %5 = ptrtoint ptr %last_blk to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %last_blk, align 8
  %i.0111 = add i64 %6, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %i.0111)
  %cmp16112 = icmp sgt i64 %i.0111, -1
  br i1 %cmp16112, label %if.end14.for.body_crit_edge, label %for.end

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end14.for.body_crit_edge
  %i.0113 = phi i64 [ %i.0, %for.inc.for.body_crit_edge ], [ %i.0111, %if.end14.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %i.0113, i64 %start_blk)
  %cmp18 = icmp slt i64 %i.0113, %start_blk
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %8, ptr noundef nonnull @.str.24) #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, i32 noundef 436) #13
  br label %out

if.end21:                                         ; preds = %for.body
  br i1 %tobool5.not, label %if.then23, label %if.end28.thread

if.then23:                                        ; preds = %if.end21
  %call24 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %i.0113, i32 noundef 1, ptr noundef nonnull %buffer.0, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end28, label %if.then23.out_crit_edge

if.then23.out_crit_edge:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end28:                                         ; preds = %if.then23
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %offset, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17974594, i32 %12)
  %cmp29 = icmp eq i32 %12, -17974594
  br i1 %cmp29, label %if.end28.if.end40_crit_edge, label %if.end28.for.inc_crit_edge

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.end28.thread:                                  ; preds = %if.end21
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %offset, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17974594, i32 %16)
  %cmp2997 = icmp eq i32 %16, -17974594
  br i1 %cmp2997, label %if.end28.thread.if.end40_crit_edge, label %if.then34

if.end28.thread.if.end40_crit_edge:               ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then34:                                        ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr35 = getelementptr i8, ptr %14, i32 -512
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr35, ptr %offset, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then34, %if.end28.for.inc_crit_edge
  %i.0 = add i64 %i.0113, -1
  %cmp16 = icmp sgt i64 %i.0, -1
  br i1 %cmp16, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp37 = icmp eq i64 %6, 0
  br i1 %cmp37, label %for.end.out_crit_edge, label %for.end.if.end40_crit_edge

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end40:                                         ; preds = %for.end.if.end40_crit_edge, %if.end28.thread.if.end40_crit_edge, %if.end28.if.end40_crit_edge
  %i.0104 = phi i64 [ %i.0111, %for.end.if.end40_crit_edge ], [ %i.0113, %if.end28.thread.if.end40_crit_edge ], [ %i.0113, %if.end28.if.end40_crit_edge ]
  %head.1100 = phi ptr [ null, %for.end.if.end40_crit_edge ], [ %10, %if.end28.if.end40_crit_edge ], [ %14, %if.end28.thread.if.end40_crit_edge ]
  %18 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %log, align 128
  %call42 = tail call fastcc i32 @xlog_header_check_mount(ptr noundef %19, ptr noundef %head.1100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end40.out_crit_edge

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end45:                                         ; preds = %if.end40
  %20 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %log, align 128
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %21, i32 0, i32 61
  %22 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %23, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end45.if.end3.i_crit_edge, label %if.then.i

if.end45.if.end3.i_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end45
  %h_size1.i = getelementptr inbounds %struct.xlog_rec_header, ptr %head.1100, i32 0, i32 12
  %24 = ptrtoint ptr %h_size1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %h_size1.i, align 8
  %h_version.i = getelementptr inbounds %struct.xlog_rec_header, ptr %head.1100, i32 0, i32 2
  %26 = ptrtoint ptr %h_version.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %h_version.i, align 8
  %and.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %25)
  %cmp.i = icmp sgt i32 %25, 32768
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  %sub.i = add i32 %25, 32767
  %div.i = sdiv i32 %sub.i, 32768
  br i1 %or.cond.i, label %if.then.i.xlog_logrec_hblks.exit_crit_edge, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then.i.xlog_logrec_hblks.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xlog_logrec_hblks.exit

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.end45.if.end3.i_crit_edge
  br label %xlog_logrec_hblks.exit

xlog_logrec_hblks.exit:                           ; preds = %if.end3.i, %if.then.i.xlog_logrec_hblks.exit_crit_edge
  %retval.1.i = phi i32 [ %div.i, %if.then.i.xlog_logrec_hblks.exit_crit_edge ], [ 1, %if.end3.i ]
  %28 = ptrtoint ptr %last_blk to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %last_blk, align 8
  %conv48 = sext i32 %extra_bblks to i64
  %sub47 = sub i64 %conv48, %i.0104
  %add = add i64 %sub47, %29
  %h_len = getelementptr inbounds %struct.xlog_rec_header, ptr %head.1100, i32 0, i32 3
  %30 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %h_len, align 4
  %conv49 = zext i32 %31 to i64
  %sub51 = add nuw nsw i64 %conv49, 511
  %shr = lshr i64 %sub51, 9
  %conv52 = sext i32 %retval.1.i to i64
  %add53 = add nsw i64 %shr, %conv52
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add53)
  %cmp54.not = icmp eq i64 %add, %add53
  br i1 %cmp54.not, label %xlog_logrec_hblks.exit.out_crit_edge, label %if.then56

xlog_logrec_hblks.exit.out_crit_edge:             ; preds = %xlog_logrec_hblks.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then56:                                        ; preds = %xlog_logrec_hblks.exit
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %last_blk to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %i.0104, ptr %last_blk, align 8
  br label %out

out:                                              ; preds = %if.then56, %xlog_logrec_hblks.exit.out_crit_edge, %if.end40.out_crit_edge, %for.end.out_crit_edge, %for.inc.out_crit_edge, %if.then23.out_crit_edge, %if.then20, %if.else.out_crit_edge
  %buffer.1 = phi ptr [ %call, %if.else.out_crit_edge ], [ %buffer.0, %if.then20 ], [ %buffer.0, %if.end40.out_crit_edge ], [ %buffer.0, %if.then56 ], [ %buffer.0, %xlog_logrec_hblks.exit.out_crit_edge ], [ %buffer.0, %for.end.out_crit_edge ], [ %buffer.0, %if.then23.out_crit_edge ], [ %buffer.0, %for.inc.out_crit_edge ]
  %error.0 = phi i32 [ %call9, %if.else.out_crit_edge ], [ -117, %if.then20 ], [ %call42, %if.end40.out_crit_edge ], [ 0, %if.then56 ], [ 0, %xlog_logrec_hblks.exit.out_crit_edge ], [ 1, %for.end.out_crit_edge ], [ 1, %for.inc.out_crit_edge ], [ %call24, %if.then23.out_crit_edge ]
  tail call void @kvfree(ptr noundef %buffer.1) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ -12, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #13
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_header_check_mount(ptr noundef %mp, ptr noundef %head) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17974594, i32 %1)
  %cmp = icmp eq i32 %1, -17974594
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !234

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.8, i32 noundef 251) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %h_fs_uuid = getelementptr inbounds %struct.xlog_rec_header, ptr %head, i32 0, i32 11
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %h_fs_uuid, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.27) #13
  br label %return

if.else:                                          ; preds = %cond.end
  %sb_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 5
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sb_uuid, ptr noundef dereferenceable(16) %h_fs_uuid, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.else.return_crit_edge, label %__here, !prof !234

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

__here:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !244
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 261, ptr noundef blockaddress(@xlog_header_check_mount, %__here)) #13
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.29) #13
  tail call fastcc void @xlog_header_check_dump(ptr noundef %mp, ptr noundef %head)
  br label %return

return:                                           ; preds = %__here, %if.else.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -117, %__here ], [ 0, %if.else.return_crit_edge ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlog_header_check_dump(ptr noundef %mp, ptr noundef %head) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 5
  tail call void (ptr, ptr, ...) @xfs_debug(ptr noundef %mp, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.xlog_header_check_dump, ptr noundef %sb_uuid, i32 noundef 2) #13
  %h_fs_uuid = getelementptr inbounds %struct.xlog_rec_header, ptr %head, i32 0, i32 11
  %h_fmt = getelementptr inbounds %struct.xlog_rec_header, ptr %head, i32 0, i32 10
  %0 = ptrtoint ptr %h_fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %h_fmt, align 4
  tail call void (ptr, ptr, ...) @xfs_debug(ptr noundef %mp, ptr noundef nonnull @.str.31, ptr noundef %h_fs_uuid, i32 noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_do_io(ptr noundef %log, i64 noundef %blk_no, i32 noundef %nbblks, ptr noundef %data, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %blk_no)
  %cmp.i = icmp slt i64 %blk_no, 0
  br i1 %cmp.i, label %entry.__here_crit_edge, label %lor.lhs.false.i, !prof !245

entry.__here_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

lor.lhs.false.i:                                  ; preds = %entry
  %l_logBBsize.i = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 16
  %0 = ptrtoint ptr %l_logBBsize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l_logBBsize.i, align 4
  %conv.i = sext i32 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %blk_no)
  %cmp1.not.i = icmp sle i64 %conv.i, %blk_no
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nbblks)
  %cmp3.i = icmp slt i32 %nbblks, 1
  %or.cond.i = or i1 %cmp3.i, %cmp1.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.__here_crit_edge, label %xlog_verify_bno.exit, !prof !245

lor.lhs.false.i.__here_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

xlog_verify_bno.exit:                             ; preds = %lor.lhs.false.i
  %conv617.i = zext i32 %nbblks to i64
  %add.i = add nuw i64 %conv617.i, %blk_no
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv.i)
  %cmp9.i.not = icmp sgt i64 %add.i, %conv.i
  br i1 %cmp9.i.not, label %xlog_verify_bno.exit.__here_crit_edge, label %if.end, !prof !237

xlog_verify_bno.exit.__here_crit_edge:            ; preds = %xlog_verify_bno.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %xlog_verify_bno.exit.__here_crit_edge, %lor.lhs.false.i.__here_crit_edge, %entry.__here_crit_edge
  %2 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log, align 128
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !246
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.34, i32 noundef 1, ptr noundef %3, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 136, ptr noundef blockaddress(@xlog_do_io, %__here)) #13
  %4 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %5, ptr noundef nonnull @.str.35, i64 noundef %blk_no, i32 noundef %nbblks) #13
  br label %cleanup

if.end:                                           ; preds = %xlog_verify_bno.exit
  %l_sectBBsize = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 11
  %6 = ptrtoint ptr %l_sectBBsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %l_sectBBsize, align 4
  %sub = add i32 %7, -1
  %conv = zext i32 %sub to i64
  %neg = xor i64 %conv, -1
  %and = and i64 %neg, %blk_no
  %sub4 = add nsw i32 %nbblks, -1
  %or = or i32 %sub, %sub4
  %add = add i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp.not = icmp eq i32 %add, 0
  br i1 %cmp.not, label %cond.false15, label %if.end.cond.end_crit_edge, !prof !237

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false15:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.8, i32 noundef 145) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false15, %if.end.cond.end_crit_edge
  %l_targ = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 3
  %8 = ptrtoint ptr %l_targ to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %l_targ, align 4
  %bt_bdev = getelementptr inbounds %struct.xfs_buftarg, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bt_bdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bt_bdev, align 4
  %l_logBBstart = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 14
  %12 = ptrtoint ptr %l_logBBstart to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %l_logBBstart, align 8
  %add16 = add i64 %13, %and
  %shl = shl i32 %add, 9
  %call17 = tail call i32 @xfs_rw_bdev(ptr noundef %11, i64 noundef %add16, i32 noundef %shl, ptr noundef %data, i32 noundef %op) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cond.end.cleanup_crit_edge, label %land.lhs.true

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %cond.end
  %l_opstate.i = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 6
  %14 = ptrtoint ptr %l_opstate.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %l_opstate.i, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  br i1 %tobool.i.not, label %if.then20, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %log, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %op)
  %cmp22 = icmp eq i32 %op, 1
  %cond = select i1 %cmp22, ptr @.str.38, ptr @.str.39
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %18, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond, i64 noundef %and, i32 noundef %add, i32 noundef %call17) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %land.lhs.true.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %__here
  %retval.0 = phi i32 [ -117, %__here ], [ %call17, %if.then20 ], [ %call17, %land.lhs.true.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rw_bdev(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_do_recovery_pass(ptr noundef %log, i64 noundef %head_blk, i64 noundef %tail_blk, i32 noundef %pass, ptr noundef writeonly %first_bad) unnamed_addr #3 align 64 {
entry:
  %mod.i = alloca i32, align 4
  %offset = alloca ptr, align 4
  %rhash = alloca [16 x %struct.hlist_head], align 4
  %buffer_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #13
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %offset, align 4, !annotation !233
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rhash) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buffer_list) #13
  %1 = getelementptr inbounds %struct.list_head, ptr %buffer_list, i32 0, i32 1
  %2 = ptrtoint ptr %buffer_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buffer_list, ptr %buffer_list, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %buffer_list, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %head_blk, i64 %tail_blk)
  %cmp.not = icmp eq i64 %head_blk, %tail_blk
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !237

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.8, i32 noundef 2970) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %4 = call ptr @memset(ptr %rhash, i32 0, i32 64)
  %5 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %log, align 128
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 61
  %7 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %8, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  %call3 = call fastcc ptr @xlog_alloc_buffer(ptr noundef %log, i32 noundef 1)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call6 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %tail_blk, i32 noundef 1, ptr noundef nonnull %call3, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.bread_err1_crit_edge

if.end.bread_err1_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %bread_err1

if.end9:                                          ; preds = %if.end
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %offset, align 4
  %h_size10 = getelementptr inbounds %struct.xlog_rec_header, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %h_size10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %h_size10, align 8
  %h_len11 = getelementptr inbounds %struct.xlog_rec_header, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %h_len11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %h_len11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp12 = icmp sgt i32 %14, %12
  br i1 %cmp12, label %land.lhs.true, label %if.end9.if.end23_crit_edge

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end9
  %15 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %log, align 128
  %m_logbsize = getelementptr inbounds %struct.xfs_mount, ptr %16, i32 0, i32 56
  %17 = ptrtoint ptr %m_logbsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m_logbsize, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %18)
  %cmp14.not = icmp sgt i32 %14, %18
  br i1 %cmp14.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true15

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

land.lhs.true15:                                  ; preds = %land.lhs.true
  %h_num_logops = getelementptr inbounds %struct.xlog_rec_header, ptr %10, i32 0, i32 8
  %19 = ptrtoint ptr %h_num_logops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %h_num_logops, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp16 = icmp eq i32 %20, 1
  br i1 %cmp16, label %if.then17, label %land.lhs.true15.if.end23_crit_edge

land.lhs.true15.if.end23_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %16, ptr noundef nonnull @.str.42, i32 noundef %12, i32 noundef %18) #13
  %21 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %log, align 128
  %m_logbsize22 = getelementptr inbounds %struct.xfs_mount, ptr %22, i32 0, i32 56
  %23 = ptrtoint ptr %m_logbsize22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %m_logbsize22, align 128
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %land.lhs.true15.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %if.end9.if.end23_crit_edge
  %h_size.0 = phi i32 [ %24, %if.then17 ], [ %12, %land.lhs.true15.if.end23_crit_edge ], [ %12, %land.lhs.true.if.end23_crit_edge ], [ %12, %if.end9.if.end23_crit_edge ]
  %call24 = call fastcc i32 @xlog_valid_rec_header(ptr noundef %log, ptr noundef %10, i64 noundef %tail_blk, i32 noundef %h_size.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.bread_err1_crit_edge

if.end23.bread_err1_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %bread_err1

if.end27:                                         ; preds = %if.end23
  %25 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %log, align 128
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %26, i32 0, i32 61
  %27 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %28, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end27.if.end47_crit_edge, label %if.then.i

if.end27.if.end47_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then.i:                                        ; preds = %if.end27
  %29 = ptrtoint ptr %h_size10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %h_size10, align 8
  %h_version.i = getelementptr inbounds %struct.xlog_rec_header, ptr %10, i32 0, i32 2
  %31 = ptrtoint ptr %h_version.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %h_version.i, align 8
  %and.i476 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i476)
  %tobool.not.i = icmp eq i32 %and.i476, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %30)
  %cmp.i = icmp slt i32 %30, 32769
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  %sub.i.off = add i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %sub.i.off)
  %33 = icmp ult i32 %sub.i.off, 32768
  %or.cond496 = select i1 %or.cond.i, i1 true, i1 %33
  br i1 %or.cond496, label %if.then.i.if.end47_crit_edge, label %if.then30

if.then.i.if.end47_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then30:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = add nuw i32 %30, 32767
  %div.i = sdiv i32 %sub.i, 32768
  call void @kvfree(ptr noundef nonnull %call3) #13
  br label %if.end44

if.else:                                          ; preds = %cond.end
  %l_sectBBsize = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 11
  %34 = ptrtoint ptr %l_sectBBsize to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %l_sectBBsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp33 = icmp eq i32 %35, 1
  br i1 %cmp33, label %if.else.if.end44_crit_edge, label %cond.false41, !prof !234

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

cond.false41:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.8, i32 noundef 3027) #13
  br label %if.end44

if.end44:                                         ; preds = %cond.false41, %if.else.if.end44_crit_edge, %if.then30
  %div.i.sink = phi i32 [ %div.i, %if.then30 ], [ 1, %if.else.if.end44_crit_edge ], [ 1, %cond.false41 ]
  %h_size.1 = phi i32 [ %h_size.0, %if.then30 ], [ 32768, %if.else.if.end44_crit_edge ], [ 32768, %cond.false41 ]
  %call31 = call fastcc ptr @xlog_alloc_buffer(ptr noundef %log, i32 noundef %div.i.sink)
  %tobool45.not = icmp eq ptr %call31, null
  br i1 %tobool45.not, label %if.end44.cleanup_crit_edge, label %if.end44.if.end47_crit_edge

if.end44.if.end47_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end47:                                         ; preds = %if.end44.if.end47_crit_edge, %if.then.i.if.end47_crit_edge, %if.end27.if.end47_crit_edge
  %hbp.0489 = phi ptr [ %call31, %if.end44.if.end47_crit_edge ], [ %call3, %if.end27.if.end47_crit_edge ], [ %call3, %if.then.i.if.end47_crit_edge ]
  %hblks.0487 = phi i32 [ %div.i.sink, %if.end44.if.end47_crit_edge ], [ 1, %if.end27.if.end47_crit_edge ], [ 1, %if.then.i.if.end47_crit_edge ]
  %h_size.1485 = phi i32 [ %h_size.1, %if.end44.if.end47_crit_edge ], [ %h_size.0, %if.end27.if.end47_crit_edge ], [ %h_size.0, %if.then.i.if.end47_crit_edge ]
  %conv = sext i32 %h_size.1485 to i64
  %sub = add nsw i64 %conv, 511
  %shr = lshr i64 %sub, 9
  %conv48 = trunc i64 %shr to i32
  %call49 = call fastcc ptr @xlog_alloc_buffer(ptr noundef %log, i32 noundef %conv48)
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  call void @kvfree(ptr noundef nonnull %hbp.0489) #13
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %36 = call ptr @memset(ptr %rhash, i32 0, i32 64)
  call void @__sanitizer_cov_trace_cmp8(i64 %tail_blk, i64 %head_blk)
  %cmp53 = icmp sgt i64 %tail_blk, %head_blk
  br i1 %cmp53, label %while.cond.preheader, label %if.end52.if.end223_crit_edge

if.end52.if.end223_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end223

while.cond.preheader:                             ; preds = %if.end52
  %l_logBBsize = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 16
  %conv59 = sext i32 %hblks.0487 to i64
  br label %while.cond

while.cond:                                       ; preds = %if.end199.while.cond_crit_edge, %while.cond.preheader
  %blk_no.0 = phi i64 [ %add129, %if.end199.while.cond_crit_edge ], [ %tail_blk, %while.cond.preheader ]
  %37 = ptrtoint ptr %l_logBBsize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %l_logBBsize, align 4
  %conv56 = sext i32 %38 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %blk_no.0, i64 %conv56)
  %cmp57 = icmp slt i64 %blk_no.0, %conv56
  br i1 %cmp57, label %while.body, label %cond.end219

while.body:                                       ; preds = %while.cond
  %39 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %hbp.0489, ptr %offset, align 4
  %add60 = add i64 %blk_no.0, %conv59
  call void @__sanitizer_cov_trace_cmp8(i64 %add60, i64 %conv56)
  %cmp63.not = icmp sgt i64 %add60, %conv56
  br i1 %cmp63.not, label %cond.end86, label %if.then65

if.then65:                                        ; preds = %while.body
  %call66 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %blk_no.0, i32 noundef %hblks.0487, ptr noundef nonnull %hbp.0489, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end111.thread, label %if.then65.bread_err2_crit_edge

if.then65.bread_err2_crit_edge:                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  br label %bread_err2

if.end111.thread:                                 ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %offset, align 4
  br label %46

cond.end86:                                       ; preds = %while.body
  %conv88 = trunc i64 %blk_no.0 to i32
  %sub89 = sub i32 %38, %conv88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub89)
  %cmp90 = icmp sgt i32 %sub89, 0
  br i1 %cmp90, label %cond.end86.cond.end100_crit_edge, label %cond.false99, !prof !234

cond.end86.cond.end100_crit_edge:                 ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end100

cond.false99:                                     ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.8, i32 noundef 3067) #13
  br label %cond.end100

cond.end100:                                      ; preds = %cond.false99, %cond.end86.cond.end100_crit_edge
  %call101 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %blk_no.0, i32 noundef %sub89, ptr noundef nonnull %hbp.0489, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end105, label %cond.end100.bread_err2_crit_edge

cond.end100.bread_err2_crit_edge:                 ; preds = %cond.end100
  call void @__sanitizer_cov_trace_pc() #15
  br label %bread_err2

if.end105:                                        ; preds = %cond.end100
  %sub106 = sub i32 %hblks.0487, %sub89
  %42 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %offset, align 4
  %shl = shl i32 %sub89, 9
  %add.ptr = getelementptr i8, ptr %43, i32 %shl
  %call107 = call fastcc i32 @xlog_bread_noalign(ptr noundef %log, i64 noundef 0, i32 noundef %sub106, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end111, label %if.end105.bread_err2_crit_edge

if.end105.bread_err2_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %bread_err2

if.end111:                                        ; preds = %if.end105
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv88)
  %tobool112.not = icmp eq i32 %38, %conv88
  br i1 %tobool112.not, label %if.end111._crit_edge, label %if.end111._crit_edge534

if.end111._crit_edge534:                          ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %48

if.end111._crit_edge:                             ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %46

46:                                               ; preds = %if.end111._crit_edge, %if.end111.thread
  %47 = phi ptr [ %41, %if.end111.thread ], [ %45, %if.end111._crit_edge ]
  %wrapped_hblks.0495 = phi i32 [ 0, %if.end111.thread ], [ %sub106, %if.end111._crit_edge ]
  br label %48

48:                                               ; preds = %46, %if.end111._crit_edge534
  %49 = phi ptr [ %47, %46 ], [ %45, %if.end111._crit_edge534 ]
  %wrapped_hblks.0494 = phi i32 [ %wrapped_hblks.0495, %46 ], [ %sub106, %if.end111._crit_edge534 ]
  %50 = phi i64 [ 0, %46 ], [ %blk_no.0, %if.end111._crit_edge534 ]
  %call116 = call fastcc i32 @xlog_valid_rec_header(ptr noundef %log, ptr noundef %49, i64 noundef %50, i32 noundef %h_size.1485)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %.bread_err2_crit_edge

.bread_err2_crit_edge:                            ; preds = %48
  call void @__sanitizer_cov_trace_pc() #15
  br label %bread_err2

if.end119:                                        ; preds = %48
  %h_len120 = getelementptr inbounds %struct.xlog_rec_header, ptr %49, i32 0, i32 3
  %51 = ptrtoint ptr %h_len120 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %h_len120, align 4
  %conv121 = zext i32 %52 to i64
  %sub123 = add nuw nsw i64 %conv121, 511
  %shr124 = lshr i64 %sub123, 9
  %conv125 = trunc i64 %shr124 to i32
  %add129 = add i64 %shr124, %add60
  %53 = ptrtoint ptr %l_logBBsize to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %l_logBBsize, align 4
  %conv131 = sext i32 %54 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add129, i64 %conv131)
  %cmp132.not = icmp sgt i64 %add129, %conv131
  call void @__sanitizer_cov_trace_cmp8(i64 %add60, i64 %conv131)
  %cmp136.not = icmp slt i64 %add60, %conv131
  %or.cond = and i1 %cmp136.not, %cmp132.not
  br i1 %or.cond, label %if.then149, label %if.then138

if.then138:                                       ; preds = %if.end119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mod.i) #13
  %55 = ptrtoint ptr %mod.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %mod.i, align 4, !annotation !233
  %call.i = call i64 @div_s64_rem(i64 noundef %add60, i32 noundef %54, ptr noundef nonnull %mod.i) #13
  %56 = ptrtoint ptr %mod.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mod.i, align 4
  %conv.i = sext i32 %57 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mod.i) #13
  %call140 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %conv.i, i32 noundef %conv125, ptr noundef nonnull %call49, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.then138.if.end199_crit_edge, label %if.then138.bread_err2_crit_edge

if.then138.bread_err2_crit_edge:                  ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #15
  br label %bread_err2

if.then138.if.end199_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end199

if.then149:                                       ; preds = %if.end119
  %58 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call49, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wrapped_hblks.0494)
  %tobool150.not = icmp eq i32 %wrapped_hblks.0494, 0
  br i1 %tobool150.not, label %if.then149.cond.end172_crit_edge, label %cond.false160, !prof !234

if.then149.cond.end172_crit_edge:                 ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end172

cond.false160:                                    ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.8, i32 noundef 3125) #13
  br label %cond.end172

cond.end172:                                      ; preds = %cond.false160, %if.then149.cond.end172_crit_edge
  %59 = ptrtoint ptr %l_logBBsize to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %l_logBBsize, align 4
  %conv174 = trunc i64 %add60 to i32
  %sub175 = sub i32 %60, %conv174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub175)
  %cmp176 = icmp sgt i32 %sub175, 0
  br i1 %cmp176, label %cond.end172.cond.end186_crit_edge, label %cond.false185, !prof !234

cond.end172.cond.end186_crit_edge:                ; preds = %cond.end172
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end186

cond.false185:                                    ; preds = %cond.end172
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.8, i32 noundef 3129) #13
  br label %cond.end186

cond.end186:                                      ; preds = %cond.false185, %cond.end172.cond.end186_crit_edge
  %call187 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %add60, i32 noundef %sub175, ptr noundef nonnull %call49, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end191, label %cond.end186.bread_err2_crit_edge

cond.end186.bread_err2_crit_edge:                 ; preds = %cond.end186
  call void @__sanitizer_cov_trace_pc() #15
  br label %bread_err2

if.end191:                                        ; preds = %cond.end186
  %sub192 = sub i32 %conv125, %sub175
  %61 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %offset, align 4
  %shl193 = shl i32 %sub175, 9
  %add.ptr194 = getelementptr i8, ptr %62, i32 %shl193
  %call195 = call fastcc i32 @xlog_bread_noalign(ptr noundef %log, i64 noundef 0, i32 noundef %sub192, ptr noundef %add.ptr194)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end191.if.end199_crit_edge, label %if.end191.bread_err2_crit_edge

if.end191.bread_err2_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #15
  br label %bread_err2

if.end191.if.end199_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end199

if.end199:                                        ; preds = %if.end191.if.end199_crit_edge, %if.then138.if.end199_crit_edge
  %63 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %offset, align 4
  %call201 = call fastcc i32 @xlog_recover_process(ptr noundef %log, ptr noundef nonnull %rhash, ptr noundef %49, ptr noundef %64, i32 noundef %pass, ptr noundef nonnull %buffer_list)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %if.end199.while.cond_crit_edge, label %if.end199.bread_err2_crit_edge

if.end199.bread_err2_crit_edge:                   ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #15
  br label %bread_err2

if.end199.while.cond_crit_edge:                   ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

cond.end219:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %sub222 = sub i64 %blk_no.0, %conv56
  br label %if.end223

if.end223:                                        ; preds = %cond.end219, %if.end52.if.end223_crit_edge
  %blk_no.1 = phi i64 [ %sub222, %cond.end219 ], [ %tail_blk, %if.end52.if.end223_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %blk_no.1, i64 %head_blk)
  %cmp225502 = icmp slt i64 %blk_no.1, %head_blk
  br i1 %cmp225502, label %while.body227.lr.ph, label %if.end223.bread_err2_crit_edge

if.end223.bread_err2_crit_edge:                   ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #15
  br label %bread_err2

while.body227.lr.ph:                              ; preds = %if.end223
  %conv242 = sext i32 %hblks.0487 to i64
  br label %while.body227

while.body227:                                    ; preds = %if.end252.while.body227_crit_edge, %while.body227.lr.ph
  %blk_no.2503 = phi i64 [ %blk_no.1, %while.body227.lr.ph ], [ %add255, %if.end252.while.body227_crit_edge ]
  %call228 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %blk_no.2503, i32 noundef %hblks.0487, ptr noundef nonnull %hbp.0489, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %if.end231, label %while.body227.bread_err2_crit_edge

while.body227.bread_err2_crit_edge:               ; preds = %while.body227
  call void @__sanitizer_cov_trace_pc() #15
  br label %bread_err2

if.end231:                                        ; preds = %while.body227
  %65 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %offset, align 4
  %call232 = call fastcc i32 @xlog_valid_rec_header(ptr noundef %log, ptr noundef %66, i64 noundef %blk_no.2503, i32 noundef %h_size.1485)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %if.end235, label %if.end231.bread_err2_crit_edge

if.end231.bread_err2_crit_edge:                   ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #15
  br label %bread_err2

if.end235:                                        ; preds = %if.end231
  %h_len236 = getelementptr inbounds %struct.xlog_rec_header, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %h_len236 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %h_len236, align 4
  %conv237 = zext i32 %68 to i64
  %sub239 = add nuw nsw i64 %conv237, 511
  %shr240 = lshr i64 %sub239, 9
  %conv241 = trunc i64 %shr240 to i32
  %add243 = add i64 %blk_no.2503, %conv242
  %call244 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %add243, i32 noundef %conv241, ptr noundef nonnull %call49, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %if.end247, label %if.end235.bread_err2_crit_edge

if.end235.bread_err2_crit_edge:                   ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #15
  br label %bread_err2

if.end247:                                        ; preds = %if.end235
  %69 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %offset, align 4
  %call249 = call fastcc i32 @xlog_recover_process(ptr noundef %log, ptr noundef nonnull %rhash, ptr noundef %66, ptr noundef %70, i32 noundef %pass, ptr noundef nonnull %buffer_list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249)
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %if.end252, label %if.end247.bread_err2_crit_edge

if.end247.bread_err2_crit_edge:                   ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #15
  br label %bread_err2

if.end252:                                        ; preds = %if.end247
  %add253 = add nsw i32 %hblks.0487, %conv241
  %conv254 = sext i32 %add253 to i64
  %add255 = add i64 %blk_no.2503, %conv254
  %cmp225 = icmp slt i64 %add255, %head_blk
  br i1 %cmp225, label %if.end252.while.body227_crit_edge, label %if.end252.bread_err2_crit_edge

if.end252.bread_err2_crit_edge:                   ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #15
  br label %bread_err2

if.end252.while.body227_crit_edge:                ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body227

bread_err2:                                       ; preds = %if.end252.bread_err2_crit_edge, %if.end247.bread_err2_crit_edge, %if.end235.bread_err2_crit_edge, %if.end231.bread_err2_crit_edge, %while.body227.bread_err2_crit_edge, %if.end223.bread_err2_crit_edge, %if.end199.bread_err2_crit_edge, %if.end191.bread_err2_crit_edge, %cond.end186.bread_err2_crit_edge, %if.then138.bread_err2_crit_edge, %.bread_err2_crit_edge, %if.end105.bread_err2_crit_edge, %cond.end100.bread_err2_crit_edge, %if.then65.bread_err2_crit_edge
  %error.4 = phi i32 [ 0, %if.end223.bread_err2_crit_edge ], [ %call228, %while.body227.bread_err2_crit_edge ], [ %call232, %if.end231.bread_err2_crit_edge ], [ %call244, %if.end235.bread_err2_crit_edge ], [ %call249, %if.end247.bread_err2_crit_edge ], [ 0, %if.end252.bread_err2_crit_edge ], [ %call107, %if.end105.bread_err2_crit_edge ], [ %call101, %cond.end100.bread_err2_crit_edge ], [ %call195, %if.end191.bread_err2_crit_edge ], [ %call187, %cond.end186.bread_err2_crit_edge ], [ %call201, %if.end199.bread_err2_crit_edge ], [ %call140, %if.then138.bread_err2_crit_edge ], [ %call116, %.bread_err2_crit_edge ], [ %call66, %if.then65.bread_err2_crit_edge ]
  %rhead_blk.3 = phi i64 [ %blk_no.1, %if.end223.bread_err2_crit_edge ], [ %blk_no.2503, %while.body227.bread_err2_crit_edge ], [ %blk_no.2503, %if.end231.bread_err2_crit_edge ], [ %blk_no.2503, %if.end235.bread_err2_crit_edge ], [ %blk_no.2503, %if.end247.bread_err2_crit_edge ], [ %add255, %if.end252.bread_err2_crit_edge ], [ %blk_no.0, %if.then65.bread_err2_crit_edge ], [ %blk_no.0, %cond.end100.bread_err2_crit_edge ], [ %blk_no.0, %if.end105.bread_err2_crit_edge ], [ %blk_no.0, %.bread_err2_crit_edge ], [ %blk_no.0, %if.then138.bread_err2_crit_edge ], [ %blk_no.0, %cond.end186.bread_err2_crit_edge ], [ %blk_no.0, %if.end191.bread_err2_crit_edge ], [ %blk_no.0, %if.end199.bread_err2_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call49) #13
  br label %bread_err1

bread_err1:                                       ; preds = %bread_err2, %if.end23.bread_err1_crit_edge, %if.end.bread_err1_crit_edge
  %error.5 = phi i32 [ %call6, %if.end.bread_err1_crit_edge ], [ %call24, %if.end23.bread_err1_crit_edge ], [ %error.4, %bread_err2 ]
  %hbp.1 = phi ptr [ %call3, %if.end.bread_err1_crit_edge ], [ %call3, %if.end23.bread_err1_crit_edge ], [ %hbp.0489, %bread_err2 ]
  %rhead_blk.4 = phi i64 [ %tail_blk, %if.end.bread_err1_crit_edge ], [ %tail_blk, %if.end23.bread_err1_crit_edge ], [ %rhead_blk.3, %bread_err2 ]
  call void @kvfree(ptr noundef %hbp.1) #13
  %71 = ptrtoint ptr %buffer_list to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %buffer_list, align 4
  %cmp.i477.not = icmp eq ptr %72, %buffer_list
  br i1 %cmp.i477.not, label %bread_err1.if.end261_crit_edge, label %if.then259

bread_err1.if.end261_crit_edge:                   ; preds = %bread_err1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end261

if.then259:                                       ; preds = %bread_err1
  call void @__sanitizer_cov_trace_pc() #15
  %call260 = call i32 @xfs_buf_delwri_submit(ptr noundef nonnull %buffer_list) #13
  br label %if.end261

if.end261:                                        ; preds = %if.then259, %bread_err1.if.end261_crit_edge
  %error2.0 = phi i32 [ 0, %bread_err1.if.end261_crit_edge ], [ %call260, %if.then259 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.5)
  %tobool262.not = icmp eq i32 %error.5, 0
  %tobool264.not = icmp eq ptr %first_bad, null
  %or.cond474 = or i1 %tobool264.not, %tobool262.not
  br i1 %or.cond474, label %if.end261.for.body270.preheader_crit_edge, label %if.then265

if.end261.for.body270.preheader_crit_edge:        ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body270.preheader

if.then265:                                       ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %first_bad to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %rhead_blk.4, ptr %first_bad, align 8
  br label %for.body270.preheader

for.body270.preheader:                            ; preds = %if.then265, %if.end261.for.body270.preheader_crit_edge
  br label %for.body270

for.body270:                                      ; preds = %for.end298.for.body270_crit_edge, %for.body270.preheader
  %i.1515 = phi i32 [ %inc300, %for.end298.for.body270_crit_edge ], [ 0, %for.body270.preheader ]
  %arrayidx271 = getelementptr [16 x %struct.hlist_head], ptr %rhash, i32 0, i32 %i.1515
  %74 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx271, align 4
  %tobool282.not513 = icmp eq ptr %75, null
  br i1 %tobool282.not513, label %for.body270.for.end298_crit_edge, label %for.body270.land.rhs_crit_edge

for.body270.land.rhs_crit_edge:                   ; preds = %for.body270
  br label %land.rhs

for.body270.for.end298_crit_edge:                 ; preds = %for.body270
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end298

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %for.body270.land.rhs_crit_edge
  %trans.0514 = phi ptr [ %77, %land.rhs.land.rhs_crit_edge ], [ %75, %for.body270.land.rhs_crit_edge ]
  %76 = ptrtoint ptr %trans.0514 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %trans.0514, align 8
  call fastcc void @xlog_recover_free_trans(ptr noundef nonnull %trans.0514)
  %tobool282.not = icmp eq ptr %77, null
  br i1 %tobool282.not, label %land.rhs.for.end298_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

land.rhs.for.end298_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end298

for.end298:                                       ; preds = %land.rhs.for.end298_crit_edge, %for.body270.for.end298_crit_edge
  %inc300 = add nuw nsw i32 %i.1515, 1
  %exitcond.not = icmp eq i32 %inc300, 16
  br i1 %exitcond.not, label %for.end301, label %for.end298.for.body270_crit_edge

for.end298.for.body270_crit_edge:                 ; preds = %for.end298
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body270

for.end301:                                       ; preds = %for.end298
  call void @__sanitizer_cov_trace_pc() #15
  %error2.0.error.5 = select i1 %tobool262.not, i32 %error2.0, i32 %error.5
  br label %cleanup

cleanup:                                          ; preds = %for.end301, %if.then51, %if.end44.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %error2.0.error.5, %for.end301 ], [ -12, %if.then51 ], [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffer_list) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rhash) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_verify_tail(ptr noundef %log, i64 noundef %head_blk, ptr nocapture noundef %tail_blk, i32 noundef %hsize) unnamed_addr #3 align 64 {
entry:
  %thead = alloca ptr, align 4
  %first_bad = alloca i64, align 8
  %wrapped = alloca i8, align 1
  %tmp_tail = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thead) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %first_bad) #13
  %0 = ptrtoint ptr %first_bad to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %first_bad, align 8, !annotation !233
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wrapped) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_tail) #13
  %1 = ptrtoint ptr %tmp_tail to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %tmp_tail, align 8, !annotation !233
  %2 = ptrtoint ptr %tail_blk to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tail_blk, align 8
  %call = tail call fastcc ptr @xlog_alloc_buffer(ptr noundef %log, i32 noundef 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup28_crit_edge, label %if.end

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup28

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %tail_blk to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tail_blk, align 8
  %call1 = call fastcc i32 @xlog_seek_logrec_hdr(ptr noundef %log, i64 noundef %head_blk, i64 noundef %5, i32 noundef 1, ptr noundef nonnull %call, ptr noundef nonnull %tmp_tail, ptr noundef nonnull %thead, ptr noundef nonnull %wrapped)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %tail_blk to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tail_blk, align 8
  %8 = ptrtoint ptr %tmp_tail to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tmp_tail, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp4.not = icmp eq i64 %7, %9
  br i1 %cmp4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %tail_blk to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %tail_blk, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %11 = ptrtoint ptr %first_bad to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %first_bad, align 8
  %12 = ptrtoint ptr %tail_blk to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tail_blk, align 8
  %call7 = call fastcc i32 @xlog_do_recovery_pass(ptr noundef %log, i64 noundef %head_blk, i64 noundef %13, i32 noundef 0, ptr noundef nonnull %first_bad)
  %l_logBBsize.i = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 16
  %mul = shl i32 %hsize, 3
  %conv12 = sext i32 %mul to i64
  %sub = add nsw i64 %conv12, 511
  %shr = lshr i64 %sub, 9
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %if.end6
  %error.0 = phi i32 [ %call7, %if.end6 ], [ %call22, %cleanup ]
  %14 = zext i32 %error.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %error.0, label %while.cond.out_crit_edge [
    i32 -74, label %while.cond.land.rhs_crit_edge
    i32 -117, label %while.cond.land.rhs_crit_edge71
    i32 0, label %land.lhs.true
  ]

while.cond.land.rhs_crit_edge71:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.rhs:                                         ; preds = %while.cond.land.rhs_crit_edge, %while.cond.land.rhs_crit_edge71
  %15 = ptrtoint ptr %first_bad to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %first_bad, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool10.not = icmp eq i64 %16, 0
  br i1 %tobool10.not, label %land.rhs.out_crit_edge, label %while.body

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

while.body:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %head_blk)
  %cmp.i = icmp sgt i64 %16, %head_blk
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i64 %16, %head_blk
  %conv.i = trunc i64 %sub.i to i32
  br label %xlog_tail_distance.exit

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %l_logBBsize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %l_logBBsize.i, align 4
  %sub2.i = sub i64 %16, %head_blk
  %19 = trunc i64 %sub2.i to i32
  %conv3.i = add i32 %18, %19
  br label %xlog_tail_distance.exit

xlog_tail_distance.exit:                          ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ %conv3.i, %if.end.i ]
  %conv = sext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv)
  %cmp13 = icmp ult i64 %shr, %conv
  br i1 %cmp13, label %xlog_tail_distance.exit.out_crit_edge, label %if.end16

xlog_tail_distance.exit.out_crit_edge:            ; preds = %xlog_tail_distance.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end16:                                         ; preds = %xlog_tail_distance.exit
  %call17 = call fastcc i32 @xlog_seek_logrec_hdr(ptr noundef %log, i64 noundef %head_blk, i64 noundef %16, i32 noundef 2, ptr noundef nonnull %call, ptr noundef nonnull %tmp_tail, ptr noundef nonnull %thead, ptr noundef nonnull %wrapped)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.out_crit_edge, label %cleanup

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

cleanup:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %tmp_tail to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tmp_tail, align 8
  %22 = ptrtoint ptr %tail_blk to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %tail_blk, align 8
  %23 = ptrtoint ptr %first_bad to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %first_bad, align 8
  %call22 = call fastcc i32 @xlog_do_recovery_pass(ptr noundef %log, i64 noundef %head_blk, i64 noundef %21, i32 noundef 0, ptr noundef nonnull %first_bad)
  br label %while.cond

land.lhs.true:                                    ; preds = %while.cond
  %24 = ptrtoint ptr %tail_blk to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tail_blk, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %3)
  %cmp24.not = icmp eq i64 %25, %3
  br i1 %cmp24.not, label %land.lhs.true.out_crit_edge, label %if.then26

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %log, align 128
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %27, ptr noundef nonnull @.str.74, i64 noundef %3, i64 noundef %25) #13
  br label %out

out:                                              ; preds = %if.then26, %land.lhs.true.out_crit_edge, %if.end16.out_crit_edge, %xlog_tail_distance.exit.out_crit_edge, %land.rhs.out_crit_edge, %while.cond.out_crit_edge, %if.end.out_crit_edge
  %error.3 = phi i32 [ %call1, %if.end.out_crit_edge ], [ 0, %if.then26 ], [ 0, %land.lhs.true.out_crit_edge ], [ %error.0, %while.cond.out_crit_edge ], [ %error.0, %xlog_tail_distance.exit.out_crit_edge ], [ %error.0, %land.rhs.out_crit_edge ], [ %call17, %if.end16.out_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call) #13
  br label %cleanup28

cleanup28:                                        ; preds = %out, %entry.cleanup28_crit_edge
  %retval.0 = phi i32 [ %error.3, %out ], [ -12, %entry.cleanup28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_tail) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wrapped) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %first_bad) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thead) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_valid_rec_header(ptr nocapture noundef readonly %log, ptr nocapture noundef readonly %rhead, i64 noundef %blkno, i32 noundef %bufsize) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rhead to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rhead, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17974594, i32 %1)
  %cmp.not = icmp eq i32 %1, -17974594
  br i1 %cmp.not, label %if.end, label %__here, !prof !234

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log, align 128
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !247
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.49, i32 noundef 1, ptr noundef %3, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 2916, ptr noundef blockaddress(@xlog_valid_rec_header, %__here)) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %h_version = getelementptr inbounds %struct.xlog_rec_header, ptr %rhead, i32 0, i32 2
  %4 = ptrtoint ptr %h_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %h_version, align 8
  %6 = add i32 %5, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %6)
  %7 = icmp ult i32 %6, -3
  br i1 %7, label %__here13, label %if.end19, !prof !237

__here13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %log, align 128
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !248
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.50, i32 noundef 1, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 2921, ptr noundef blockaddress(@xlog_valid_rec_header, %__here13)) #13
  %10 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %log, align 128
  %12 = ptrtoint ptr %h_version to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %h_version, align 8
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %11, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.xlog_valid_rec_header, i32 noundef %13) #13
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %h_len = getelementptr inbounds %struct.xlog_rec_header, ptr %rhead, i32 0, i32 3
  %14 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %h_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp20 = icmp slt i32 %15, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %bufsize)
  %cmp22 = icmp sgt i32 %15, %bufsize
  %spec.select68 = or i1 %cmp20, %cmp22
  br i1 %spec.select68, label %__here32, label %if.end36, !prof !237

__here32:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %log, align 128
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !249
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef %17, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 2932, ptr noundef blockaddress(@xlog_valid_rec_header, %__here32)) #13
  br label %cleanup

if.end36:                                         ; preds = %if.end19
  %l_logBBsize = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 16
  %18 = ptrtoint ptr %l_logBBsize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %l_logBBsize, align 4
  %conv = sext i32 %19 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %blkno)
  %cmp37 = icmp slt i64 %conv, %blkno
  br i1 %cmp37, label %__here51, label %if.end36.cleanup_crit_edge, !prof !237

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

__here51:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %log, align 128
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !250
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.53, i32 noundef 1, ptr noundef %21, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 2936, ptr noundef blockaddress(@xlog_valid_rec_header, %__here51)) #13
  br label %cleanup

cleanup:                                          ; preds = %__here51, %if.end36.cleanup_crit_edge, %__here32, %__here13, %__here
  %retval.0 = phi i32 [ -117, %__here ], [ -117, %__here13 ], [ -117, %__here32 ], [ -117, %__here51 ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_bread_noalign(ptr noundef %log, i64 noundef %blk_no, i32 noundef %nbblks, ptr noundef %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xlog_do_io(ptr noundef %log, i64 noundef %blk_no, i32 noundef %nbblks, ptr noundef %data, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_recover_process(ptr noundef %log, ptr noundef %rhash, ptr noundef %rhead, ptr noundef %dp, i32 noundef %pass, ptr noundef %buffer_list) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %h_crc = getelementptr inbounds %struct.xlog_rec_header, ptr %rhead, i32 0, i32 6
  %0 = ptrtoint ptr %h_crc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %h_crc, align 8
  %h_len = getelementptr inbounds %struct.xlog_rec_header, ptr %rhead, i32 0, i32 3
  %2 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h_len, align 4
  %call = tail call i32 @xlog_cksum(ptr noundef %log, ptr noundef %rhead, ptr noundef %dp, i32 noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pass)
  %cmp = icmp eq i32 %pass, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %1)
  %cmp1.not = icmp eq i32 %call, %1
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp1.not
  %spec.select = select i1 %or.cond, i32 0, i32 -74
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %1)
  %cmp4.not = icmp eq i32 %call, %1
  br i1 %cmp4.not, label %if.end3.if.end16_crit_edge, label %if.then5

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool6.not = icmp eq i32 %1, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then5.if.then8_crit_edge

if.then5.if.then8_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.then5
  %4 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log, align 128
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.end10_crit_edge, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.then5.if.then8_crit_edge
  %8 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %log, align 128
  %10 = tail call i32 @llvm.bswap.i32(i32 %1)
  %11 = tail call i32 @llvm.bswap.i32(i32 %call)
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %9, ptr noundef nonnull @.str.54, i32 noundef %10, i32 noundef %11) #13
  tail call void @xfs_hex_dump(ptr noundef %dp, i32 noundef 32) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %lor.lhs.false.if.end10_crit_edge
  %12 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %log, align 128
  %m_features.i39 = getelementptr inbounds %struct.xfs_mount, ptr %13, i32 0, i32 61
  %14 = ptrtoint ptr %m_features.i39 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_features.i39, align 8
  %and.i40 = and i64 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i40)
  %tobool.i41.not = icmp eq i64 %and.i40, 0
  br i1 %tobool.i41.not, label %if.end10.if.end16_crit_edge, label %if.then13

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %16 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void @xfs_error_report(ptr noundef nonnull @__func__.xlog_recover_process, i32 noundef 1, ptr noundef %13, ptr noundef nonnull @.str.8, i32 noundef 2895, ptr noundef %16) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end10.if.end16_crit_edge, %if.end3.if.end16_crit_edge
  tail call fastcc void @xlog_unpack_data(ptr noundef %rhead, ptr noundef %dp, ptr noundef %log)
  %call17 = tail call fastcc i32 @xlog_recover_process_data(ptr noundef %log, ptr noundef %rhash, ptr noundef %rhead, ptr noundef %dp, i32 noundef %pass, ptr noundef %buffer_list)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then13, %if.then
  %retval.0 = phi i32 [ -117, %if.then13 ], [ %call17, %if.end16 ], [ %spec.select, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_delwri_submit(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlog_recover_free_trans(ptr noundef %trans) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init.exit_crit_edge, label %if.then.i

entry.hlist_del_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i3.i = icmp eq ptr %3, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %6 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %trans, align 4
  %7 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %entry.hlist_del_init.exit_crit_edge
  %r_itemq = getelementptr inbounds %struct.xlog_recover, ptr %trans, i32 0, i32 5
  %8 = ptrtoint ptr %r_itemq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %r_itemq, align 8
  %cmp.not34 = icmp eq ptr %9, %r_itemq
  br i1 %cmp.not34, label %hlist_del_init.exit.for.end18_crit_edge, label %hlist_del_init.exit.for.body_crit_edge

hlist_del_init.exit.for.body_crit_edge:           ; preds = %hlist_del_init.exit
  br label %for.body

hlist_del_init.exit.for.end18_crit_edge:          ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end18

for.body:                                         ; preds = %for.end.for.body_crit_edge, %hlist_del_init.exit.for.body_crit_edge
  %item.035 = phi ptr [ %n.036, %for.end.for.body_crit_edge ], [ %9, %hlist_del_init.exit.for.body_crit_edge ]
  %10 = ptrtoint ptr %item.035 to i32
  call void @__asan_load4_noabort(i32 %10)
  %n.036 = load ptr, ptr %item.035, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %item.035) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %item.035, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %item.035 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %item.035, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %17 = ptrtoint ptr %item.035 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %item.035, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %item.035, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %ri_cnt = getelementptr inbounds %struct.xlog_recover_item, ptr %item.035, i32 0, i32 1
  %19 = ptrtoint ptr %ri_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ri_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp931 = icmp sgt i32 %20, 0
  br i1 %cmp931, label %for.body10.lr.ph, label %list_del.exit.for.end_crit_edge

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body10.lr.ph:                                 ; preds = %list_del.exit
  %ri_buf = getelementptr inbounds %struct.xlog_recover_item, ptr %item.035, i32 0, i32 3
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body10.lr.ph
  %i.032 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc, %for.body10.for.body10_crit_edge ]
  %21 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ri_buf, align 4
  %arrayidx = getelementptr %struct.xfs_log_iovec, ptr %22, i32 %i.032
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  tail call void @kvfree(ptr noundef %24) #13
  %inc = add nuw nsw i32 %i.032, 1
  %25 = ptrtoint ptr %ri_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ri_cnt, align 4
  %cmp9 = icmp slt i32 %inc, %26
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.for.end_crit_edge

for.body10.for.end_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body10

for.end:                                          ; preds = %for.body10.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  %ri_buf11 = getelementptr inbounds %struct.xlog_recover_item, ptr %item.035, i32 0, i32 3
  %27 = ptrtoint ptr %ri_buf11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ri_buf11, align 4
  tail call void @kvfree(ptr noundef %28) #13
  tail call void @kvfree(ptr noundef %item.035) #13
  %cmp.not = icmp eq ptr %n.036, %r_itemq
  br i1 %cmp.not, label %for.end.for.end18_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end.for.end18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end18

for.end18:                                        ; preds = %for.end.for.end18_crit_edge, %hlist_del_init.exit.for.end18_crit_edge
  tail call void @kvfree(ptr noundef %trans) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xlog_cksum(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_hex_dump(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_error_report(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlog_unpack_data(ptr nocapture noundef readonly %rhead, ptr nocapture noundef writeonly %dp, ptr nocapture noundef readonly %log) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %h_len = getelementptr inbounds %struct.xlog_rec_header, ptr %rhead, i32 0, i32 3
  %0 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %h_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp37.not = icmp eq i32 %1, 0
  br i1 %cmp37.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %dp.addr.038 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %dp, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xlog_rec_header, ptr %rhead, i32 0, i32 9, i32 %i.039
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %dp.addr.038 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dp.addr.038, align 4
  %add.ptr = getelementptr i8, ptr %dp.addr.038, i32 512
  %inc = add nuw nsw i32 %i.039, 1
  %conv = zext i32 %inc to i64
  %5 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %h_len, align 4
  %conv1 = zext i32 %6 to i64
  %sub = add nuw nsw i64 %conv1, 511
  %shr = lshr i64 %sub, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv)
  %cmp = icmp ugt i64 %shr, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.039)
  %cmp3 = icmp ult i32 %i.039, 63
  %or.cond = and i1 %cmp3, %cmp
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %dp.addr.0.lcssa = phi ptr [ %dp, %entry.for.end_crit_edge ], [ %add.ptr, %for.body.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %7 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log, align 128
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %8, i32 0, i32 61
  %9 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %10, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %for.end.if.end_crit_edge, label %for.cond5.preheader

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond5.preheader:                              ; preds = %for.end
  %conv64148 = zext i32 %i.0.lcssa to i64
  %11 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %h_len, align 4
  %conv842 = zext i32 %12 to i64
  %sub1043 = add nuw nsw i64 %conv842, 511
  %shr1144 = lshr i64 %sub1043, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %shr1144, i64 %conv64148)
  %cmp1245 = icmp ugt i64 %shr1144, %conv64148
  br i1 %cmp1245, label %for.cond5.preheader.for.body14_crit_edge, label %for.cond5.preheader.if.end_crit_edge

for.cond5.preheader.if.end_crit_edge:             ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond5.preheader.for.body14_crit_edge:         ; preds = %for.cond5.preheader
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.cond5.preheader.for.body14_crit_edge
  %i.147 = phi i32 [ %inc19, %for.body14.for.body14_crit_edge ], [ %i.0.lcssa, %for.cond5.preheader.for.body14_crit_edge ]
  %dp.addr.146 = phi ptr [ %add.ptr17, %for.body14.for.body14_crit_edge ], [ %dp.addr.0.lcssa, %for.cond5.preheader.for.body14_crit_edge ]
  %i.147.frozen = freeze i32 %i.147
  %div = sdiv i32 %i.147.frozen, 64
  %13 = mul i32 %div, 64
  %rem.decomposed = sub i32 %i.147.frozen, %13
  %xh_cycle_data = getelementptr %union.xlog_in_core2, ptr %rhead, i32 %div, i32 0, i32 1
  %arrayidx16 = getelementptr [64 x i32], ptr %xh_cycle_data, i32 0, i32 %rem.decomposed
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  %16 = ptrtoint ptr %dp.addr.146 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dp.addr.146, align 4
  %add.ptr17 = getelementptr i8, ptr %dp.addr.146, i32 512
  %inc19 = add i32 %i.147, 1
  %conv6 = sext i32 %inc19 to i64
  %17 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %h_len, align 4
  %conv8 = zext i32 %18 to i64
  %sub10 = add nuw nsw i64 %conv8, 511
  %shr11 = lshr i64 %sub10, 9
  %cmp12 = icmp ugt i64 %shr11, %conv6
  br i1 %cmp12, label %for.body14.for.body14_crit_edge, label %for.body14.if.end_crit_edge

for.body14.if.end_crit_edge:                      ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body14

if.end:                                           ; preds = %for.body14.if.end_crit_edge, %for.cond5.preheader.if.end_crit_edge, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_recover_process_data(ptr noundef %log, ptr noundef %rhash, ptr noundef %rhead, ptr noundef %dp, i32 noundef %pass, ptr noundef %buffer_list) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %h_len = getelementptr inbounds %struct.xlog_rec_header, ptr %rhead, i32 0, i32 3
  %0 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %h_len, align 4
  %add.ptr = getelementptr i8, ptr %dp, i32 %1
  %h_num_logops = getelementptr inbounds %struct.xlog_rec_header, ptr %rhead, i32 0, i32 8
  %2 = ptrtoint ptr %h_num_logops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h_num_logops, align 8
  %4 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log, align 128
  %call = tail call fastcc i32 @xlog_header_check_recover(ptr noundef %5, ptr noundef %rhead)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @trace_xfs_log_recover_record(ptr noundef %log, ptr noundef %rhead, i32 noundef %pass)
  %cmp32 = icmp ule ptr %add.ptr, %dp
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not33 = icmp eq i32 %3, 0
  %or.cond34 = select i1 %cmp32, i1 true, i1 %tobool1.not33
  br i1 %or.cond34, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %if.end9.while.body_crit_edge, %if.end.while.body_crit_edge
  %num_logops.036 = phi i32 [ %dec, %if.end9.while.body_crit_edge ], [ %3, %if.end.while.body_crit_edge ]
  %dp.addr.035 = phi ptr [ %add.ptr10, %if.end9.while.body_crit_edge ], [ %dp, %if.end.while.body_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %dp.addr.035, i32 12
  %cmp3.not = icmp ugt ptr %add.ptr2, %add.ptr
  br i1 %cmp3.not, label %cond.false, label %while.body.cond.end_crit_edge, !prof !237

while.body.cond.end_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.8, i32 noundef 2447) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %while.body.cond.end_crit_edge
  %call6 = tail call fastcc i32 @xlog_recover_process_ophdr(ptr noundef %log, ptr noundef %rhash, ptr noundef %rhead, ptr noundef %dp.addr.035, ptr noundef %add.ptr2, ptr noundef nonnull %add.ptr, i32 noundef %pass, ptr noundef %buffer_list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %cond.end
  %oh_len = getelementptr inbounds %struct.xlog_op_header, ptr %dp.addr.035, i32 0, i32 1
  %6 = ptrtoint ptr %oh_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oh_len, align 4
  %add.ptr10 = getelementptr i8, ptr %add.ptr2, i32 %7
  %dec = add i32 %num_logops.036, -1
  %cmp = icmp uge ptr %add.ptr10, %add.ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %if.end9.cleanup_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end9.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call6, %cond.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_header_check_recover(ptr noundef %mp, ptr noundef %head) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17974594, i32 %1)
  %cmp = icmp eq i32 %1, -17974594
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !234

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.8, i32 noundef 220) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %h_fmt = getelementptr inbounds %struct.xlog_rec_header, ptr %head, i32 0, i32 10
  %2 = ptrtoint ptr %h_fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.not = icmp eq i32 %3, 2
  br i1 %cmp2.not, label %if.end, label %__here, !prof !234

__here:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !251
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.56, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 227, ptr noundef blockaddress(@xlog_header_check_recover, %__here)) #13
  br label %return.sink.split

if.end:                                           ; preds = %cond.end
  %sb_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 5
  %h_fs_uuid = getelementptr inbounds %struct.xlog_rec_header, ptr %head, i32 0, i32 11
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sb_uuid, ptr noundef dereferenceable(16) %h_fs_uuid, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end.return_crit_edge, label %__here20, !prof !234

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

__here20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !252
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 234, ptr noundef blockaddress(@xlog_header_check_recover, %__here20)) #13
  br label %return.sink.split

return.sink.split:                                ; preds = %__here20, %__here
  %.str.58.sink = phi ptr [ @.str.58, %__here20 ], [ @.str.57, %__here ]
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull %.str.58.sink) #13
  tail call fastcc void @xlog_header_check_dump(ptr noundef %mp, ptr noundef %head)
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.return_crit_edge ], [ -117, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_log_recover_record(ptr noundef %log, ptr noundef %rhead, i32 noundef %pass) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_record, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_record, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !253

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !234

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !223) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !254
  %call42 = tail call i32 @__traceiter_xfs_log_recover_record(ptr noundef null, ptr noundef %log, ptr noundef %rhead, i32 noundef %pass) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !255
  %13 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !234

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !223) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_record, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_record, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_log_recover_record.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_log_recover_record.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 2243, ptr noundef nonnull @.str.60) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !257
  %31 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
define internal fastcc i32 @xlog_recover_process_ophdr(ptr noundef %log, ptr noundef %rhash, ptr nocapture noundef readonly %rhead, ptr nocapture noundef readonly %ohead, ptr noundef readonly %dp, ptr noundef readnone %end, i32 noundef %pass, ptr noundef %buffer_list) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %oh_clientid = getelementptr inbounds %struct.xlog_op_header, ptr %ohead, i32 0, i32 2
  %0 = ptrtoint ptr %oh_clientid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %oh_clientid, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %1, label %if.then [
    i8 105, label %entry.if.end_crit_edge
    i8 -86, label %entry.if.end_crit_edge69
  ]

entry.if.end_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %1 to i32
  %3 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %4, ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.xlog_recover_process_ophdr, i32 noundef %conv) #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, i32 noundef 2357) #13
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge69
  %oh_len = getelementptr inbounds %struct.xlog_op_header, ptr %ohead, i32 0, i32 1
  %5 = ptrtoint ptr %oh_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %oh_len, align 4
  %add.ptr = getelementptr i8, ptr %dp, i32 %6
  %cmp8 = icmp ugt ptr %add.ptr, %end
  br i1 %cmp8, label %if.then10, label %if.end28

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %8, ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.xlog_recover_process_ophdr, i32 noundef %6) #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2367, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %call = tail call fastcc ptr @xlog_recover_ophdr_to_trans(ptr noundef %rhash, ptr noundef %rhead, ptr noundef %ohead)
  %tobool29.not = icmp eq ptr %call, null
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %if.end31

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  %l_recovery_lsn = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 35
  %9 = ptrtoint ptr %l_recovery_lsn to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %l_recovery_lsn, align 32
  %r_lsn = getelementptr inbounds %struct.xlog_recover, ptr %call, i32 0, i32 4
  %11 = ptrtoint ptr %r_lsn to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %r_lsn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp32.not = icmp eq i64 %10, %12
  br i1 %cmp32.not, label %if.end31.if.end44_crit_edge, label %land.lhs.true34

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

land.lhs.true34:                                  ; preds = %if.end31
  %oh_flags = getelementptr inbounds %struct.xlog_op_header, ptr %ohead, i32 0, i32 3
  %13 = ptrtoint ptr %oh_flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %oh_flags, align 1
  %15 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool36.not = icmp eq i8 %15, 0
  br i1 %tobool36.not, label %land.lhs.true34.if.end44_crit_edge, label %if.then37

land.lhs.true34.if.end44_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then37:                                        ; preds = %land.lhs.true34
  %call38 = tail call i32 @xfs_buf_delwri_submit(ptr noundef %buffer_list) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end41:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %r_lsn to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %r_lsn, align 8
  %18 = ptrtoint ptr %l_recovery_lsn to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %l_recovery_lsn, align 32
  br label %if.end44

if.end44:                                         ; preds = %if.end41, %land.lhs.true34.if.end44_crit_edge, %if.end31.if.end44_crit_edge
  %oh_flags45 = getelementptr inbounds %struct.xlog_op_header, ptr %ohead, i32 0, i32 3
  %19 = ptrtoint ptr %oh_flags45 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %oh_flags45, align 1
  %conv46 = zext i8 %20 to i32
  %call47 = tail call fastcc i32 @xlog_recovery_process_trans(ptr noundef %log, ptr noundef nonnull %call, ptr noundef %dp, i32 noundef %6, i32 noundef %conv46, i32 noundef %pass, ptr noundef %buffer_list)
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then37.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then10, %if.then
  %retval.0 = phi i32 [ -117, %if.then ], [ -117, %if.then10 ], [ %call47, %if.end44 ], [ 0, %if.end28.cleanup_crit_edge ], [ %call38, %if.then37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_log_recover_record(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xlog_recover_ophdr_to_trans(ptr noundef %rhash, ptr nocapture noundef readonly %rhead, ptr nocapture noundef readonly %ohead) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ohead to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ohead, align 4
  %shr = lshr i32 %1, 2
  %and = and i32 %shr, 15
  %arrayidx = getelementptr %struct.hlist_head, ptr %rhash, i32 %and
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %trans.0.in = phi ptr [ %arrayidx, %entry ], [ %trans.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %trans.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %trans.0 = load ptr, ptr %trans.0.in, align 4
  %tobool2.not = icmp eq ptr %trans.0, null
  br i1 %tobool2.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %r_log_tid = getelementptr inbounds %struct.xlog_recover, ptr %trans.0, i32 0, i32 1
  %3 = ptrtoint ptr %r_log_tid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %r_log_tid, align 8
  %cmp = icmp eq i32 %4, %1
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %oh_flags = getelementptr inbounds %struct.xlog_op_header, ptr %ohead, i32 0, i32 3
  %5 = ptrtoint ptr %oh_flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %oh_flags, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool14.not = icmp eq i8 %7, 0
  br i1 %tobool14.not, label %for.end.cleanup_crit_edge, label %if.end16

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %for.end
  %oh_len = getelementptr inbounds %struct.xlog_op_header, ptr %ohead, i32 0, i32 1
  %8 = ptrtoint ptr %oh_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oh_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp17 = icmp eq i32 %9, 0
  br i1 %cmp17, label %if.end16.cond.end23_crit_edge, label %cond.false22, !prof !234

if.end16.cond.end23_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end23

cond.false22:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.8, i32 noundef 2317) #13
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %if.end16.cond.end23_crit_edge
  %call.i = tail call ptr @kmem_alloc(i32 noundef 48, i32 noundef 16) #13
  %r_log_tid24 = getelementptr inbounds %struct.xlog_recover, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %r_log_tid24 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %1, ptr %r_log_tid24, align 8
  %h_lsn = getelementptr inbounds %struct.xlog_rec_header, ptr %rhead, i32 0, i32 4
  %11 = ptrtoint ptr %h_lsn to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %h_lsn, align 8
  %r_lsn = getelementptr inbounds %struct.xlog_recover, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %r_lsn to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %r_lsn, align 8
  %r_itemq = getelementptr inbounds %struct.xlog_recover, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %r_itemq to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %r_itemq, ptr %r_itemq, align 4
  %prev.i = getelementptr inbounds %struct.xlog_recover, ptr %call.i, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %r_itemq, ptr %prev.i, align 4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %call.i, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pprev.i, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  store volatile ptr %19, ptr %call.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %cond.end23.hlist_add_head.exit_crit_edge, label %do.body12.i

cond.end23.hlist_add_head.exit_crit_edge:         ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i46 = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %pprev.i46 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call.i, ptr %pprev.i46, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %cond.end23.hlist_add_head.exit_crit_edge
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call.i, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head.exit, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  ret ptr %trans.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_recovery_process_trans(ptr noundef %log, ptr noundef %trans, ptr nocapture noundef readonly %dp, i32 noundef %len, i32 noundef %flags, i32 noundef %pass, ptr noundef %buffer_list) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %spec.select.v = select i1 %tobool.not, i32 -17, i32 -21
  %spec.select = and i32 %spec.select.v, %flags
  %0 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %spec.select, label %sw.default [
    i32 0, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge35
    i32 8, label %sw.bb3
    i32 2, label %sw.bb5
    i32 32, label %sw.bb7
  ]

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge35
  %call = tail call fastcc i32 @xlog_recover_add_to_trans(ptr noundef %log, ptr noundef %trans, ptr noundef %dp, i32 noundef %len)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call fastcc i32 @xlog_recover_add_to_cont_trans(ptr noundef %log, ptr noundef %trans, ptr noundef %dp, i32 noundef %len)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call fastcc i32 @xlog_recover_commit_trans(ptr noundef %log, ptr noundef %trans, i32 noundef %pass, ptr noundef %buffer_list)
  br label %if.then12

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %2, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.xlog_recovery_process_trans) #13
  br label %if.then12

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %4, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.xlog_recovery_process_trans, i32 noundef %spec.select) #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, i32 noundef 2277) #13
  br label %if.then12

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %error.0 = phi i32 [ %call4, %sw.bb3 ], [ %call, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool10.not.not = icmp eq i32 %error.0, 0
  br i1 %tobool10.not.not, label %sw.epilog.if.end13_crit_edge, label %sw.epilog.if.then12_crit_edge

sw.epilog.if.then12_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

sw.epilog.if.end13_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then12:                                        ; preds = %sw.epilog.if.then12_crit_edge, %sw.default, %sw.bb7, %sw.bb5
  %error.034 = phi i32 [ %error.0, %sw.epilog.if.then12_crit_edge ], [ %call6, %sw.bb5 ], [ 0, %sw.bb7 ], [ -117, %sw.default ]
  tail call fastcc void @xlog_recover_free_trans(ptr noundef %trans)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %sw.epilog.if.end13_crit_edge
  %error.033 = phi i32 [ 0, %sw.epilog.if.end13_crit_edge ], [ %error.034, %if.then12 ]
  ret i32 %error.033
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_recover_add_to_trans(ptr noundef %log, ptr noundef %trans, ptr nocapture noundef readonly %dp, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %r_itemq = getelementptr inbounds %struct.xlog_recover, ptr %trans, i32 0, i32 5
  %0 = ptrtoint ptr %r_itemq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %r_itemq, align 4
  %cmp.i.not = icmp eq ptr %1, %r_itemq
  br i1 %cmp.i.not, label %if.then2, label %if.end13

if.then2:                                         ; preds = %if.end
  %2 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1414676814, i32 %3)
  %cmp.not = icmp eq i32 %3, 1414676814
  br i1 %cmp.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %5, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.xlog_recover_add_to_trans) #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, i32 noundef 2130) #13
  br label %cleanup

if.end4:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %cmp5 = icmp ugt i32 %len, 16
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %7, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.xlog_recover_add_to_trans) #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, i32 noundef 2136) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %cmp9 = icmp eq i32 %len, 16
  br i1 %cmp9, label %if.then10, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @xlog_recover_add_item(ptr noundef %r_itemq)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %r_theader = getelementptr inbounds %struct.xlog_recover, ptr %trans, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %r_theader, ptr %dp, i32 %len)
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call ptr @kmem_alloc(i32 noundef %len, i32 noundef 0) #13
  %9 = call ptr @memcpy(ptr %call14, ptr %dp, i32 %len)
  %prev = getelementptr inbounds %struct.xlog_recover, ptr %trans, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev, align 4
  %ri_total = getelementptr inbounds %struct.xlog_recover_item, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ri_total to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ri_total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp16.not = icmp eq i32 %13, 0
  br i1 %cmp16.not, label %if.end13.if.end26_crit_edge, label %land.lhs.true

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end13
  %ri_cnt = getelementptr inbounds %struct.xlog_recover_item, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %ri_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ri_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp18 = icmp eq i32 %13, %15
  br i1 %cmp18, label %if.then19, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @xlog_recover_add_item(ptr noundef %r_itemq)
  %16 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %land.lhs.true.if.end26_crit_edge, %if.end13.if.end26_crit_edge
  %item.0 = phi ptr [ %17, %if.then19 ], [ %11, %land.lhs.true.if.end26_crit_edge ], [ %11, %if.end13.if.end26_crit_edge ]
  %ri_total27 = getelementptr inbounds %struct.xlog_recover_item, ptr %item.0, i32 0, i32 2
  %18 = ptrtoint ptr %ri_total27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ri_total27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp28 = icmp eq i32 %19, 0
  br i1 %cmp28, label %if.then29, label %if.end26.if.end46_crit_edge

if.end26.if.end46_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then29:                                        ; preds = %if.end26
  %ilf_size = getelementptr inbounds %struct.xfs_inode_log_format, ptr %call14, i32 0, i32 1
  %20 = ptrtoint ptr %ilf_size to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ilf_size, align 2
  %conv = zext i16 %21 to i32
  %22 = add i16 %21, -258
  call void @__sanitizer_cov_trace_const_cmp2(i16 -257, i16 %22)
  %23 = icmp ult i16 %22, -257
  br i1 %23, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %25, ptr noundef nonnull @.str.69, i32 noundef %conv) #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, i32 noundef 2172) #13
  tail call void @kvfree(ptr noundef %call14) #13
  br label %cleanup

if.end40:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %ri_total27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv, ptr %ri_total27, align 4
  %mul = mul nuw nsw i32 %conv, 12
  %call.i = tail call ptr @kmem_alloc(i32 noundef %mul, i32 noundef 16) #13
  %ri_buf = getelementptr inbounds %struct.xlog_recover_item, ptr %item.0, i32 0, i32 3
  %27 = ptrtoint ptr %ri_buf to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %ri_buf, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end40, %if.end26.if.end46_crit_edge
  %28 = ptrtoint ptr %ri_total27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ri_total27, align 4
  %ri_cnt48 = getelementptr inbounds %struct.xlog_recover_item, ptr %item.0, i32 0, i32 1
  %30 = ptrtoint ptr %ri_cnt48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ri_cnt48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp49.not = icmp sgt i32 %29, %31
  br i1 %cmp49.not, label %if.end55, label %if.then51

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %33, ptr noundef nonnull @.str.70, i32 noundef %31, i32 noundef %29) #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, i32 noundef 2187) #13
  tail call void @kvfree(ptr noundef %call14) #13
  br label %cleanup

if.end55:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %ri_buf56 = getelementptr inbounds %struct.xlog_recover_item, ptr %item.0, i32 0, i32 3
  %34 = ptrtoint ptr %ri_buf56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ri_buf56, align 4
  %arrayidx = getelementptr %struct.xfs_log_iovec, ptr %35, i32 %31
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call14, ptr %arrayidx, align 4
  %37 = load ptr, ptr %ri_buf56, align 4
  %38 = ptrtoint ptr %ri_cnt48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ri_cnt48, align 4
  %i_len = getelementptr %struct.xfs_log_iovec, ptr %37, i32 %39, i32 1
  %40 = ptrtoint ptr %i_len to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %len, ptr %i_len, align 4
  %41 = load i32, ptr %ri_cnt48, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %ri_cnt48, align 4
  tail call fastcc void @trace_xfs_log_recover_item_add(ptr noundef %log, ptr noundef %trans, ptr noundef %item.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then51, %if.then36, %if.end12, %if.then6, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %if.then3 ], [ -117, %if.then6 ], [ 0, %if.end12 ], [ -117, %if.then36 ], [ -117, %if.then51 ], [ 0, %if.end55 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_recover_add_to_cont_trans(ptr noundef %log, ptr noundef %trans, ptr nocapture noundef readonly %dp, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %r_itemq = getelementptr inbounds %struct.xlog_recover, ptr %trans, i32 0, i32 5
  %0 = ptrtoint ptr %r_itemq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %r_itemq, align 4
  %cmp.i.not = icmp eq ptr %1, %r_itemq
  br i1 %cmp.i.not, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %len)
  %cmp = icmp ult i32 %len, 17
  br i1 %cmp, label %if.end, label %if.then4, !prof !234

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.8, i32 noundef 2069) #13
  %2 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log, align 128
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %3, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.xlog_recover_add_to_cont_trans) #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @xlog_recover_add_item(ptr noundef %r_itemq)
  %add.ptr = getelementptr %struct.xlog_recover, ptr %trans, i32 0, i32 3
  %idx.neg = sub nsw i32 0, %len
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %4 = call ptr @memcpy(ptr %add.ptr6, ptr %dp, i32 %len)
  br label %cleanup

if.end7:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.xlog_recover, ptr %trans, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev, align 4
  %ri_buf = getelementptr inbounds %struct.xlog_recover_item, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ri_buf, align 4
  %ri_cnt = getelementptr inbounds %struct.xlog_recover_item, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %ri_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ri_cnt, align 4
  %sub = add i32 %10, -1
  %arrayidx = getelementptr %struct.xfs_log_iovec, ptr %8, i32 %sub
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %i_len = getelementptr %struct.xfs_log_iovec, ptr %8, i32 %sub, i32 1
  %13 = ptrtoint ptr %i_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_len, align 4
  %add = add i32 %14, %len
  %call14 = tail call noalias ptr @kvrealloc(ptr noundef %12, i32 noundef %14, i32 noundef %add, i32 noundef 3264) #18
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end7.cleanup_crit_edge, label %if.end17

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx18 = getelementptr i8, ptr %call14, i32 %14
  %15 = call ptr @memcpy(ptr %arrayidx18, ptr %dp, i32 %len)
  %16 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ri_buf, align 4
  %18 = ptrtoint ptr %ri_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ri_cnt, align 4
  %sub21 = add i32 %19, -1
  %i_len23 = getelementptr %struct.xfs_log_iovec, ptr %17, i32 %sub21, i32 1
  %20 = ptrtoint ptr %i_len23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_len23, align 4
  %add24 = add i32 %21, %len
  store i32 %add24, ptr %i_len23, align 4
  %22 = load ptr, ptr %ri_buf, align 4
  %23 = load i32, ptr %ri_cnt, align 4
  %sub27 = add i32 %23, -1
  %arrayidx28 = getelementptr %struct.xfs_log_iovec, ptr %22, i32 %sub27
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call14, ptr %arrayidx28, align 4
  tail call fastcc void @trace_xfs_log_recover_item_add_cont(ptr noundef %log, ptr noundef %trans, ptr noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end7.cleanup_crit_edge, %if.end, %if.then4
  %retval.0 = phi i32 [ -117, %if.then4 ], [ 0, %if.end ], [ 0, %if.end17 ], [ -12, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_recover_commit_trans(ptr noundef %log, ptr noundef %trans, i32 noundef %pass, ptr noundef %buffer_list) unnamed_addr #3 align 64 {
entry:
  %ra_list = alloca %struct.list_head, align 4
  %done_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ra_list) #13
  %0 = getelementptr inbounds %struct.list_head, ptr %ra_list, i32 0, i32 1
  %1 = ptrtoint ptr %ra_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ra_list, ptr %ra_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ra_list, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %done_list) #13
  %3 = getelementptr inbounds %struct.list_head, ptr %done_list, i32 0, i32 1
  %4 = ptrtoint ptr %done_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %done_list, ptr %done_list, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %done_list, ptr %3, align 4
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %trans, i32 0, i32 1
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init.exit_crit_edge, label %if.then.i

entry.hlist_del_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trans, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %7, align 4
  %tobool.not.i3.i = icmp eq ptr %9, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %7, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %12 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %trans, align 4
  %13 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %entry.hlist_del_init.exit_crit_edge
  %call = call fastcc i32 @xlog_recover_reorder_trans(ptr noundef %log, ptr noundef %trans, i32 noundef %pass)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %hlist_del_init.exit.cleanup_crit_edge

hlist_del_init.exit.cleanup_crit_edge:            ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %hlist_del_init.exit
  %r_itemq = getelementptr inbounds %struct.xlog_recover, ptr %trans, i32 0, i32 5
  %14 = ptrtoint ptr %r_itemq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %r_itemq, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog.for.cond_crit_edge, %if.end
  %item.0 = phi ptr [ %15, %if.end ], [ %next.0, %sw.epilog.for.cond_crit_edge ]
  %items_queued.0 = phi i32 [ 0, %if.end ], [ %items_queued.1, %sw.epilog.for.cond_crit_edge ]
  %16 = ptrtoint ptr %item.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %next.0 = load ptr, ptr %item.0, align 4
  %cmp.not = icmp eq ptr %item.0, %r_itemq
  br i1 %cmp.not, label %out.thread, label %for.body

for.body:                                         ; preds = %for.cond
  call fastcc void @trace_xfs_log_recover_item_recover(ptr noundef %log, ptr noundef %trans, ptr noundef %item.0, i32 noundef %pass)
  %17 = zext i32 %pass to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %pass, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb17
  ]

sw.bb:                                            ; preds = %for.body
  %ri_ops = getelementptr inbounds %struct.xlog_recover_item, ptr %item.0, i32 0, i32 4
  %18 = ptrtoint ptr %ri_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ri_ops, align 4
  %commit_pass1 = getelementptr inbounds %struct.xlog_recover_item_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %commit_pass1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %commit_pass1, align 4
  %tobool11.not = icmp eq ptr %21, null
  br i1 %tobool11.not, label %sw.bb.sw.epilog_crit_edge, label %if.then12

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = call i32 %21(ptr noundef %log, ptr noundef %item.0) #13
  br label %sw.epilog

sw.bb17:                                          ; preds = %for.body
  %ri_ops18 = getelementptr inbounds %struct.xlog_recover_item, ptr %item.0, i32 0, i32 4
  %22 = ptrtoint ptr %ri_ops18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ri_ops18, align 4
  %ra_pass2 = getelementptr inbounds %struct.xlog_recover_item_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ra_pass2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ra_pass2, align 4
  %tobool19.not = icmp eq ptr %25, null
  br i1 %tobool19.not, label %sw.bb17.if.end23_crit_edge, label %if.then20

sw.bb17.if.end23_crit_edge:                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then20:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  call void %25(ptr noundef %log, ptr noundef %item.0) #13
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %sw.bb17.if.end23_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %item.0) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end23.__list_del_entry.exit.i_crit_edge

if.end23.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %item.0, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %item.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %item.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end23.__list_del_entry.exit.i_crit_edge
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %item.0, ptr noundef %33, ptr noundef nonnull %ra_list) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %item.0, ptr %0, align 4
  %35 = ptrtoint ptr %item.0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ra_list, ptr %item.0, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %item.0, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %item.0, ptr %33, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %inc = add i32 %items_queued.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %inc)
  %cmp25 = icmp sgt i32 %inc, 99
  br i1 %cmp25, label %if.then26, label %list_move_tail.exit.sw.epilog_crit_edge

list_move_tail.exit.sw.epilog_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then26:                                        ; preds = %list_move_tail.exit
  %call27 = call fastcc i32 @xlog_recover_items_pass2(ptr noundef %log, ptr noundef %trans, ptr noundef %buffer_list, ptr noundef nonnull %ra_list)
  %38 = ptrtoint ptr %ra_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %ra_list, align 4
  %cmp.i.not.i = icmp eq ptr %39, %ra_list
  br i1 %cmp.i.not.i, label %if.then26.sw.epilog_crit_edge, label %if.then.i86

if.then26.sw.epilog_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then.i86:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %0, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %39, ptr %41, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %done_list, ptr %43, align 4
  store ptr %43, ptr %3, align 4
  %47 = ptrtoint ptr %ra_list to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %ra_list, ptr %ra_list, align 4
  store ptr %ra_list, ptr %0, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, i32 noundef 2021) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.i86, %if.then26.sw.epilog_crit_edge, %list_move_tail.exit.sw.epilog_crit_edge, %if.then12, %sw.bb.sw.epilog_crit_edge
  %items_queued.1 = phi i32 [ %items_queued.0, %sw.default ], [ %inc, %list_move_tail.exit.sw.epilog_crit_edge ], [ %items_queued.0, %if.then12 ], [ %items_queued.0, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.then26.sw.epilog_crit_edge ], [ 0, %if.then.i86 ]
  %error.1 = phi i32 [ 0, %sw.default ], [ 0, %list_move_tail.exit.sw.epilog_crit_edge ], [ %call15, %if.then12 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %call27, %if.then26.sw.epilog_crit_edge ], [ %call27, %if.then.i86 ]
  %tobool29.not = icmp eq i32 %error.1, 0
  br i1 %tobool29.not, label %sw.epilog.for.cond_crit_edge, label %out

sw.epilog.for.cond_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

out:                                              ; preds = %sw.epilog
  %48 = ptrtoint ptr %ra_list to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %ra_list, align 4
  %cmp.i.not = icmp eq ptr %49, %ra_list
  br i1 %cmp.i.not, label %out.if.end44_crit_edge, label %out.if.end43_crit_edge

out.if.end43_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

out.if.end44_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

out.thread:                                       ; preds = %for.cond
  %50 = ptrtoint ptr %ra_list to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %ra_list, align 4
  %cmp.i100.not = icmp eq ptr %51, %ra_list
  br i1 %cmp.i100.not, label %out.thread.if.end44_crit_edge, label %if.then41

out.thread.if.end44_crit_edge:                    ; preds = %out.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then41:                                        ; preds = %out.thread
  call void @__sanitizer_cov_trace_pc() #15
  %call42 = call fastcc i32 @xlog_recover_items_pass2(ptr noundef %log, ptr noundef %trans, ptr noundef %buffer_list, ptr noundef nonnull %ra_list)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %out.if.end43_crit_edge
  %error.3 = phi i32 [ %call42, %if.then41 ], [ %error.1, %out.if.end43_crit_edge ]
  %52 = ptrtoint ptr %ra_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %ra_list, align 4
  %cmp.i.not.i87 = icmp eq ptr %53, %ra_list
  br i1 %cmp.i.not.i87, label %if.end43.if.end44_crit_edge, label %if.then.i91

if.end43.if.end44_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then.i91:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %0, align 4
  %prev3.i.i90 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i90 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i90, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %53, ptr %55, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %done_list, ptr %57, align 4
  store ptr %57, ptr %3, align 4
  %61 = ptrtoint ptr %ra_list to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %ra_list, ptr %ra_list, align 4
  store ptr %ra_list, ptr %0, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then.i91, %if.end43.if.end44_crit_edge, %out.thread.if.end44_crit_edge, %out.if.end44_crit_edge
  %error.4 = phi i32 [ %error.1, %out.if.end44_crit_edge ], [ 0, %out.thread.if.end44_crit_edge ], [ %error.3, %if.end43.if.end44_crit_edge ], [ %error.3, %if.then.i91 ]
  %62 = ptrtoint ptr %done_list to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %done_list, align 4
  %cmp.i93.not = icmp eq ptr %63, %done_list
  br i1 %cmp.i93.not, label %if.end44.cleanup_crit_edge, label %if.then47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then47:                                        ; preds = %if.end44
  %64 = ptrtoint ptr %done_list to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %done_list, align 4
  %cmp.i.not.i95 = icmp eq ptr %65, %done_list
  br i1 %cmp.i.not.i95, label %if.then47.cleanup_crit_edge, label %if.then.i98

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i98:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %r_itemq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %r_itemq, align 4
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %3, align 4
  %prev3.i.i97 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %70 = ptrtoint ptr %prev3.i.i97 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %r_itemq, ptr %prev3.i.i97, align 4
  store ptr %65, ptr %r_itemq, align 4
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %67, ptr %69, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %72 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev6.i.i, align 4
  %73 = ptrtoint ptr %done_list to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %done_list, ptr %done_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i98, %if.then47.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %hlist_del_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %hlist_del_init.exit.cleanup_crit_edge ], [ %error.4, %if.end44.cleanup_crit_edge ], [ %error.4, %if.then47.cleanup_crit_edge ], [ %error.4, %if.then.i98 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %done_list) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ra_list) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlog_recover_add_item(ptr noundef %head) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_alloc(i32 noundef 24, i32 noundef 16) #13
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %prev.i, align 4
  %prev.i3 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i3, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call.i, ptr noundef %3, ptr noundef %head) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %prev.i3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %prev.i3, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %head, ptr %call.i, align 4
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call.i, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_log_recover_item_add(ptr noundef %log, ptr noundef %trans, ptr noundef %item) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_item_add, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_item_add, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !253

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !234

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !223) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !258
  %call42 = tail call i32 @__traceiter_xfs_log_recover_item_add(ptr noundef null, ptr noundef %log, ptr noundef %trans, ptr noundef %item, i32 noundef 0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !259
  %13 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !234

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !223) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_item_add, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_item_add, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_xfs_log_recover_item_add.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_log_recover_item_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 2287, ptr noundef nonnull @.str.60) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !257
  %31 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_log_recover_item_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kvrealloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_log_recover_item_add_cont(ptr noundef %log, ptr noundef %trans, ptr noundef %item) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_item_add_cont, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_item_add_cont, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !253

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !234

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !223) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !260
  %call42 = tail call i32 @__traceiter_xfs_log_recover_item_add_cont(ptr noundef null, ptr noundef %log, ptr noundef %trans, ptr noundef %item, i32 noundef 0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !261
  %13 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !234

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !223) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_item_add_cont, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_item_add_cont, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_xfs_log_recover_item_add_cont.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_log_recover_item_add_cont.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 2288, ptr noundef nonnull @.str.60) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !257
  %31 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
declare dso_local i32 @__traceiter_xfs_log_recover_item_add_cont(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_recover_reorder_trans(ptr noundef %log, ptr noundef %trans, i32 noundef %pass) unnamed_addr #3 align 64 {
entry:
  %sort_list = alloca %struct.list_head, align 4
  %cancel_list = alloca %struct.list_head, align 4
  %buffer_list = alloca %struct.list_head, align 4
  %inode_buffer_list = alloca %struct.list_head, align 4
  %item_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sort_list) #13
  %0 = getelementptr inbounds %struct.list_head, ptr %sort_list, i32 0, i32 1
  %1 = ptrtoint ptr %sort_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sort_list, ptr %sort_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sort_list, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cancel_list) #13
  %3 = getelementptr inbounds %struct.list_head, ptr %cancel_list, i32 0, i32 1
  %4 = ptrtoint ptr %cancel_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cancel_list, ptr %cancel_list, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cancel_list, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buffer_list) #13
  %6 = getelementptr inbounds %struct.list_head, ptr %buffer_list, i32 0, i32 1
  %7 = ptrtoint ptr %buffer_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buffer_list, ptr %buffer_list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buffer_list, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inode_buffer_list) #13
  %9 = getelementptr inbounds %struct.list_head, ptr %inode_buffer_list, i32 0, i32 1
  %10 = ptrtoint ptr %inode_buffer_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %inode_buffer_list, ptr %inode_buffer_list, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %inode_buffer_list, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %item_list) #13
  %12 = getelementptr inbounds %struct.list_head, ptr %item_list, i32 0, i32 1
  %13 = ptrtoint ptr %item_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %item_list, ptr %item_list, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %item_list, ptr %12, align 4
  %r_itemq = getelementptr inbounds %struct.xlog_recover, ptr %trans, i32 0, i32 5
  %15 = ptrtoint ptr %r_itemq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %r_itemq, align 4
  %cmp.i.not.i = icmp eq ptr %16, %r_itemq
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev2.i.i = getelementptr inbounds %struct.xlog_recover, ptr %trans, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sort_list, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %sort_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %16, ptr %sort_list, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sort_list, ptr %18, align 4
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %18, ptr %0, align 4
  %23 = ptrtoint ptr %r_itemq to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %r_itemq, ptr %r_itemq, align 4
  store ptr %r_itemq, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %24 = ptrtoint ptr %sort_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sort_list, align 4
  %cmp.not173 = icmp eq ptr %25, %sort_list
  br i1 %cmp.not173, label %list_splice_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @xlog_buf_item_ops to i32))
  %26 = load i16, ptr @xlog_buf_item_ops, align 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %item.0174 = phi ptr [ %25, %for.body.lr.ph ], [ %n.0180, %cleanup.for.body_crit_edge ]
  %27 = ptrtoint ptr %item.0174 to i32
  call void @__asan_load4_noabort(i32 %27)
  %n.0180 = load ptr, ptr %item.0174, align 4
  %ri_buf.i = getelementptr inbounds %struct.xlog_recover_item, ptr %item.0174, i32 0, i32 3
  %28 = ptrtoint ptr %ri_buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ri_buf.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %31, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %26)
  %cmp3.i = icmp eq i16 %33, %26
  br i1 %cmp3.i, label %for.body.if.end20_crit_edge, label %for.cond.i

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

for.cond.i:                                       ; preds = %for.body
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @xlog_inode_item_ops to i32))
  %34 = load i16, ptr @xlog_inode_item_ops, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %34)
  %cmp3.1.i = icmp eq i16 %33, %34
  br i1 %cmp3.1.i, label %for.cond.i.if.end20_crit_edge, label %for.cond.1.i

for.cond.i.if.end20_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @xlog_dquot_item_ops to i32))
  %35 = load i16, ptr @xlog_dquot_item_ops, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %35)
  %cmp3.2.i = icmp eq i16 %33, %35
  br i1 %cmp3.2.i, label %for.cond.1.i.if.end20_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end20_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @xlog_quotaoff_item_ops to i32))
  %36 = load i16, ptr @xlog_quotaoff_item_ops, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %36)
  %cmp3.3.i = icmp eq i16 %33, %36
  br i1 %cmp3.3.i, label %for.cond.2.i.if.end20_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end20_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @xlog_icreate_item_ops to i32))
  %37 = load i16, ptr @xlog_icreate_item_ops, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %37)
  %cmp3.4.i = icmp eq i16 %33, %37
  br i1 %cmp3.4.i, label %for.cond.3.i.if.end20_crit_edge, label %for.cond.4.i

for.cond.3.i.if.end20_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @xlog_efi_item_ops to i32))
  %38 = load i16, ptr @xlog_efi_item_ops, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %38)
  %cmp3.5.i = icmp eq i16 %33, %38
  br i1 %cmp3.5.i, label %for.cond.4.i.if.end20_crit_edge, label %for.cond.5.i

for.cond.4.i.if.end20_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

for.cond.5.i:                                     ; preds = %for.cond.4.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @xlog_efd_item_ops to i32))
  %39 = load i16, ptr @xlog_efd_item_ops, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %39)
  %cmp3.6.i = icmp eq i16 %33, %39
  br i1 %cmp3.6.i, label %for.cond.5.i.if.end20_crit_edge, label %for.cond.6.i

for.cond.5.i.if.end20_crit_edge:                  ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

for.cond.6.i:                                     ; preds = %for.cond.5.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @xlog_rui_item_ops to i32))
  %40 = load i16, ptr @xlog_rui_item_ops, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %40)
  %cmp3.7.i = icmp eq i16 %33, %40
  br i1 %cmp3.7.i, label %for.cond.6.i.if.end20_crit_edge, label %for.cond.7.i

for.cond.6.i.if.end20_crit_edge:                  ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

for.cond.7.i:                                     ; preds = %for.cond.6.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @xlog_rud_item_ops to i32))
  %41 = load i16, ptr @xlog_rud_item_ops, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %41)
  %cmp3.8.i = icmp eq i16 %33, %41
  br i1 %cmp3.8.i, label %for.cond.7.i.if.end20_crit_edge, label %for.cond.8.i

for.cond.7.i.if.end20_crit_edge:                  ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

for.cond.8.i:                                     ; preds = %for.cond.7.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @xlog_cui_item_ops to i32))
  %42 = load i16, ptr @xlog_cui_item_ops, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %42)
  %cmp3.9.i = icmp eq i16 %33, %42
  br i1 %cmp3.9.i, label %for.cond.8.i.if.end20_crit_edge, label %for.cond.9.i

for.cond.8.i.if.end20_crit_edge:                  ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

for.cond.9.i:                                     ; preds = %for.cond.8.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @xlog_cud_item_ops to i32))
  %43 = load i16, ptr @xlog_cud_item_ops, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %43)
  %cmp3.10.i = icmp eq i16 %33, %43
  br i1 %cmp3.10.i, label %for.cond.9.i.if.end20_crit_edge, label %for.cond.10.i

for.cond.9.i.if.end20_crit_edge:                  ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

for.cond.10.i:                                    ; preds = %for.cond.9.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @xlog_bui_item_ops to i32))
  %44 = load i16, ptr @xlog_bui_item_ops, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %44)
  %cmp3.11.i = icmp eq i16 %33, %44
  br i1 %cmp3.11.i, label %for.cond.10.i.if.end20_crit_edge, label %for.cond.11.i

for.cond.10.i.if.end20_crit_edge:                 ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

for.cond.11.i:                                    ; preds = %for.cond.10.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @xlog_bud_item_ops to i32))
  %45 = load i16, ptr @xlog_bud_item_ops, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %45)
  %cmp3.12.i = icmp eq i16 %33, %45
  br i1 %cmp3.12.i, label %for.cond.11.i.if.end20_crit_edge, label %if.then

for.cond.11.i.if.end20_crit_edge:                 ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then:                                          ; preds = %for.cond.11.i
  %ri_ops = getelementptr inbounds %struct.xlog_recover_item, ptr %item.0174, i32 0, i32 4
  %46 = ptrtoint ptr %ri_ops to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %ri_ops, align 4
  %47 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %log, align 128
  %49 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %29, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %50, align 2
  %conv = zext i16 %52 to i32
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %48, ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.xlog_recover_reorder_trans, i32 noundef %conv) #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, i32 noundef 1890) #13
  %53 = ptrtoint ptr %sort_list to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %sort_list, align 4
  %cmp.i.not = icmp eq ptr %54, %sort_list
  br i1 %cmp.i.not, label %if.then.for.end_crit_edge, label %if.then18

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then18:                                        ; preds = %if.then
  %55 = ptrtoint ptr %sort_list to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %sort_list, align 4
  %cmp.i.not.i98 = icmp eq ptr %56, %sort_list
  br i1 %cmp.i.not.i98, label %if.then18.for.end_crit_edge, label %if.then.i102

if.then18.for.end_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then.i102:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %r_itemq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %r_itemq, align 4
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %0, align 4
  %prev3.i.i100 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i100 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %r_itemq, ptr %prev3.i.i100, align 4
  store ptr %56, ptr %r_itemq, align 4
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %58, ptr %60, align 4
  %prev6.i.i101 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %63 = ptrtoint ptr %prev6.i.i101 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev6.i.i101, align 4
  %64 = ptrtoint ptr %sort_list to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %sort_list, ptr %sort_list, align 4
  store ptr %sort_list, ptr %0, align 4
  br label %for.end

if.end20:                                         ; preds = %for.cond.11.i.if.end20_crit_edge, %for.cond.10.i.if.end20_crit_edge, %for.cond.9.i.if.end20_crit_edge, %for.cond.8.i.if.end20_crit_edge, %for.cond.7.i.if.end20_crit_edge, %for.cond.6.i.if.end20_crit_edge, %for.cond.5.i.if.end20_crit_edge, %for.cond.4.i.if.end20_crit_edge, %for.cond.3.i.if.end20_crit_edge, %for.cond.2.i.if.end20_crit_edge, %for.cond.1.i.if.end20_crit_edge, %for.cond.i.if.end20_crit_edge, %for.body.if.end20_crit_edge
  %retval.0.i.ph = phi ptr [ @xlog_bui_item_ops, %for.cond.10.i.if.end20_crit_edge ], [ @xlog_cud_item_ops, %for.cond.9.i.if.end20_crit_edge ], [ @xlog_cui_item_ops, %for.cond.8.i.if.end20_crit_edge ], [ @xlog_rud_item_ops, %for.cond.7.i.if.end20_crit_edge ], [ @xlog_rui_item_ops, %for.cond.6.i.if.end20_crit_edge ], [ @xlog_efd_item_ops, %for.cond.5.i.if.end20_crit_edge ], [ @xlog_efi_item_ops, %for.cond.4.i.if.end20_crit_edge ], [ @xlog_icreate_item_ops, %for.cond.3.i.if.end20_crit_edge ], [ @xlog_quotaoff_item_ops, %for.cond.2.i.if.end20_crit_edge ], [ @xlog_dquot_item_ops, %for.cond.1.i.if.end20_crit_edge ], [ @xlog_inode_item_ops, %for.cond.i.if.end20_crit_edge ], [ @xlog_buf_item_ops, %for.body.if.end20_crit_edge ], [ @xlog_bud_item_ops, %for.cond.11.i.if.end20_crit_edge ]
  %ri_ops164 = getelementptr inbounds %struct.xlog_recover_item, ptr %item.0174, i32 0, i32 4
  %65 = ptrtoint ptr %ri_ops164 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %retval.0.i.ph, ptr %ri_ops164, align 4
  %reorder = getelementptr inbounds %struct.xlog_recover_item_ops, ptr %retval.0.i.ph, i32 0, i32 1
  %66 = ptrtoint ptr %reorder to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reorder, align 4
  %tobool22.not = icmp eq ptr %67, null
  br i1 %tobool22.not, label %if.end20.sw.bb33_crit_edge, label %if.end27

if.end20.sw.bb33_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb33

if.end27:                                         ; preds = %if.end20
  %call26 = call i32 %67(ptr noundef %item.0174) #13
  %68 = zext i32 %call26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %call26, label %if.end27.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb29
    i32 2, label %sw.bb31
    i32 1, label %if.end27.sw.bb33_crit_edge
  ]

if.end27.sw.bb33_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end27
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %item.0174) #13
  br i1 %call.i.i, label %if.end.i.i, label %sw.bb.__list_del_entry.exit.i_crit_edge

sw.bb.__list_del_entry.exit.i_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %item.0174, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i, align 4
  %71 = ptrtoint ptr %item.0174 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %item.0174, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev1.i.i.i, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %72, ptr %70, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %sw.bb.__list_del_entry.exit.i_crit_edge
  %75 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %6, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %item.0174, ptr noundef %76, ptr noundef nonnull %buffer_list) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.cleanup_crit_edge

__list_del_entry.exit.i.cleanup_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %77 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %item.0174, ptr %6, align 4
  %78 = ptrtoint ptr %item.0174 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %buffer_list, ptr %item.0174, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %item.0174, i32 0, i32 1
  %79 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev3.i.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %item.0174, ptr %76, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %if.end27
  call fastcc void @trace_xfs_log_recover_item_reorder_head(ptr noundef %log, ptr noundef %trans, ptr noundef %item.0174, i32 noundef %pass)
  %call.i.i104 = call zeroext i1 @__list_del_entry_valid(ptr noundef %item.0174) #13
  br i1 %call.i.i104, label %if.end.i.i107, label %sw.bb29.__list_del_entry.exit.i109_crit_edge

sw.bb29.__list_del_entry.exit.i109_crit_edge:     ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i109

if.end.i.i107:                                    ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i105 = getelementptr inbounds %struct.list_head, ptr %item.0174, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i105 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i105, align 4
  %83 = ptrtoint ptr %item.0174 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %item.0174, align 4
  %prev1.i.i.i106 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev1.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev1.i.i.i106, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %84, ptr %82, align 4
  br label %__list_del_entry.exit.i109

__list_del_entry.exit.i109:                       ; preds = %if.end.i.i107, %sw.bb29.__list_del_entry.exit.i109_crit_edge
  %87 = ptrtoint ptr %cancel_list to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cancel_list, align 4
  %call.i.i.i108 = call zeroext i1 @__list_add_valid(ptr noundef %item.0174, ptr noundef nonnull %cancel_list, ptr noundef %88) #13
  br i1 %call.i.i.i108, label %if.end.i.i.i111, label %__list_del_entry.exit.i109.cleanup_crit_edge

__list_del_entry.exit.i109.cleanup_crit_edge:     ; preds = %__list_del_entry.exit.i109
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i.i111:                                  ; preds = %__list_del_entry.exit.i109
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %item.0174, ptr %prev1.i.i2.i, align 4
  %90 = ptrtoint ptr %item.0174 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %88, ptr %item.0174, align 4
  %prev3.i.i.i110 = getelementptr inbounds %struct.list_head, ptr %item.0174, i32 0, i32 1
  %91 = ptrtoint ptr %prev3.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %cancel_list, ptr %prev3.i.i.i110, align 4
  %92 = ptrtoint ptr %cancel_list to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %item.0174, ptr %cancel_list, align 4
  br label %cleanup

sw.bb31:                                          ; preds = %if.end27
  %call.i.i112 = call zeroext i1 @__list_del_entry_valid(ptr noundef %item.0174) #13
  br i1 %call.i.i112, label %if.end.i.i115, label %sw.bb31.__list_del_entry.exit.i117_crit_edge

sw.bb31.__list_del_entry.exit.i117_crit_edge:     ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i117

if.end.i.i115:                                    ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i113 = getelementptr inbounds %struct.list_head, ptr %item.0174, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i113 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i113, align 4
  %95 = ptrtoint ptr %item.0174 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %item.0174, align 4
  %prev1.i.i.i114 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev1.i.i.i114, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %96, ptr %94, align 4
  br label %__list_del_entry.exit.i117

__list_del_entry.exit.i117:                       ; preds = %if.end.i.i115, %sw.bb31.__list_del_entry.exit.i117_crit_edge
  %99 = ptrtoint ptr %inode_buffer_list to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %inode_buffer_list, align 4
  %call.i.i.i116 = call zeroext i1 @__list_add_valid(ptr noundef %item.0174, ptr noundef nonnull %inode_buffer_list, ptr noundef %100) #13
  br i1 %call.i.i.i116, label %if.end.i.i.i120, label %__list_del_entry.exit.i117.cleanup_crit_edge

__list_del_entry.exit.i117.cleanup_crit_edge:     ; preds = %__list_del_entry.exit.i117
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i.i120:                                  ; preds = %__list_del_entry.exit.i117
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i2.i118 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i2.i118 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %item.0174, ptr %prev1.i.i2.i118, align 4
  %102 = ptrtoint ptr %item.0174 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %100, ptr %item.0174, align 4
  %prev3.i.i.i119 = getelementptr inbounds %struct.list_head, ptr %item.0174, i32 0, i32 1
  %103 = ptrtoint ptr %prev3.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %inode_buffer_list, ptr %prev3.i.i.i119, align 4
  %104 = ptrtoint ptr %inode_buffer_list to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %item.0174, ptr %inode_buffer_list, align 4
  br label %cleanup

sw.bb33:                                          ; preds = %if.end27.sw.bb33_crit_edge, %if.end20.sw.bb33_crit_edge
  call fastcc void @trace_xfs_log_recover_item_reorder_tail(ptr noundef %log, ptr noundef %trans, ptr noundef %item.0174, i32 noundef %pass)
  %call.i.i122 = call zeroext i1 @__list_del_entry_valid(ptr noundef %item.0174) #13
  br i1 %call.i.i122, label %if.end.i.i125, label %sw.bb33.__list_del_entry.exit.i128_crit_edge

sw.bb33.__list_del_entry.exit.i128_crit_edge:     ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i128

if.end.i.i125:                                    ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i123 = getelementptr inbounds %struct.list_head, ptr %item.0174, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i.i123 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i.i123, align 4
  %107 = ptrtoint ptr %item.0174 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %item.0174, align 4
  %prev1.i.i.i124 = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %prev1.i.i.i124 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev1.i.i.i124, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %108, ptr %106, align 4
  br label %__list_del_entry.exit.i128

__list_del_entry.exit.i128:                       ; preds = %if.end.i.i125, %sw.bb33.__list_del_entry.exit.i128_crit_edge
  %111 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %12, align 4
  %call.i.i.i127 = call zeroext i1 @__list_add_valid(ptr noundef %item.0174, ptr noundef %112, ptr noundef nonnull %item_list) #13
  br i1 %call.i.i.i127, label %if.end.i.i.i130, label %__list_del_entry.exit.i128.cleanup_crit_edge

__list_del_entry.exit.i128.cleanup_crit_edge:     ; preds = %__list_del_entry.exit.i128
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i.i130:                                  ; preds = %__list_del_entry.exit.i128
  call void @__sanitizer_cov_trace_pc() #15
  %113 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %item.0174, ptr %12, align 4
  %114 = ptrtoint ptr %item.0174 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %item_list, ptr %item.0174, align 4
  %prev3.i.i.i129 = getelementptr inbounds %struct.list_head, ptr %item.0174, i32 0, i32 1
  %115 = ptrtoint ptr %prev3.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %112, ptr %prev3.i.i.i129, align 4
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %item.0174, ptr %112, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i130, %__list_del_entry.exit.i128.cleanup_crit_edge, %if.end.i.i.i120, %__list_del_entry.exit.i117.cleanup_crit_edge, %if.end.i.i.i111, %__list_del_entry.exit.i109.cleanup_crit_edge, %if.end.i.i.i, %__list_del_entry.exit.i.cleanup_crit_edge, %if.end27.cleanup_crit_edge
  %cmp.not = icmp eq ptr %n.0180, %sort_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then.i102, %if.then18.for.end_crit_edge, %if.then.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  %error.2 = phi i32 [ -117, %if.then.for.end_crit_edge ], [ -117, %if.then18.for.end_crit_edge ], [ -117, %if.then.i102 ], [ 0, %list_splice_init.exit.for.end_crit_edge ], [ 0, %cleanup.for.end_crit_edge ]
  %117 = ptrtoint ptr %sort_list to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile ptr, ptr %sort_list, align 4
  %cmp.i132.not = icmp eq ptr %118, %sort_list
  br i1 %cmp.i132.not, label %for.end.cond.end_crit_edge, label %cond.false, !prof !234

for.end.cond.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.8, i32 noundef 1924) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.end.cond.end_crit_edge
  %119 = ptrtoint ptr %buffer_list to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile ptr, ptr %buffer_list, align 4
  %cmp.i134.not = icmp eq ptr %120, %buffer_list
  br i1 %cmp.i134.not, label %cond.end.if.end49_crit_edge, label %if.then47

cond.end.if.end49_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then47:                                        ; preds = %cond.end
  %121 = ptrtoint ptr %buffer_list to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile ptr, ptr %buffer_list, align 4
  %cmp.i.not.i136 = icmp eq ptr %122, %buffer_list
  br i1 %cmp.i.not.i136, label %if.then47.if.end49_crit_edge, label %if.then.i140

if.then47.if.end49_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then.i140:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %r_itemq to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %r_itemq, align 4
  %125 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %6, align 4
  %prev3.i.i138 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  %127 = ptrtoint ptr %prev3.i.i138 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %r_itemq, ptr %prev3.i.i138, align 4
  store ptr %122, ptr %r_itemq, align 4
  %128 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %124, ptr %126, align 4
  %prev6.i.i139 = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  %129 = ptrtoint ptr %prev6.i.i139 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %126, ptr %prev6.i.i139, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then.i140, %if.then47.if.end49_crit_edge, %cond.end.if.end49_crit_edge
  %130 = ptrtoint ptr %item_list to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile ptr, ptr %item_list, align 4
  %cmp.i141.not = icmp eq ptr %131, %item_list
  br i1 %cmp.i141.not, label %if.end49.if.end54_crit_edge, label %if.then52

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then52:                                        ; preds = %if.end49
  %132 = ptrtoint ptr %item_list to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile ptr, ptr %item_list, align 4
  %cmp.i.not.i143 = icmp eq ptr %133, %item_list
  br i1 %cmp.i.not.i143, label %if.then52.if.end54_crit_edge, label %if.then.i146

if.then52.if.end54_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then.i146:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i = getelementptr inbounds %struct.xlog_recover, ptr %trans, i32 0, i32 5, i32 1
  %134 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i, align 4
  %136 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %12, align 4
  %prev3.i.i145 = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  %138 = ptrtoint ptr %prev3.i.i145 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev3.i.i145, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %133, ptr %135, align 4
  %140 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %r_itemq, ptr %137, align 4
  store ptr %137, ptr %prev.i, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then.i146, %if.then52.if.end54_crit_edge, %if.end49.if.end54_crit_edge
  %141 = ptrtoint ptr %inode_buffer_list to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile ptr, ptr %inode_buffer_list, align 4
  %cmp.i147.not = icmp eq ptr %142, %inode_buffer_list
  br i1 %cmp.i147.not, label %if.end54.if.end59_crit_edge, label %if.then57

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then57:                                        ; preds = %if.end54
  %143 = ptrtoint ptr %inode_buffer_list to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile ptr, ptr %inode_buffer_list, align 4
  %cmp.i.not.i149 = icmp eq ptr %144, %inode_buffer_list
  br i1 %cmp.i.not.i149, label %if.then57.if.end59_crit_edge, label %if.then.i153

if.then57.if.end59_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then.i153:                                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i150 = getelementptr inbounds %struct.xlog_recover, ptr %trans, i32 0, i32 5, i32 1
  %145 = ptrtoint ptr %prev.i150 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev.i150, align 4
  %147 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %9, align 4
  %prev3.i.i152 = getelementptr inbounds %struct.list_head, ptr %144, i32 0, i32 1
  %149 = ptrtoint ptr %prev3.i.i152 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %146, ptr %prev3.i.i152, align 4
  %150 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %144, ptr %146, align 4
  %151 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %r_itemq, ptr %148, align 4
  store ptr %148, ptr %prev.i150, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then.i153, %if.then57.if.end59_crit_edge, %if.end54.if.end59_crit_edge
  %152 = ptrtoint ptr %cancel_list to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile ptr, ptr %cancel_list, align 4
  %cmp.i155.not = icmp eq ptr %153, %cancel_list
  br i1 %cmp.i155.not, label %if.end59.if.end64_crit_edge, label %if.then62

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then62:                                        ; preds = %if.end59
  %154 = ptrtoint ptr %cancel_list to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile ptr, ptr %cancel_list, align 4
  %cmp.i.not.i157 = icmp eq ptr %155, %cancel_list
  br i1 %cmp.i.not.i157, label %if.then62.if.end64_crit_edge, label %if.then.i161

if.then62.if.end64_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then.i161:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i158 = getelementptr inbounds %struct.xlog_recover, ptr %trans, i32 0, i32 5, i32 1
  %156 = ptrtoint ptr %prev.i158 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %prev.i158, align 4
  %158 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %3, align 4
  %prev3.i.i160 = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %160 = ptrtoint ptr %prev3.i.i160 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %157, ptr %prev3.i.i160, align 4
  %161 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %155, ptr %157, align 4
  %162 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %r_itemq, ptr %159, align 4
  store ptr %159, ptr %prev.i158, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then.i161, %if.then62.if.end64_crit_edge, %if.end59.if.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %item_list) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inode_buffer_list) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffer_list) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cancel_list) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sort_list) #13
  ret i32 %error.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_log_recover_item_recover(ptr noundef %log, ptr noundef %trans, ptr noundef %item, i32 noundef %pass) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_item_recover, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_item_recover, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !253

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !234

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !223) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !262
  %call42 = tail call i32 @__traceiter_xfs_log_recover_item_recover(ptr noundef null, ptr noundef %log, ptr noundef %trans, ptr noundef %item, i32 noundef %pass) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !263
  %13 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !234

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !223) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_item_recover, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_item_recover, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_log_recover_item_recover.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_log_recover_item_recover.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 2291, ptr noundef nonnull @.str.60) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !257
  %31 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
define internal fastcc i32 @xlog_recover_items_pass2(ptr noundef %log, ptr noundef %trans, ptr noundef %buffer_list, ptr noundef readonly %item_list) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %r_lsn = getelementptr inbounds %struct.xlog_recover, ptr %trans, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.for.cond_crit_edge, %entry
  %item.0.in = phi ptr [ %item_list, %entry ], [ %item.0, %if.end.for.cond_crit_edge ]
  %0 = ptrtoint ptr %item.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %item.0 = load ptr, ptr %item.0.in, align 4
  %cmp.not = icmp eq ptr %item.0, %item_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  tail call fastcc void @trace_xfs_log_recover_item_recover(ptr noundef %log, ptr noundef %trans, ptr noundef %item.0, i32 noundef 2)
  %ri_ops = getelementptr inbounds %struct.xlog_recover_item, ptr %item.0, i32 0, i32 4
  %1 = ptrtoint ptr %ri_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ri_ops, align 4
  %commit_pass2 = getelementptr inbounds %struct.xlog_recover_item_ops, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %commit_pass2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %commit_pass2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %r_lsn to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %r_lsn, align 8
  %call = tail call i32 %4(ptr noundef %log, ptr noundef %buffer_list, ptr noundef %item.0, i64 noundef %6) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %error.1 = phi i32 [ %call, %if.then ], [ 0, %for.body.if.end_crit_edge ]
  %tobool3.not = icmp eq i32 %error.1, 0
  br i1 %tobool3.not, label %if.end.for.cond_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.for.cond_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %if.end.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_log_recover_item_reorder_head(ptr noundef %log, ptr noundef %trans, ptr noundef %item, i32 noundef %pass) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_item_reorder_head, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_item_reorder_head, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !253

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !234

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !223) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !264
  %call42 = tail call i32 @__traceiter_xfs_log_recover_item_reorder_head(ptr noundef null, ptr noundef %log, ptr noundef %trans, ptr noundef %item, i32 noundef %pass) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  %13 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !234

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !223) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_item_reorder_head, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_item_reorder_head, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_log_recover_item_reorder_head.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_log_recover_item_reorder_head.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 2289, ptr noundef nonnull @.str.60) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !257
  %31 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
define internal fastcc void @trace_xfs_log_recover_item_reorder_tail(ptr noundef %log, ptr noundef %trans, ptr noundef %item, i32 noundef %pass) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_item_reorder_tail, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_item_reorder_tail, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !253

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !234

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !223) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %call42 = tail call i32 @__traceiter_xfs_log_recover_item_reorder_tail(ptr noundef null, ptr noundef %log, ptr noundef %trans, ptr noundef %item, i32 noundef %pass) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !267
  %13 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !234

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !223) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_item_reorder_tail, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_item_reorder_tail, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_log_recover_item_reorder_tail.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_log_recover_item_reorder_tail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 2290, ptr noundef nonnull @.str.60) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !257
  %31 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
declare dso_local i32 @__traceiter_xfs_log_recover_item_reorder_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_log_recover_item_reorder_tail(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_log_recover_item_recover(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_seek_logrec_hdr(ptr noundef %log, i64 noundef %head_blk, i64 noundef %tail_blk, i32 noundef %count, ptr noundef %buffer, ptr nocapture noundef writeonly %rblk, ptr nocapture noundef writeonly %rhead, ptr nocapture noundef writeonly %wrapped) unnamed_addr #3 align 64 {
entry:
  %offset = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #13
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %offset, align 4
  %1 = ptrtoint ptr %wrapped to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %wrapped, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %head_blk, i64 %tail_blk)
  %cmp = icmp sgt i64 %head_blk, %tail_blk
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %l_logBBsize = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 16
  %2 = ptrtoint ptr %l_logBBsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %l_logBBsize, align 4
  %sub = add i32 %3, -1
  %conv = sext i32 %sub to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i64 [ %conv, %cond.false ], [ %head_blk, %entry.cond.end_crit_edge ]
  %4 = shl i64 %tail_blk, 32
  %conv275 = ashr exact i64 %4, 32
  call void @__sanitizer_cov_trace_cmp8(i64 %cond, i64 %conv275)
  %cmp3.not76 = icmp slt i64 %cond, %conv275
  br i1 %cmp3.not76, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end.for.body_crit_edge
  %conv279 = phi i64 [ %conv2, %for.inc.for.body_crit_edge ], [ %conv275, %cond.end.for.body_crit_edge ]
  %found.078 = phi i32 [ %found.1, %for.inc.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %indvars = trunc i64 %conv279 to i32
  %call = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %conv279, i32 noundef 1, ptr noundef %buffer, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %offset, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17974594, i32 %8)
  %cmp6 = icmp eq i32 %8, -17974594
  br i1 %cmp6, label %if.then8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then8:                                         ; preds = %if.end
  %9 = ptrtoint ptr %rblk to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv279, ptr %rblk, align 8
  %10 = ptrtoint ptr %rhead to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %rhead, align 4
  %inc = add i32 %found.078, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %count)
  %cmp10 = icmp eq i32 %inc, %count
  br i1 %cmp10, label %if.then8.cleanup_crit_edge, label %if.then8.for.inc_crit_edge

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %if.then8.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %found.1 = phi i32 [ %inc, %if.then8.for.inc_crit_edge ], [ %found.078, %if.end.for.inc_crit_edge ]
  %inc15 = add i32 %indvars, 1
  %conv2 = sext i32 %inc15 to i64
  %cmp3.not = icmp slt i64 %cond, %conv2
  br i1 %cmp3.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end.for.end_crit_edge
  %found.2 = phi i32 [ 0, %cond.end.for.end_crit_edge ], [ %found.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %tail_blk, i64 %head_blk)
  %cmp16 = icmp sle i64 %tail_blk, %head_blk
  call void @__sanitizer_cov_trace_cmp4(i32 %found.2, i32 %count)
  %cmp18.not = icmp eq i32 %found.2, %count
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp18.not
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %for.cond21.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond21.preheader:                             ; preds = %for.end
  %conv22 = trunc i64 %head_blk to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv22)
  %cmp2381 = icmp sgt i32 %conv22, 0
  br i1 %cmp2381, label %for.cond21.preheader.for.body25_crit_edge, label %for.cond21.preheader.cleanup_crit_edge

for.cond21.preheader.cleanup_crit_edge:           ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond21.preheader.for.body25_crit_edge:        ; preds = %for.cond21.preheader
  br label %for.body25

for.body25:                                       ; preds = %for.inc41.for.body25_crit_edge, %for.cond21.preheader.for.body25_crit_edge
  %found.383 = phi i32 [ %found.4, %for.inc41.for.body25_crit_edge ], [ %found.2, %for.cond21.preheader.for.body25_crit_edge ]
  %i.182 = phi i32 [ %inc42, %for.inc41.for.body25_crit_edge ], [ 0, %for.cond21.preheader.for.body25_crit_edge ]
  %conv26 = zext i32 %i.182 to i64
  %call27 = call fastcc i32 @xlog_bread(ptr noundef %log, i64 noundef %conv26, i32 noundef 1, ptr noundef %buffer, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %for.body25.cleanup_crit_edge

for.body25.cleanup_crit_edge:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end30:                                         ; preds = %for.body25
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %offset, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17974594, i32 %14)
  %cmp31 = icmp eq i32 %14, -17974594
  br i1 %cmp31, label %if.then33, label %if.end30.for.inc41_crit_edge

if.end30.for.inc41_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc41

if.then33:                                        ; preds = %if.end30
  %15 = ptrtoint ptr %wrapped to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %wrapped, align 1
  %16 = ptrtoint ptr %rblk to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv26, ptr %rblk, align 8
  %17 = ptrtoint ptr %rhead to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %12, ptr %rhead, align 4
  %inc35 = add i32 %found.383, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc35, i32 %count)
  %cmp36 = icmp eq i32 %inc35, %count
  br i1 %cmp36, label %if.then33.cleanup_crit_edge, label %if.then33.for.inc41_crit_edge

if.then33.for.inc41_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc41

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc41:                                        ; preds = %if.then33.for.inc41_crit_edge, %if.end30.for.inc41_crit_edge
  %found.4 = phi i32 [ %inc35, %if.then33.for.inc41_crit_edge ], [ %found.383, %if.end30.for.inc41_crit_edge ]
  %inc42 = add nuw nsw i32 %i.182, 1
  %exitcond.not = icmp eq i32 %inc42, %conv22
  br i1 %exitcond.not, label %for.inc41.cleanup_crit_edge, label %for.inc41.for.body25_crit_edge

for.inc41.for.body25_crit_edge:                   ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body25

for.inc41.cleanup_crit_edge:                      ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc41.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %for.body25.cleanup_crit_edge, %for.cond21.preheader.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %found.2, %for.end.cleanup_crit_edge ], [ %found.2, %for.cond21.preheader.cleanup_crit_edge ], [ %found.4, %for.inc41.cleanup_crit_edge ], [ %count, %if.then33.cleanup_crit_edge ], [ %call27, %for.body25.cleanup_crit_edge ], [ %count, %if.then8.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_write_log_records(ptr noundef %log, i32 noundef %cycle, i32 noundef %start_block, i32 noundef %blocks, i32 noundef %tail_cycle, i32 noundef %tail_block) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %l_sectBBsize = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 11
  %0 = ptrtoint ptr %l_sectBBsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l_sectBBsize, align 4
  %2 = tail call i32 @llvm.cttz.i32(i32 %blocks, i1 true), !range !243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blocks)
  %iszero = icmp eq i32 %blocks, 0
  %.op = shl i32 2, %2
  %shl = select i1 %iszero, i32 1, i32 %.op
  %l_logBBsize = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 16
  %3 = ptrtoint ptr %l_logBBsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %l_logBBsize, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %bufblks.0 = phi i32 [ %shl, %entry ], [ %shr, %while.cond.while.cond_crit_edge ]
  %cmp = icmp sgt i32 %bufblks.0, %4
  %shr = ashr i32 %bufblks.0, 1
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.cond1.preheader

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

while.cond1.preheader:                            ; preds = %while.cond
  %add = add i32 %blocks, %start_block
  br label %while.cond1

while.cond1:                                      ; preds = %while.body2.while.cond1_crit_edge, %while.cond1.preheader
  %bufblks.1 = phi i32 [ %shr3, %while.body2.while.cond1_crit_edge ], [ %bufblks.0, %while.cond1.preheader ]
  %call = tail call fastcc ptr @xlog_alloc_buffer(ptr noundef %log, i32 noundef %bufblks.1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body2, label %while.end5

while.body2:                                      ; preds = %while.cond1
  %shr3 = ashr i32 %bufblks.1, 1
  %cmp4 = icmp slt i32 %shr3, %1
  br i1 %cmp4, label %while.body2.cleanup56_crit_edge, label %while.body2.while.cond1_crit_edge

while.body2.while.cond1_crit_edge:                ; preds = %while.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond1

while.body2.cleanup56_crit_edge:                  ; preds = %while.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup56

while.end5:                                       ; preds = %while.cond1
  %neg = sub i32 0, %1
  %and = and i32 %neg, %start_block
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %start_block)
  %cmp6.not = icmp eq i32 %and, %start_block
  br i1 %cmp6.not, label %while.end5.if.end13_crit_edge, label %if.then7

while.end5.if.end13_crit_edge:                    ; preds = %while.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then7:                                         ; preds = %while.end5
  %conv = sext i32 %start_block to i64
  %call8 = tail call fastcc i32 @xlog_bread_noalign(ptr noundef %log, i64 noundef %conv, i32 noundef 1, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.out_free_buffer_crit_edge

if.then7.out_free_buffer_crit_edge:               ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %sub12 = sub i32 %start_block, %and
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %while.end5.if.end13_crit_edge
  %j.0 = phi i32 [ %sub12, %if.end11 ], [ 0, %while.end5.if.end13_crit_edge ]
  %and22 = and i32 %add, %neg
  %conv29 = sext i32 %and22 to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %start_block)
  %cmp14128 = icmp sgt i32 %add, %start_block
  br i1 %cmp14128, label %if.end13.for.body_crit_edge, label %if.end13.out_free_buffer_crit_edge

if.end13.out_free_buffer_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

for.cond:                                         ; preds = %for.end
  %add54 = add i32 %i.0130, %bufblks.1
  %cmp14 = icmp slt i32 %add54, %add
  br i1 %cmp14, label %for.cond.for.body_crit_edge, label %for.cond.out_free_buffer_crit_edge

for.cond.out_free_buffer_crit_edge:               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end13.for.body_crit_edge
  %j.1131 = phi i32 [ 0, %for.cond.for.body_crit_edge ], [ %j.0, %if.end13.for.body_crit_edge ]
  %i.0130 = phi i32 [ %add54, %for.cond.for.body_crit_edge ], [ %start_block, %if.end13.for.body_crit_edge ]
  %start_block.addr.0129 = phi i32 [ %add25, %for.cond.for.body_crit_edge ], [ %start_block, %if.end13.for.body_crit_edge ]
  %sub16 = sub i32 %add, %start_block.addr.0129
  %5 = tail call i32 @llvm.smin.i32(i32 %bufblks.1, i32 %sub16)
  %sub19 = sub i32 %5, %j.1131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.1131)
  %cmp23 = icmp eq i32 %j.1131, 0
  %add25 = add i32 %sub19, %start_block.addr.0129
  call void @__sanitizer_cov_trace_cmp4(i32 %add25, i32 %and22)
  %cmp26 = icmp sgt i32 %add25, %and22
  %or.cond = select i1 %cmp23, i1 %cmp26, i1 false
  br i1 %or.cond, label %if.then28, label %for.body.if.end36_crit_edge

for.body.if.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then28:                                        ; preds = %for.body
  %sub30 = sub i32 %and22, %start_block.addr.0129
  %shl31 = shl i32 %sub30, 9
  %add.ptr = getelementptr i8, ptr %call, i32 %shl31
  %call32 = tail call fastcc i32 @xlog_bread_noalign(ptr noundef %log, i64 noundef %conv29, i32 noundef %1, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then28.if.end36_crit_edge, label %if.then28.out_free_buffer_crit_edge

if.then28.out_free_buffer_crit_edge:              ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.end36:                                         ; preds = %if.then28.if.end36_crit_edge, %for.body.if.end36_crit_edge
  %conv37 = sext i32 %start_block.addr.0129 to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1131, i32 %sub19)
  %cmp41125 = icmp slt i32 %j.1131, %sub19
  br i1 %cmp41125, label %for.body43.preheader, label %if.end36.for.end_crit_edge

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body43.preheader:                             ; preds = %if.end36
  %6 = ptrtoint ptr %l_sectBBsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %l_sectBBsize, align 4
  %sub.i = add i32 %7, 8388607
  %and.i = and i32 %sub.i, %start_block.addr.0129
  %conv1.i = shl i32 %and.i, 9
  %add.ptr39 = getelementptr i8, ptr %call, i32 %conv1.i
  br label %for.body43

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %for.body43.preheader
  %j.2127 = phi i32 [ %inc, %for.body43.for.body43_crit_edge ], [ %j.1131, %for.body43.preheader ]
  %offset.0126 = phi ptr [ %add.ptr45, %for.body43.for.body43_crit_edge ], [ %add.ptr39, %for.body43.preheader ]
  %add44 = add i32 %j.2127, %i.0130
  tail call fastcc void @xlog_add_record(ptr noundef %log, ptr noundef %offset.0126, i32 noundef %cycle, i32 noundef %add44, i32 noundef %tail_cycle, i32 noundef %tail_block)
  %add.ptr45 = getelementptr i8, ptr %offset.0126, i32 512
  %inc = add nsw i32 %j.2127, 1
  %exitcond.not = icmp eq i32 %inc, %sub19
  br i1 %exitcond.not, label %for.body43.for.end_crit_edge, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body43

for.body43.for.end_crit_edge:                     ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body43.for.end_crit_edge, %if.end36.for.end_crit_edge
  %call47 = tail call fastcc i32 @xlog_bwrite(ptr noundef %log, i64 noundef %conv37, i32 noundef %sub19, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %for.cond, label %for.end.out_free_buffer_crit_edge

for.end.out_free_buffer_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

out_free_buffer:                                  ; preds = %for.end.out_free_buffer_crit_edge, %if.then28.out_free_buffer_crit_edge, %for.cond.out_free_buffer_crit_edge, %if.end13.out_free_buffer_crit_edge, %if.then7.out_free_buffer_crit_edge
  %error.3 = phi i32 [ %call8, %if.then7.out_free_buffer_crit_edge ], [ 0, %if.end13.out_free_buffer_crit_edge ], [ 0, %for.cond.out_free_buffer_crit_edge ], [ %call32, %if.then28.out_free_buffer_crit_edge ], [ %call47, %for.end.out_free_buffer_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call) #13
  br label %cleanup56

cleanup56:                                        ; preds = %out_free_buffer, %while.body2.cleanup56_crit_edge
  %retval.0 = phi i32 [ %error.3, %out_free_buffer ], [ -12, %while.body2.cleanup56_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @xlog_add_record(ptr nocapture noundef readonly %log, ptr nocapture noundef writeonly %buf, i32 noundef %cycle, i32 noundef %block, i32 noundef %tail_cycle, i32 noundef %tail_block) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %buf, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 504)
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -17974594, ptr %buf, align 8
  %h_cycle = getelementptr inbounds %struct.xlog_rec_header, ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %h_cycle to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cycle, ptr %h_cycle, align 4
  %4 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log, align 128
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %7, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond = select i1 %tobool.i.not, i32 1, i32 2
  %h_version = getelementptr inbounds %struct.xlog_rec_header, ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %h_version to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %h_version, align 8
  %conv.i = zext i32 %cycle to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %block to i64
  %or.i = or i64 %shl.i, %conv1.i
  %h_lsn = getelementptr inbounds %struct.xlog_rec_header, ptr %buf, i32 0, i32 4
  %9 = ptrtoint ptr %h_lsn to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %or.i, ptr %h_lsn, align 8
  %conv.i13 = zext i32 %tail_cycle to i64
  %shl.i14 = shl nuw i64 %conv.i13, 32
  %conv1.i15 = zext i32 %tail_block to i64
  %or.i16 = or i64 %shl.i14, %conv1.i15
  %h_tail_lsn = getelementptr inbounds %struct.xlog_rec_header, ptr %buf, i32 0, i32 5
  %10 = ptrtoint ptr %h_tail_lsn to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %or.i16, ptr %h_tail_lsn, align 8
  %h_fmt = getelementptr inbounds %struct.xlog_rec_header, ptr %buf, i32 0, i32 10
  %11 = ptrtoint ptr %h_fmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %h_fmt, align 4
  %h_fs_uuid = getelementptr inbounds %struct.xlog_rec_header, ptr %buf, i32 0, i32 11
  %12 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %log, align 128
  %sb_uuid = getelementptr inbounds %struct.xfs_sb, ptr %13, i32 0, i32 5
  %14 = call ptr @memcpy(ptr %h_fs_uuid, ptr %sb_uuid, i32 16)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_bwrite(ptr noundef %log, i64 noundef %blk_no, i32 noundef %nbblks, ptr noundef %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xlog_do_io(ptr noundef %log, i64 noundef %blk_no, i32 noundef %nbblks, ptr noundef %data, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_log_recover(ptr noundef %log, i64 noundef %headblk, i64 noundef %tailblk) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !253

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !234

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !223) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  %call42 = tail call i32 @__traceiter_xfs_log_recover(ptr noundef null, ptr noundef %log, i64 noundef %headblk, i64 noundef %tailblk) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %13 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !234

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !223) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_log_recover.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_log_recover.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 2220, ptr noundef nonnull @.str.60) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !257
  %31 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
define internal fastcc i32 @xlog_do_log_recovery(ptr noundef %log, i64 noundef %head_blk, i64 noundef %tail_blk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp8(i64 %head_blk, i64 %tail_blk)
  %cmp.not = icmp eq i64 %head_blk, %tail_blk
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !237

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.8, i32 noundef 3249) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call.i = tail call ptr @kmem_alloc(i32 noundef 512, i32 noundef 16) #13
  %l_buf_cancel_table = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 8
  %0 = ptrtoint ptr %l_buf_cancel_table to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %l_buf_cancel_table, align 128
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %cond.end
  %i.054 = phi i32 [ 0, %cond.end ], [ %inc, %for.body.for.body_crit_edge ]
  %1 = ptrtoint ptr %l_buf_cancel_table to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %l_buf_cancel_table, align 128
  %arrayidx = getelementptr %struct.list_head, ptr %2, i32 %i.054
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr %struct.list_head, ptr %2, i32 %i.054, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %prev.i, align 4
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %call4 = tail call fastcc i32 @xlog_do_recovery_pass(ptr noundef %log, i64 noundef %head_blk, i64 noundef %tail_blk, i32 noundef 1, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %for.end
  %call8 = tail call fastcc i32 @xlog_do_recovery_pass(ptr noundef %log, i64 noundef %head_blk, i64 noundef %tail_blk, i32 noundef 2, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.for.body14_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.for.body14_crit_edge:                      ; preds = %if.end
  br label %for.body14

for.body14:                                       ; preds = %for.inc28.for.body14_crit_edge, %if.end.for.body14_crit_edge
  %i11.055 = phi i32 [ %inc29, %for.inc28.for.body14_crit_edge ], [ 0, %if.end.for.body14_crit_edge ]
  %5 = ptrtoint ptr %l_buf_cancel_table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %l_buf_cancel_table, align 128
  %arrayidx16 = getelementptr %struct.list_head, ptr %6, i32 %i11.055
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx16, align 4
  %cmp.i.not = icmp eq ptr %8, %arrayidx16
  br i1 %cmp.i.not, label %for.body14.for.inc28_crit_edge, label %cond.false26, !prof !234

for.body14.for.inc28_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc28

cond.false26:                                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.8, i32 noundef 3279) #13
  br label %for.inc28

for.inc28:                                        ; preds = %cond.false26, %for.body14.for.inc28_crit_edge
  %inc29 = add nuw nsw i32 %i11.055, 1
  %exitcond56.not = icmp eq i32 %inc29, 64
  br i1 %exitcond56.not, label %for.inc28.cleanup_crit_edge, label %for.inc28.for.body14_crit_edge

for.inc28.for.body14_crit_edge:                   ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body14

for.inc28.cleanup_crit_edge:                      ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc28.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %for.end.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ], [ %call8, %for.inc28.cleanup_crit_edge ]
  %9 = ptrtoint ptr %l_buf_cancel_table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %l_buf_cancel_table, align 128
  tail call void @kvfree(ptr noundef %10) #13
  %11 = ptrtoint ptr %l_buf_cancel_table to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %l_buf_cancel_table, align 128
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xlog_assign_tail_lsn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_xfs_buf_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_ioerror_alert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_sb_from_disk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_sb_version_to_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_reinit_percpu_counters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_initialize_perag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_set_aside(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_log_recover(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xlog_intent_recovery_failed(ptr noundef %mp, i32 noundef %error, ptr noundef %function) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xlog_intent_recovery_failed, i32 0, i32 1), ptr blockaddress(@trace_xlog_intent_recovery_failed, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !253

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !234

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !223) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !270
  %call42 = tail call i32 @__traceiter_xlog_intent_recovery_failed(ptr noundef null, ptr noundef %mp, i32 noundef %error, ptr noundef %function) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !271
  %13 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !234

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !223) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xlog_intent_recovery_failed, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xlog_intent_recovery_failed, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xlog_intent_recovery_failed.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xlog_intent_recovery_failed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 159, ptr noundef nonnull @.str.60) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !257
  %31 = tail call i32 @llvm.read_register.i32(metadata !223) #13
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
declare dso_local i32 @__traceiter_xlog_intent_recovery_failed(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_defer_ops_continue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_defer_resources_rele(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_defer_ops_capture_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_read_agi(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_recover_process_one_iunlink(ptr noundef %mp, i32 noundef %agno, i32 noundef %agino, i32 noundef %bucket) unnamed_addr #3 align 64 {
entry:
  %ibp = alloca ptr, align 4
  %ip = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ibp) #13
  %0 = ptrtoint ptr %ibp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ibp, align 4, !annotation !233
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #13
  %1 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %ip, align 4, !annotation !233
  %conv = zext i32 %agno to i64
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 15
  %2 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 %conv, %sh_prom
  %conv1 = zext i32 %agino to i64
  %or = or i64 %shl, %conv1
  %call = call i32 @xfs_iget(ptr noundef %mp, ptr noundef null, i64 noundef %or, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %ip) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ip, align 4
  %i_imap = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 5
  %call2 = call i32 @xfs_imap_to_bp(ptr noundef %mp, ptr noundef null, ptr noundef %i_imap, ptr noundef nonnull %ibp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %fail_iput

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %ibp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ibp, align 4
  %8 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ip, align 4
  %im_boffset = getelementptr inbounds %struct.xfs_inode, ptr %9, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %im_boffset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %im_boffset, align 2
  %conv7 = zext i16 %11 to i32
  %call8 = call ptr @xfs_buf_offset(ptr noundef %7, i32 noundef %conv7) #13
  %12 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ip, align 4
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %13, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #13
  %i_flags.i = getelementptr inbounds %struct.xfs_inode, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_flags.i, align 8
  %and.i = and i32 %15, -2049
  store i32 %and.i, ptr %i_flags.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #13
  %16 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ip, align 4
  %18 = getelementptr inbounds %struct.xfs_inode, ptr %17, i32 0, i32 27, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %if.end5.cond.end_crit_edge, label %cond.false, !prof !234

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.8, i32 noundef 2717) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end5.cond.end_crit_edge
  %21 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ip, align 4
  %i_vnode.i36 = getelementptr inbounds %struct.xfs_inode, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %i_vnode.i36 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %i_vnode.i36, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp15.not = icmp eq i16 %24, 0
  br i1 %cmp15.not, label %cond.false24, label %cond.end.cond.end25_crit_edge, !prof !237

cond.end.cond.end25_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.8, i32 noundef 2718) #13
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %cond.end.cond.end25_crit_edge
  %di_next_unlinked = getelementptr inbounds %struct.xfs_dinode, ptr %call8, i32 0, i32 26
  %25 = ptrtoint ptr %di_next_unlinked to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %di_next_unlinked, align 8
  %27 = ptrtoint ptr %ibp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ibp, align 4
  call void @xfs_buf_unlock(ptr noundef %28) #13
  call void @xfs_buf_rele(ptr noundef %28) #13
  %29 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ip, align 4
  call void @xfs_irele(ptr noundef %30) #13
  br label %cleanup

fail_iput:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ip, align 4
  call void @xfs_irele(ptr noundef %32) #13
  br label %fail

fail:                                             ; preds = %fail_iput, %entry.fail_crit_edge
  call fastcc void @xlog_recover_clear_agi_bucket(ptr noundef %mp, i32 noundef %agno, i32 noundef %bucket)
  br label %cleanup

cleanup:                                          ; preds = %fail, %cond.end25
  %retval.0 = phi i32 [ -1, %fail ], [ %26, %cond.end25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ibp) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inodegc_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_imap_to_bp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_buf_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlog_recover_clear_agi_bucket(ptr noundef %mp, i32 noundef %agno, i32 noundef %bucket) unnamed_addr #3 align 64 {
entry:
  %tp = alloca ptr, align 4
  %agibp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #13
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !233
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agibp) #13
  %1 = ptrtoint ptr %agibp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %agibp, align 4, !annotation !233
  %tr_clearagi = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65, i32 18
  %call = call i32 @xfs_trans_alloc(ptr noundef %mp, ptr noundef %tr_clearagi, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_error_crit_edge

entry.out_error_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_error

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tp, align 4
  %call1 = call i32 @xfs_read_agi(ptr noundef %mp, ptr noundef %3, i32 noundef %agno, ptr noundef nonnull %agibp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %out_abort

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %agibp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %agibp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_addr, align 4
  %arrayidx = getelementptr %struct.xfs_agi, ptr %7, i32 0, i32 10, i32 %bucket
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %arrayidx, align 4
  %mul = shl i32 %bucket, 2
  %add = add i32 %mul, 40
  %9 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tp, align 4
  %11 = load ptr, ptr %agibp, align 4
  %sub = add i32 %mul, 43
  call void @xfs_trans_log_buf(ptr noundef %10, ptr noundef %11, i32 noundef %add, i32 noundef %sub) #13
  %12 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tp, align 4
  %call6 = call i32 @xfs_trans_commit(ptr noundef %13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end4.out_error_crit_edge

if.end4.out_error_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_error

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

out_abort:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %15) #13
  br label %out_error

out_error:                                        ; preds = %out_abort, %if.end4.out_error_crit_edge, %entry.out_error_crit_edge
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.xlog_recover_clear_agi_bucket, i32 noundef %agno) #13
  br label %cleanup

cleanup:                                          ; preds = %out_error, %if.end4.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agibp) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_read_agf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !133, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !163, !165, !167, !168, !170, !172, !174, !176, !178, !179, !181, !182, !184, !185, !187, !189, !191, !193, !195, !197, !198, !200, !202, !204, !206, !207, !209, !211, !213, !215, !217, !219, !221}
!llvm.named.register.sp = !{!223}
!llvm.module.flags = !{!224, !225, !226, !227, !228, !229, !230, !231}
!llvm.ident = !{!232}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_log_recover.c", i32 3401, i32 48}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_log_recover.c", i32 3416, i32 1}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/xfs_log_recover.c", i32 3420, i32 1}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/xfs/xfs_log_recover.c", i32 3422, i32 1}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_log_recover.c", i32 3433, i32 5}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_log_recover.c", i32 3438, i32 25}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/xfs/xfs_log_recover.c", i32 3440, i32 14}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/xfs/xfs_log_recover.c", i32 3472, i32 24}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/xfs/xfs_log_recover.c", i32 3473, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/xfs/xfs_log_recover.c", i32 3494, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/xfs/xfs_log_recover.c", i32 3512, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/xfs/xfs_log_recover.c", i32 1265, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/xfs/xfs_log_recover.c", i32 1292, i32 23}
!26 = !{ptr @__func__.xlog_find_tail, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/xfs/xfs_log_recover.c", i32 1292, i32 56}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/xfs/xfs_log_recover.c", i32 1378, i32 23}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/xfs/xfs_log_recover.c", i32 520, i32 23}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/xfs/xfs_log_recover.c", i32 532, i32 24}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/xfs/xfs_log_recover.c", i32 555, i32 2}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/xfs/xfs_log_recover.c", i32 674, i32 3}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/xfs/xfs_log_recover.c", i32 692, i32 3}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/xfs/xfs_log_recover.c", i32 726, i32 4}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/xfs/xfs_log_recover.c", i32 757, i32 23}
!44 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/xfs/xfs_log_recover.c", i32 1451, i32 2}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/xfs/xfs_log_recover.c", i32 302, i32 2}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/xfs/xfs_log_recover.c", i32 416, i32 2}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/xfs/xfs_log_recover.c", i32 435, i32 3}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/xfs/xfs_log_recover.c", i32 436, i32 4}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/xfs/xfs_log_recover.c", i32 251, i32 2}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/xfs/xfs_log_recover.c", i32 259, i32 16}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/xfs/xfs_log_recover.c", i32 260, i32 13}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/xfs/xfs_log_recover.c", i32 262, i32 16}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/xfs/xfs_log_recover.c", i32 203, i32 16}
!64 = !{ptr @__func__.xlog_header_check_dump, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/xfs/xfs_log_recover.c", i32 204, i32 3}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/xfs/xfs_log_recover.c", i32 205, i32 16}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/xfs/xfs_log_recover.c", i32 88, i32 6}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/xfs/xfs_log_recover.c", i32 89, i32 23}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/xfs/xfs_log_recover.c", i32 136, i32 6}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/xfs/xfs_log_recover.c", i32 138, i32 5}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/xfs/xfs_log_recover.c", i32 145, i32 2}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/xfs/xfs_log_recover.c", i32 151, i32 6}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/xfs/xfs_log_recover.c", i32 152, i32 27}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/xfs/xfs_log_recover.c", i32 152, i32 37}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/xfs/xfs_log_recover.c", i32 1074, i32 1}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/xfs/xfs_log_recover.c", i32 2970, i32 2}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/xfs/xfs_log_recover.c", i32 3012, i32 3}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/xfs/xfs_log_recover.c", i32 3027, i32 3}
!92 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/xfs/xfs_log_recover.c", i32 3065, i32 6}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/xfs/xfs_log_recover.c", i32 3067, i32 6}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/xfs/xfs_log_recover.c", i32 3125, i32 6}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/xfs/xfs_log_recover.c", i32 3129, i32 6}
!100 = distinct !{null, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/xfs/xfs_log_recover.c", i32 3165, i32 3}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/xfs/xfs_log_recover.c", i32 2915, i32 6}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/xfs/xfs_log_recover.c", i32 2918, i32 6}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/xfs/xfs_log_recover.c", i32 2922, i32 23}
!108 = !{ptr @__func__.xlog_valid_rec_header, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/xfs/xfs_log_recover.c", i32 2923, i32 4}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/xfs/xfs_log_recover.c", i32 2932, i32 6}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/xfs/xfs_log_recover.c", i32 2935, i32 6}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/xfs/xfs_log_recover.c", i32 2884, i32 3}
!116 = !{ptr @__func__.xlog_recover_process, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/xfs/xfs_log_recover.c", i32 2895, i32 4}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/xfs/xfs_log_recover.c", i32 2447, i32 3}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/xfs/xfs_log_recover.c", i32 227, i32 6}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/xfs/xfs_log_recover.c", i32 229, i32 2}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/xfs/xfs_log_recover.c", i32 236, i32 2}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../fs/xfs/xfs_trace.h", i32 2222, i32 1}
!128 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!129 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!130 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!133 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/xfs/xfs_log_recover.c", i32 2355, i32 23}
!136 = !{ptr @__func__.xlog_recover_process_ophdr, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/xfs/xfs_log_recover.c", i32 2356, i32 4}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/xfs/xfs_log_recover.c", i32 2366, i32 23}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/xfs/xfs_log_recover.c", i32 2317, i32 2}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/xfs/xfs_log_recover.c", i32 2271, i32 23}
!144 = !{ptr @__func__.xlog_recovery_process_trans, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/xfs/xfs_log_recover.c", i32 2271, i32 41}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/xfs/xfs_log_recover.c", i32 2276, i32 23}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/xfs/xfs_log_recover.c", i32 2128, i32 24}
!150 = !{ptr @__func__.xlog_recover_add_to_trans, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/xfs/xfs_log_recover.c", i32 2129, i32 5}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/xfs/xfs_log_recover.c", i32 2135, i32 24}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/xfs/xfs_log_recover.c", i32 2170, i32 3}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/xfs/xfs_log_recover.c", i32 2185, i32 2}
!158 = distinct !{null, !159, !"__already_done", i1 false, i1 false}
!159 = !{!"../fs/xfs/xfs_trace.h", i32 2287, i32 1}
!160 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/xfs/xfs_log_recover.c", i32 2069, i32 3}
!163 = !{ptr @__func__.xlog_recover_add_to_cont_trans, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/xfs/xfs_log_recover.c", i32 2071, i32 49}
!165 = distinct !{null, !166, !"__already_done", i1 false, i1 false}
!166 = !{!"../fs/xfs/xfs_trace.h", i32 2288, i32 1}
!167 = distinct !{null, !166, !"__warned", i1 false, i1 false}
!168 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/xfs/xfs_log_recover.c", i32 1888, i32 5}
!170 = !{ptr @__func__.xlog_recover_reorder_trans, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/xfs/xfs_log_recover.c", i32 1889, i32 5}
!172 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/xfs/xfs_log_recover.c", i32 1924, i32 2}
!174 = distinct !{null, !175, !"xlog_recover_item_ops", i1 false, i1 false}
!175 = !{!"../fs/xfs/xfs_log_recover.c", i32 1789, i32 44}
!176 = distinct !{null, !177, !"__already_done", i1 false, i1 false}
!177 = !{!"../fs/xfs/xfs_trace.h", i32 2289, i32 1}
!178 = distinct !{null, !177, !"__warned", i1 false, i1 false}
!179 = distinct !{null, !180, !"__already_done", i1 false, i1 false}
!180 = !{!"../fs/xfs/xfs_trace.h", i32 2290, i32 1}
!181 = distinct !{null, !180, !"__warned", i1 false, i1 false}
!182 = distinct !{null, !183, !"__already_done", i1 false, i1 false}
!183 = !{!"../fs/xfs/xfs_trace.h", i32 2291, i32 1}
!184 = distinct !{null, !183, !"__warned", i1 false, i1 false}
!185 = !{ptr @.str.74, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/xfs/xfs_log_recover.c", i32 1006, i32 3}
!187 = !{ptr @.str.75, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/xfs/xfs_log_recover.c", i32 1643, i32 7}
!189 = !{ptr @.str.76, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/xfs/xfs_log_recover.c", i32 1654, i32 7}
!191 = !{ptr @.str.77, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/xfs/xfs_log_recover.c", i32 1666, i32 3}
!193 = !{ptr @.str.78, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/xfs/xfs_log_recover.c", i32 3351, i32 16}
!195 = distinct !{null, !196, !"__already_done", i1 false, i1 false}
!196 = !{!"../fs/xfs/xfs_trace.h", i32 2204, i32 1}
!197 = distinct !{null, !196, !"__warned", i1 false, i1 false}
!198 = !{ptr @.str.79, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/xfs/xfs_log_recover.c", i32 3279, i32 4}
!200 = !{ptr @.str.80, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/xfs/xfs_log_recover.c", i32 2566, i32 5}
!202 = !{ptr @.str.81, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/xfs/xfs_log_recover.c", i32 2576, i32 3}
!204 = distinct !{null, !205, !"__already_done", i1 false, i1 false}
!205 = !{!"../fs/xfs/xfs_trace.h", i32 143, i32 1}
!206 = distinct !{null, !205, !"__warned", i1 false, i1 false}
!207 = !{ptr @.str.82, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/xfs/xfs_log_recover.c", i32 2504, i32 2}
!209 = !{ptr @.str.83, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/xfs/xfs_log_recover.c", i32 2717, i32 2}
!211 = !{ptr @.str.84, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/xfs/xfs_log_recover.c", i32 2718, i32 2}
!213 = !{ptr @.str.85, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/xfs/xfs_log_recover.c", i32 2686, i32 15}
!215 = !{ptr @__func__.xlog_recover_clear_agi_bucket, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/xfs/xfs_log_recover.c", i32 2686, i32 58}
!217 = !{ptr @.str.86, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/xfs/xfs_log_recover.c", i32 3559, i32 18}
!219 = !{ptr @__func__.xlog_recover_check_summary, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/xfs/xfs_log_recover.c", i32 3560, i32 7}
!221 = !{ptr @.str.87, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/xfs/xfs_log_recover.c", i32 3571, i32 18}
!223 = !{!"sp"}
!224 = !{i32 1, !"wchar_size", i32 2}
!225 = !{i32 1, !"min_enum_size", i32 4}
!226 = !{i32 8, !"branch-target-enforcement", i32 0}
!227 = !{i32 8, !"sign-return-address", i32 0}
!228 = !{i32 8, !"sign-return-address-all", i32 0}
!229 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!230 = !{i32 7, !"uwtable", i32 1}
!231 = !{i32 7, !"frame-pointer", i32 2}
!232 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!233 = !{!"auto-init"}
!234 = !{!"branch_weights", i32 2000, i32 1}
!235 = !{i8 0, i8 2}
!236 = !{i64 2166526000}
!237 = !{!"branch_weights", i32 1, i32 2000}
!238 = !{!"branch_weights", i32 -102759400, i32 4193255}
!239 = !{i64 2166443415}
!240 = !{i64 2166465695}
!241 = !{i64 2166466233}
!242 = !{!"branch_weights", i32 2000, i32 2002}
!243 = !{i32 0, i32 33}
!244 = !{i64 2166447577}
!245 = !{!"branch_weights", i32 1073205, i32 2146410443}
!246 = !{i64 2166444489}
!247 = !{i64 2166517876}
!248 = !{i64 2166518611}
!249 = !{i64 2166519164}
!250 = !{i64 2166519687}
!251 = !{i64 2166446138}
!252 = !{i64 2166446646}
!253 = !{i64 2148344600, i64 2148344605, i64 2148344618, i64 2148344662, i64 2148344696, i64 2148344717}
!254 = !{i64 2162319317}
!255 = !{i64 2162319556}
!256 = !{i64 2150046693}
!257 = !{i64 2150047729}
!258 = !{i64 2162337569}
!259 = !{i64 2162337824}
!260 = !{i64 2162356238}
!261 = !{i64 2162356503}
!262 = !{i64 2162417821}
!263 = !{i64 2162418084}
!264 = !{i64 2162379394}
!265 = !{i64 2162379667}
!266 = !{i64 2162398705}
!267 = !{i64 2162398978}
!268 = !{i64 2162302208}
!269 = !{i64 2162302443}
!270 = !{i64 2156228839}
!271 = !{i64 2156229094}
